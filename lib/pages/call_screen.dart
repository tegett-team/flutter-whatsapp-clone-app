import 'package:flutter/material.dart';
import 'package:flutter_whatsapp_clone_app/models/calls_model.dart';

class Calls extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => new _CallsState();
}

class _CallsState extends State<Calls> {
  @override
  Widget build(BuildContext context) {
    return new ListView.builder(
        itemCount: dummc.length,
        itemBuilder: (context, i) => new Column(
              children: <Widget>[
                new Divider(
                  height: 10.0,
                ),
                new ListTile(
                  leading: new CircleAvatar(
                    foregroundColor: Theme.of(context).accentColor,
                    backgroundColor: Colors.grey,
                    backgroundImage: new NetworkImage(dummc[i].imgurl),
                  ),
                  title: new Text(
                    dummc[i].name,
                    style: new TextStyle(fontWeight: FontWeight.bold),
                  ),
                  subtitle: new Container(
                      padding: const EdgeInsets.only(top: 5.0),
                      child: new Row(
                        children: <Widget>[
                          dummc[i].st, //type1
                          new Text(dummc[i].time,
                              style: new TextStyle(
                                  color: Colors.grey, fontSize: 15.0)),
                        ],
                      )),
                  trailing: new Icon(
                    dummc[i].type.icon,
                    color: Theme.of(context).primaryColor,
                  ), //type 2
                )
              ],
            ));
  }
}
