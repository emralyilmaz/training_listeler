import 'package:flutter/material.dart';

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
        children: List.generate(1000, (index) {
          return Center(
            child: Text(
              "veri $index",
              style: Theme.of(context).textTheme.title,
            ),
          );
        }),
      ),
    );
  }
}
