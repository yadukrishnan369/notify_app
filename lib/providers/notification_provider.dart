import 'dart:io';
import 'package:flutter/material.dart';
import 'package:notify_app/models/notification_model.dart';
import 'package:notify_app/services/api_service.dart';

class NotificationProvider extends ChangeNotifier {
  final ApiServices _apiService = ApiServices();

  bool _isLoading = false;
  String? _errorMessage;
  List<NotificationModel> _notifications = [];

  // provide the current notification state to the UI
  bool get isLoading => _isLoading;
  String? get errorMessage => _errorMessage;
  List<NotificationModel> get notifications => _notifications;

  // Fetches notifications and updates the UI based on the result
  Future<void> fetchNotifications() async {
    _isLoading = true;
    _errorMessage = null;

    // Notifies listeners to display the loading state
    notifyListeners();

    try {
      _notifications = await _apiService.fetchNotifications();
    } on SocketException catch (e) {
      // Handles network-related errors
      debugPrint('NETWORK ERROR: $e');
      _errorMessage = 'Please check your internet connection.';
    } catch (e) {
      // Handles other API or data processing errors
      debugPrint('NOTIFICATION ERROR: $e');
      _errorMessage = 'Unable to load notifications.';
    } finally {
      _isLoading = false;

      // Updates the UI with the final success or error state
      notifyListeners();
    }
  }
}
