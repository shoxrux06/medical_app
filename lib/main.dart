import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:medical_app/app_widget.dart';

void main() {
  runApp(const AppWidget());
  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
    ),
  );
}
