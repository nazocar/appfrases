import 'package:flutter/material.dart';
import 'package:aula12/front-back.dart';

//app de frases aleatórias com, array de frases

void main(){
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: 'App frases aleatórias',
    home: frases(),
  ));
}
