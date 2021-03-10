import 'package:flutter/material.dart';
//COLORS
import 'package:first_proyect/src/colors/colors.dart';
//COMMONS WIDGETS
import 'package:first_proyect/src/features/presentation/commons_widgets/headers/header_text.dart';

class ListTileCheck extends StatefulWidget {
  String texto;
  bool isActive;
  Function func;

  ListTileCheck({Key key, this.texto, this.isActive, this.func})
      : super(key: key);

  @override
  _ListTileCheckState createState() => _ListTileCheckState();
}

class _ListTileCheckState extends State<ListTileCheck> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        listTiles(
            context: context,
            texto: widget.texto,
            isActive: widget.isActive,
            func: widget.func)
      ],
    );
  }
}

Widget listTiles(
    {BuildContext context, texto: String, isActive: bool, Function func}) {
  return Container(
    decoration: BoxDecoration(
        border: Border(
            bottom: BorderSide(
      color: Theme.of(context).dividerColor,
    ))),
    child: ListTile(
      onTap: func,
      title: headerText(
          texto: texto,
          color: isActive ? orange : Colors.black,
          fontWeight: FontWeight.w300,
          fontSize: 17.0),
      trailing: isActive
          ? Icon(
              Icons.check,
              color: isActive ? orange : gris,
            )
          : Text(''),
    ),
  );
}
