import 'package:flutter/material.dart';

class BreifInfo extends StatelessWidget {
  const BreifInfo({
    Key key,
    this.type,
    this.time,
    this.ingredient,
  }) : super(key: key);

  final String type, time, ingredient;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          Info(text: type.toString()),
          SizedBox(width: 10),
          Info(text: time.toString()),
          // Info(text: '30 MINS'),
          SizedBox(width: 10),
          Info(text: ingredient.toString()),
          // Info(text: '5 Ingredients'),
        ],
      ),
    );
  }
}

class Info extends StatelessWidget {
  const Info({
    Key key,
    this.text,
  }) : super(key: key);

  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints(
        maxWidth: double.infinity,
      ),
      decoration: BoxDecoration(
        color: Color.fromRGBO(242, 181, 22, 0.44),
        borderRadius: BorderRadius.all(Radius.circular(30)),
      ),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Text(text,
            style: TextStyle(
              fontFamily: 'Century Gothic',
              fontWeight: FontWeight.bold,
              fontSize: 11,
              color: Color.fromRGBO(9, 29, 103, 1),
            )),
      ),
    );
  }
}
