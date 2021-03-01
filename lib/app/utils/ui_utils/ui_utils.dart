import 'package:flutter/material.dart';

abstract class UIUtils {
  static final Card cardInputRequired = Card(
    child: Container(
      child: ListTile(
        leading: Icon(Icons.info),
        title: Text("pastikan input di isi "),
      ),
    ),
  );
}
