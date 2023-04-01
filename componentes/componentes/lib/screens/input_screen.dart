import 'package:flutter/material.dart';

import '../widgets/widgets.dart';

class InputScreen extends StatelessWidget {
  const InputScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Inputs')),
      body: SingleChildScrollView(
          child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        child: Column(children: [
          CustomInputField(
            labelText: 'nombre',
            icono: Icon(Icons.abc),
          ),
          SizedBox(
            height: 30,
          ),
          CustomInputField(
            labelText: 'apellido',
          ),
          SizedBox(
            height: 30,
          ),
          CustomInputField(
            keyboardType: TextInputType.emailAddress,
            labelText: 'correo',
          ),
          SizedBox(
            height: 30,
          ),
          CustomInputField(
            obscureText: true,
            labelText: 'pass',
          ),
          SizedBox(
            height: 30,
          )
        ]),
      )),
    );
  }
}
