import 'package:flutter/material.dart';

/*
   created : firgia
   start   : 09-02-2021
*/
class ButtonRounded extends StatelessWidget {
  /// `Button Rounded` adalah template yang di gunakan untuk membuat button
  /// yang ujung nya berbentuk bulat
  const ButtonRounded(
      {@required this.onPressed,
      @required this.child,
      this.radius = 30,
      this.color,
      this.height,
      this.width,
      Key key})
      : super(key: key);

  /// sisi bulatan card
  final double radius;

  /// ketika tombol di klik
  final Function onPressed;

  /// isi widget dari tombol
  final Widget child;

  /// warna button
  final Color color;

  /// tinggi button
  final double height;

  /// lebar button
  final double width;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height ?? 40,
      width: width,
      child: RaisedButton(
          color: color ?? Theme.of(context).primaryColor,
          onPressed: onPressed,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(radius),
          ),
          elevation: 3,
          highlightElevation: 0,
          child: child),
    );
  }
}
