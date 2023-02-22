import 'package:componentes/theme/app_theme.dart';
import 'package:flutter/material.dart';

class CustomCardType2 extends StatelessWidget {
  const CustomCardType2({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAlias,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(10.0))),
      elevation: 10,
      shadowColor: AppTheme.primary.withOpacity(0.5),
      child: Column(children: [
        FadeInImage(
            fadeInDuration: Duration(milliseconds: 300),
            image: NetworkImage(
                'https://upload.wikimedia.org/wikipedia/commons/thumb/2/21/Escudo_del_Club_Atl%C3%A9tico_V%C3%A9lez_Sarsfield.svg/1200px-Escudo_del_Club_Atl%C3%A9tico_V%C3%A9lez_Sarsfield.svg.png'),
            placeholder: AssetImage('assets/jar-loading.gif'),
            width: double.infinity, //todo el ancho posible,
            height: 230,
            fit: BoxFit.contain),
        Container(
          padding: EdgeInsets.only(right: 20, top: 10, bottom: 10),
          alignment: AlignmentDirectional.centerEnd,
          child: Text('Un hermoso club'),
        )
      ]),
    );
  }
}
