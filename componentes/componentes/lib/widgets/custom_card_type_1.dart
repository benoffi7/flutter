import 'package:flutter/material.dart';

import '../theme/app_theme.dart';

class CustomCardType1 extends StatelessWidget {
  final String text;

  const CustomCardType1({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(children: [
        ListTile(
          subtitle: Text(text),
          leading: const Icon(Icons.photo_album),
          iconColor: AppTheme.primary,
          title: const Text('Soy un titulo'),
        ),
        Padding(
          padding: const EdgeInsets.only(right: 8),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: const [
              TextButton(
                onPressed: null,
                child: Text('Cancelar'),
              ),
              TextButton(onPressed: null, child: Text('ok'))
            ],
          ),
        )
      ]),
    );
  }
}
