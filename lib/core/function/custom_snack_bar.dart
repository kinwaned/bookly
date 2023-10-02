import 'package:flutter/material.dart';

void customSnackBar(String url) {
  ScaffoldMessenger(child: Text('Cannot launch $url'),);
}
