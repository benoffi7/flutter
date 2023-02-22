import 'package:flutter/material.dart';

import '../theme/app_theme.dart';

class CustomCardType1 extends StatelessWidget {
  const CustomCardType1({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(children: [
        ListTile(
          subtitle: Text(
              'Minim exercitation dolore eiusmod aliqua ullamco laborum non ad velit minim.'),
          leading: Icon(Icons.photo_album),
          iconColor: AppTheme.primary,
          title: Text('Soy un titulo'),
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
