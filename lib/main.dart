import 'package:flutter/material.dart';
import 'card.dart';
import 'list.dart';

main() => runApp(MaterialApp(
      home: Home(),
      theme: ThemeData(primarySwatch: Colors.red),
    ));

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Listeler"),
      ),
      body: FormWidget(),
    );
  }
}

class FormWidget extends StatefulWidget {
  @override
  _FormWidgetState createState() => _FormWidgetState();
}

class _FormWidgetState extends State<FormWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ListTile"),
      ),
      body: GridView.count(
        crossAxisCount: 3,
        children: List.generate(secimler.length, (index) {
          return Center(
            child: SecimCard(
              secim: secimler[index],
            ),
          );
        }),
      ),
    );
  }
}
