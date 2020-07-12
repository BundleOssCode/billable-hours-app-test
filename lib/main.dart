import 'package:billable_hours_app/src/core/providers/provider_register.dart';
import 'package:billable_hours_app/src/pages/home_page.dart';
import 'package:flutter/material.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Permission.storage.request();
    return MultiProvider(
      providers: ProviderRegister.providers,
      child: MaterialApp(
        title: 'Billable Hours',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.deepPurple,
        ),
        home: Scaffold(
          body: MyHomePage(),
        ),
      ),
    );
  }
}
