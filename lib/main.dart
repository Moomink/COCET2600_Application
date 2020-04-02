import 'package:cocet_2600/words_List.dart';
import 'package:flutter/material.dart';
import 'package:scoped_model/scoped_model.dart';

void main() => runApp(MaterialApp(title: 'Home', home: Home(BodyModel())));

class Home extends StatelessWidget {
  final BodyModel bodymodel;

  Home(this.bodymodel);

  Widget build(BuildContext build) {
    debugPrint("Main");
    return ScopedModel<BodyModel>(model: bodymodel, child: AppHome());
  }
}

class AppHome extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text('Home'),
        ),
        drawer: sideBar(context),
        body: ScopedModel.of<BodyModel>(context, rebuildOnChange: true).widget);
  }

  Widget sideBar(BuildContext context) {
    debugPrint("SideBar");
    return Drawer(
        child: Column(children: <Widget>[
      Row(children: <Widget>[
        Expanded(
            child: DrawerHeader(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              color: Colors.blue,
              image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage('assets/images/NITKC.jpg'))),
          child: Text('COCET 2600',
              style: TextStyle(color: Colors.black, fontSize: 24),
              textAlign: TextAlign.center),
        ))
      ]),
      Expanded(
          child: ListView(children: <Widget>[
        Card(
          color: Colors.cyanAccent,
          child: ListTile(
              title: Text('No.0001 ～ No.0500',
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.black, fontSize: 24)),
              onTap: () {
                ScopedModel.of<BodyModel>(context, rebuildOnChange: true)
                    .setBody(Words_List(1, 500));
                Navigator.pop(context, true);
              }),
        ),
        Card(
          color: Colors.cyanAccent,
          child: ListTile(
            title: Text('No.0501 ～ No.1000',
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.black, fontSize: 24)),
            onTap: () {
              ScopedModel.of<BodyModel>(context).setBody(Words_List(501, 1000));
              Navigator.pop(context, true);
            },
          ),
        ),
        Card(
          color: Colors.cyanAccent,
          child: ListTile(
            title: Text('No.1001 ～ No.1500',
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.black, fontSize: 24)),
            onTap: () {
              ScopedModel.of<BodyModel>(context)
                  .setBody(Words_List(1001, 1500));
              Navigator.pop(context, true);
            },
          ),
        ),
        Card(
          color: Colors.cyanAccent,
          child: ListTile(
            title: Text('No.1501 ～ No.2000',
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.black, fontSize: 24)),
            onTap: () {
              ScopedModel.of<BodyModel>(context)
                  .setBody(Words_List(1501, 2000));
              Navigator.pop(context, true);
            },
          ),
        ),
        Card(
          color: Colors.cyanAccent,
          child: ListTile(
            title: Text('No.2001 ～ No.2600',
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.black, fontSize: 24)),
            onTap: () {
              ScopedModel.of<BodyModel>(context).setBody(Words_List(2001, 2600));
              Navigator.pop(context, true);
            },
          ),
        ),
      ]))
    ]));
  }
}

class BodyModel extends Model {
  Widget _widget = Center(
    child: Text('This is testing'),
  );

  Widget get widget => _widget;

  void setBody(Widget body) {
    _widget = body;
    notifyListeners();
  }

//  static BodyModel of(BuildContext context) => ScopedModel.of<BodyModel>(context);
}
