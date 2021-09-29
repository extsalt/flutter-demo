import 'package:flutter/material.dart';
import 'package:gallery/statement.dart';

void main() {
  runApp(const Statement());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(backgroundColor: Colors.blueGrey),
        home: MyGallery());
  }
}

class MyGallery extends StatelessWidget {
  MyGallery({Key? key}) : super(key: key);

  List<Widget> children = [];

  @override
  Widget build(BuildContext context) {
    children.add(
      const Image(
        image: NetworkImage(
            'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg'),
      ),
    );
    children.add(
      const Image(
        image: NetworkImage(
            'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg'),
      ),
    );
    children.add(
      const Image(
        image: NetworkImage(
            'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg'),
      ),
    );
    children.add(
      const Image(
        image: NetworkImage(
            'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg'),
      ),
    );
    children.add(
      const Image(
        image: NetworkImage(
            'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg'),
      ),
    );
    return Scaffold(
        body: ListView(
      children: children,
    ));
  }
}
