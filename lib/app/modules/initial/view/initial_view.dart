import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:satria/router/router.dart';

class InitialView extends StatefulWidget {
  const InitialView({Key? key}) : super(key: key);

  @override
  _InitialViewState createState() => _InitialViewState();
}

class _InitialViewState extends State<InitialView> {
  late TextEditingController nameController;
List<String> names = [];
  @override
  void initState() {
    nameController = TextEditingController();

    super.initState();
  }

  @override
  void dispose() {
      nameController.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            TextField(
              controller: nameController,
            ),
            ElevatedButton(
              onPressed: (){
                names.add(nameController.text);
                context.router.push(HomeRoute(
                  name: names,
                ));
              },
              child: Text('test ke home'),
            ),
          ],
        ),
      ),
    );
  }
}
