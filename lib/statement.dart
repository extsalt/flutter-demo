import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:io';

class Statement extends StatefulWidget {
  const Statement({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return StatementState();
  }
}

class StatementState extends State<Statement> {
  /// Parse Json
  parseJson(String source) {
    final List parsed = jsonDecode(source);
    final texts = parsed.map((element) {
      return Text(element['statementText']);
    });

    setState(() => statements.addAll(texts));

    stderr.write(statements.length);
  }

  StatementState() {
    var url =
        Uri.parse('https://prod-api.elkool.com/statement/hot?page=1&size=10');
    http.get(url).then((value) => parseJson(value.body));
  }

  List<Widget> statements = [];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            body: Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: statements,
    )));
  }
}
