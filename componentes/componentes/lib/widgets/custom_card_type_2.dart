import 'package:componentes/theme/app_theme.dart';
import 'package:flutter/material.dart';

class CustomCardType2 extends StatelessWidget {
  final String text;
  final String? textBottom;
  const CustomCardType2(
      {super.key, required this.text, required this.textBottom});

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAlias,
      shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(10.0))),
      elevation: 10,
      shadowColor: AppTheme.primary.withOpacity(0.5),
      child: Column(children: [
        FadeInImage(
            fadeInDuration: const Duration(milliseconds: 300),
            image: NetworkImage(text),
            placeholder: const AssetImage('assets/jar-loading.gif'),
            width: double.infinity, //todo el ancho posible,
            height: 230,
            fit: BoxFit.contain),
        if (textBottom != null)
          Container(
            padding: const EdgeInsets.only(right: 20, top: 10, bottom: 10),
            alignment: AlignmentDirectional.centerEnd,
            child: Text(textBottom!),
          )
      ]),
    );
  }
}
