import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:notify_app/providers/notification_provider.dart';
import 'package:notify_app/routes/app_routes.dart';
import 'package:notify_app/screens/home_screen.dart';
import 'package:notify_app/screens/notification_screen.dart';
import 'package:provider/provider.dart';

void main() {
  // Ensures Flutter is initialized before configuring system UI settings
  WidgetsFlutterBinding.ensureInitialized();

  // Configures the status bar to match the app light UI
  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarIconBrightness: Brightness.dark,
      statusBarBrightness: Brightness.light,
    ),
  );

  // Provides NotificationProvider to the widget tree
  runApp(
    ChangeNotifierProvider(
      create: (_) => NotificationProvider(),
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      // Uses named routes to manage navigation between screens
      initialRoute: AppRoutes.home,
      routes: {
        AppRoutes.home: (context) => const HomeScreen(),
        AppRoutes.notifications: (context) => const NotificationScreen(),
      },
    );
  }
}
