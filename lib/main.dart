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
      body: ListView(
        children: <Widget>[
          ListTile(
            title: Text("Map"),
            subtitle: Text("Harita çiziniz"),
            leading: Icon(Icons.map),
          ),
          ListTile(
            title: Text("Album"),
            subtitle: Text("Album oluşturun"),
            leading: Icon(Icons.photo_album),
          ),
          ListTile(
            title: Text("Telefon"),
            subtitle: Text("Aramalar Yapın"),
            leading: Icon(Icons.phone),
          ),
          ListTile(
            title: Text("İletişim"),
            subtitle: Text("İletişime geçin"),
            leading: Icon(Icons.contacts),
          ),
        ],
      ),
    );
  }
}
