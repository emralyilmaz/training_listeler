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
      body: Align(
        alignment: Alignment.bottomCenter,
        child: Container(
          margin: EdgeInsets.symmetric(
            vertical: 1.0,
          ),
          height: 50,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: <Widget>[
              Container(
                width: 160.0,
                color: Colors.red,
                child: GestureDetector(
                  onTap: () {
                    print("telefon tıklandı");
                  },
                  child: Center(
                    child: Stack(
                      children: <Widget>[
                        ListTile(
                          leading: Icon(Icons.phone),
                          title: Text("Telefon"),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              Container(
                width: 160.0,
                color: Colors.blue,
                child: GestureDetector(
                  onTap: () {
                    print("harita tıklandı");
                  },
                  child: Center(
                    child: Stack(
                      children: <Widget>[
                        ListTile(
                          leading: Icon(Icons.map),
                          title: Text("harita"),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              Container(
                width: 160.0,
                color: Colors.green,
                child: GestureDetector(
                  onTap: () {
                    print("kamera tıklandı");
                  },
                  child: Center(
                    child: Stack(
                      children: <Widget>[
                        ListTile(
                          leading: Icon(Icons.camera),
                          title: Text("kamera"),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              Container(
                width: 160.0,
                color: Colors.yellow,
                child: GestureDetector(
                  onTap: () {
                    print("ayarlar tıklandı");
                  },
                  child: Center(
                    child: Stack(
                      children: <Widget>[
                        ListTile(
                          leading: Icon(Icons.settings),
                          title: Text("ayarlar"),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              Container(
                width: 160.0,
                color: Colors.grey,
                child: GestureDetector(
                  onTap: () {
                    print("rehber tıklandı");
                  },
                  child: Center(
                    child: Stack(
                      children: <Widget>[
                        ListTile(
                          leading: Icon(Icons.person),
                          title: Text("rehber"),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
