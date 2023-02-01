
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:list_gridview/file2.dart';

void main()
{
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/':(context)=>File2(),
      },
    ),
  );
}