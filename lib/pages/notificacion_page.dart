import 'package:flutter_local_notifications/flutter_local_notifications.dart';



final FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin =
FlutterLocalNotificationsPlugin();

Future<void> initNotifications() async{
  const AndroidInitializationSettings initializationSettingsAndroid =
  AndroidInitializationSettings('img');

  const DarwinInitializationSettings initializationSettingsIOS = DarwinInitializationSettings();

  const InitializationSettings initializationSettings = InitializationSettings(
    android: initializationSettingsAndroid,
    iOS: initializationSettingsIOS,
  );

  await flutterLocalNotificationsPlugin.initialize(initializationSettings);

}

Future<void> mostrarNotificacion() async{
  const AndroidNotificationDetails androidNotificationDetails=
  AndroidNotificationDetails(
      'your_channel_id', 'your_channel_name',
      importance: Importance.max,
      priority: Priority.high
  );

  const NotificationDetails notificationDetails = NotificationDetails(
    android: androidNotificationDetails,
  );

  await flutterLocalNotificationsPlugin.show(
      1, 'Titulo', 'Hola', notificationDetails);
}