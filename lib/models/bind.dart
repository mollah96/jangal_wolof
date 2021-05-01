import 'package:flutter/material.dart';

class Bind{
  final String title;
  final String contentPath;

  Bind(this.title, this.contentPath);

  static List<Bind> fetchAll(){
    return [
      Bind("Loy'i wolof", '')
    ];
  }

}