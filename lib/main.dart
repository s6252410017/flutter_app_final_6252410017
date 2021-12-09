import 'package:flutter/material.dart';
import 'package:flutter_app_final_6252410017/views/first_ui.dart';
import 'package:flutter_app_final_6252410017/views/page_sau_ui.dart';
import 'package:flutter_app_final_6252410017/views/page_en_ui.dart';
import 'package:flutter_app_final_6252410017/views/page_artsci_ui.dart';
import 'package:flutter_app_final_6252410017/views/page_bs_ui.dart';
import 'package:flutter_app_final_6252410017/views/page_la_ui.dart';

void main(List<String> args) {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: FirstUI(),
      theme: ThemeData(
        fontFamily: 'Itim',
      ),
    ),
  );
}