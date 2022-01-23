import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:satria/router/router.dart';

class HomeView extends StatelessWidget {
  final List<String> name;
  const HomeView({Key? key, required this.name}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            ...name.map((e) => Text('Nama saya $e'))
          ],
        ),
      ),
    );
  }
}
