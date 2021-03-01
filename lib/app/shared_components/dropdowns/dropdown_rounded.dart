import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DropdownRounded extends StatefulWidget {
  /// [DropdownRounded]
  /// adalah dropdown yang ujung nya bulat
  DropdownRounded(
      {@required this.list,
      @required this.hint,
      this.onChange,
      this.controller,
      this.icon,
      key})
      : super(key: key);

  /// text ketika dropdown belum di pilih
  final String hint;

  /// icon yang mewakili dropdown
  final Icon icon;

  /// daftar nama dropdown
  final List list;

  /// ketika dropdown di pilih
  final Function(String value) onChange;

  /// untuk mendapatkan value yang terpilih
  final RxString controller;

  @override
  _DropdownRoundedState createState() => _DropdownRoundedState();
}

class _DropdownRoundedState extends State<DropdownRounded> {
  List _list;
  String _selected;
  Icon _icon;
  String _hint;

  @override
  void initState() {
    super.initState();

    _list = widget.list;
    _icon = widget.icon;
    _hint = widget.hint;
    if (widget.controller != null && widget.controller.value.isNotEmpty) {
      _selected = widget.controller.value;
    }
  }

  @override
  Widget build(BuildContext context) {
    return DropdownButtonFormField(
      isDense: true,
      value: _selected,
      decoration: InputDecoration(
        prefixIcon: _icon,
        // fillColor: scColorPallets[1].withOpacity(0.3),
        isDense: true,
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30),
          //  borderSide: BorderSide(color: scColorPallets[2]),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30),
          borderSide: BorderSide(color: Colors.red),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30),
          //  borderSide: BorderSide(color: scColorPallets[4]),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30),
          //  borderSide: BorderSide(color: scColorPallets[4]),
        ),
      ),
      hint: Text(_hint, style: Theme.of(context).textTheme.bodyText2
          //   .copyWith(color: scColorsPalletsFont[3]),

          ),
      items: _list
          .map((e) => DropdownMenuItem(
                child: Text(e, style: Theme.of(context).textTheme.bodyText2),
                value: e,
              ))
          .toList(),
      onChanged: (value) {
        setState(() {
          if (widget.onChange != null) widget.onChange(value);
          if (widget.controller != null) widget.controller.value = value;
          _selected = value;
        });
      },
    );
  }
}
