import 'package:flutter/material.dart';
import 'package:flutter_flavor/flutter_flavor.dart';
import 'package:satria/setup.dart';

void main() {
  FlavorConfig(
    name: 'Develop',
    color: Colors.green,
    location: BannerLocation.topEnd,
  );
  runApp(const MyApp());
}
