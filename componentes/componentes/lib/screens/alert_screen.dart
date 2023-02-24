import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AlertScreen extends StatelessWidget {
  const AlertScreen({Key? key}) : super(key: key);

  void displayiOSDialog(BuildContext buildContext) {
    showCupertinoDialog(
      barrierDismissible: true,
      context: buildContext,
      builder: (context) {
        return CupertinoAlertDialog(
          title: Text('hola'),
          actions: [
            TextButton(onPressed: () {}, child: Text('ok')),
            TextButton(
              onPressed: () {},
              child: Text('cancelar'),
            )
          ],
        );
      },
    );
  }

  void displayAndroidDialog(BuildContext buildContext) {
    showDialog(
        barrierDismissible: false,
        context: buildContext,
        builder: (context) {
          return AlertDialog(
            //icon: Icon(Icons.access_alarm_rounded),
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            actions: [
              ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text('Cancelar'),
              )
            ],
            elevation: 5,
            title: const Text('Titulo', textAlign: TextAlign.right),
            content: Column(
              // mainAxisAlignment: MainAxisAlignment.start,
              // crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: const [
                Text(
                  "Content",
                  textAlign: TextAlign.left,
                ),
                SizedBox(height: 10),
                FlutterLogo(
                  size: 100,
                )
              ],
            ),
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: const Icon(Icons.add)),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            if (Platform.isAndroid) {
              displayAndroidDialog(context);
            } else {
              displayiOSDialog(context);
            }
          },
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: const Text('Mostrar alerta'),
          ),
        ),
      ),
    );
  }
}
