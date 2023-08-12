// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';

class buttonIconnoText extends StatelessWidget {
  final Color? colorSn;
  final IconData icon;
  final Color colorBr;
  final Function()? onPress;
  // final String? text;
  final double? height;
  final double? sizeIcon;
  final double? width;
  // final TextStyle style;

  const buttonIconnoText({
    super.key,
    required this.colorBr,
    required this.colorSn,
    required this.width,
    required this.height,
    required this.onPress,
    // required this.text,
    // required this.style,
    required this.sizeIcon,
    required this.icon,
  });
  @override
  Widget build(BuildContext context) {
    return SizedBox.fromSize(
      size: Size(width ?? 60, height ?? 60), //  width and height
      child: Material(
        color: colorBr, // button color
        child: TextButton(
          // splashColor: colorSn ?? Colors.white, // splash color
          onPressed: onPress,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Icon(
                icon,
                size: sizeIcon,
                color: Colors.white,
              ),
              // Text(
              //   text!,
              //   style: style,
              // ),
            ],
          ),
        ),
      ),
    );
  }
}

class buttonIconnoIcon extends StatelessWidget {
  final Color? colorSn;
  final Color colorBr;
  final Function()? onTap;
  final String? text;
  final double? height;
  final double? width;
  final TextStyle style;

  const buttonIconnoIcon({
    super.key,
    required this.colorBr,
    required this.colorSn,
    required this.width,
    required this.height,
    required this.onTap,
    required this.text,
    required this.style,
  });
  @override
  Widget build(BuildContext context) {
    return SizedBox.fromSize(
      size: Size(width ?? 60, height ?? 60), //  width and height
      child: Material(
        color: colorBr, // button color
        child: InkWell(
          splashColor: colorSn ?? Colors.white, // splash color
          onTap: () {}, // button pressed
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                text!,
                style: style,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class buttonIcon extends StatelessWidget {
  final Color? colorSn;
  final IconData icon;
  final double? sizeIcon;

  final Color colorBr;
  final Function()? onTap;
  final String? text;
  final double? height;
  final double? width;
  final TextStyle style;

  const buttonIcon({
    super.key,
    required this.colorBr,
    required this.colorSn,
    required this.width,
    required this.height,
    required this.onTap,
    required this.text,
    required this.style,
    required this.sizeIcon,
    required this.icon,
  });
  @override
  Widget build(BuildContext context) {
    return SizedBox.fromSize(
      size: Size(width ?? 60, height ?? 60), //  width and height
      child: Material(
        color: colorBr, // button color
        child: InkWell(
          splashColor: colorSn, // splash color
          onTap: () {}, // button pressed
          child: Padding(
            padding: const EdgeInsets.only(bottom: 5, top: 5),
            child: Column(
              children: <Widget>[
                Expanded(
                  flex: 5,
                  child: Padding(
                    padding: const EdgeInsets.only(bottom: 2),
                    child: Align(
                      alignment: FractionalOffset.bottomCenter,
                      child: Icon(
                        icon,
                        size: sizeIcon,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                Expanded(
                  flex: 5,
                  child: Padding(
                    padding: const EdgeInsets.only(right: 5, left: 5, top: 2),
                    child: Align(
                      alignment: FractionalOffset.topCenter,
                      child: Text(
                        text!,
                        style: style,
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class buttonIconBL extends StatelessWidget {
  final Color? colorSn;
  final IconData icon;
  final double? sizeIcon;

  final Color colorBr;
  final Function()? onTap;
  final String? text;

  final TextStyle style;

  const buttonIconBL({
    super.key,
    required this.colorBr,
    required this.colorSn,
    required this.onTap,
    required this.text,
    required this.style,
    required this.sizeIcon,
    required this.icon,
  });
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Material(
        color: colorBr, // button color
        child: InkWell(
          splashColor: colorSn ?? Colors.white, // splash color
          onTap: () {}, // button pressed
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Icon(
                icon,
                size: sizeIcon,
                color: Colors.black,
              ),
              Text(
                text!,
                style: style,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class itemnoIcon extends StatelessWidget {
  final Function()? onTap;
  final String text;
  final TextStyle style;

  const itemnoIcon({
    super.key,
    required this.onTap,
    required this.text,
    required this.style,
  });
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Text(text, style: style),
    );
  }
}

class itemIcon extends StatelessWidget {
  final Function()? onTap;
  final IconData icon;
  final double? sizeIcon;

  const itemIcon({
    super.key,
    required this.onTap,
    required this.sizeIcon,
    required this.icon,
  });
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Icon(
        icon,
        size: sizeIcon,
        color: Colors.white,
      ),
    );
  }
}

class itemIconB extends StatelessWidget {
  final Function()? onTap;
  final IconData icon;
  final double? sizeIcon;

  const itemIconB({
    super.key,
    required this.onTap,
    required this.sizeIcon,
    required this.icon,
  });
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Icon(
        icon,
        size: sizeIcon,
        color: Colors.black,
      ),
    );
  }
}
