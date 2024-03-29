import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Social extends StatelessWidget {
  const Social({
    Key key, this.icon, this.press,
  }) : super(key: key);

  final String icon;
  final Function press;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
          child: Container(
            margin: EdgeInsets.symmetric(
              horizontal:15,
            ),
             width:20,
      height: 20,
        decoration: BoxDecoration(
          color:Color(0xFFF5F6F9),
          shape:BoxShape.circle,
        ),
        child:SvgPicture.asset(icon),
        ),
    );
  }
}
