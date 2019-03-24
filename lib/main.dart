import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Card',
      theme: new ThemeData(primaryColor: Color.fromRGBO(58, 66, 86, 1.0)),
      home: new cardContain(),
    );
  }
}




class cardContain extends StatelessWidget {
  cardContain({Key key}) : super(key:key);
  @override
  Widget build_card(BuildContext context,int index) {
    return Center(
      child: Card(
        elevation: 50,
        child: InkWell(
          splashColor: Colors.blue.withAlpha(30),
          onTap: () { /* ... */ },
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              const ListTile(
                leading: Icon(Icons.album),
                title: Text('Person Name'),
                subtitle: Text('Deatils About Project'),
              ),
              ButtonTheme.bar(
                child: ButtonBar(
                  children: <Widget>[
                    FlatButton(
                      child: const Text('Like'),
                      onPressed: (){},
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(itemBuilder: build_card,itemCount: 20);
  }
}


