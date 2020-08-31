import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:youtube_flutter/home.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(
    SystemUiOverlayStyle.dark
  );
  SystemUiOverlayStyle(statusBarColor: Colors.amber);
  SystemChrome.setApplicationSwitcherDescription(
    ApplicationSwitcherDescription(
      label: 'Youtube', 
      primaryColor: 0XFFff5a5f
    )
  );
  runApp(
    Youtube()
  );
}