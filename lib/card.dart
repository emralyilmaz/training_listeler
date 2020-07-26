import 'package:flutter/material.dart';
import 'list.dart';

class SecimCard extends StatelessWidget {
  final Secim secim;
  SecimCard({Key key, this.secim}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final TextStyle textStyle = Theme.of(context).textTheme.headline1;
    return InkWell(
      onTap: () {
        print("${secim.baslik} tıklandı.");
      },
      child: Card(
        color: Color(0xFF12CBC4),
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Expanded(
                child: Icon(
                  secim.icon,
                  size: 40,
                  color: textStyle.color,
                ),
              ),
              Text(
                secim.baslik,
                style: TextStyle(fontSize: 20),
              )
            ],
          ),
        ),
      ),
    );
  }
}
