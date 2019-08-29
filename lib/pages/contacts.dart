import 'package:flutter/material.dart';
import 'package:flutter_whatsapp_clone_app/models/contacts_model.dart';
import 'chat_screen.dart'; 

class Contacts extends StatefulWidget{
  @override
  State<StatefulWidget> createState() =>new _StateContacts();

}
class _StateContacts extends State<Contacts>{
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: new AppBar(
          title: new Text("Select Contacts"),
          actions: <Widget>[
            new Icon(Icons.search),
            new Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0)
            ),
            new Icon(Icons.person_add),
            new Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0)
            ),
            new Icon((Icons.more_vert))
          ],
        ),
        body: new ListView.builder(
          itemCount: cont.length,
          itemBuilder: (context, l) =>
          new Column(
            children: <Widget>[
              new Divider(
                height: 10.0,
              ),
              new ListTile(
                leading: new CircleAvatar(
                  foregroundColor: Theme
                      .of(context)
                      .accentColor,
                  backgroundColor: Colors.grey,
                  backgroundImage: new NetworkImage(cont[l].imgurl),
                
                ),

                title: new Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      new Text(cont[l].name,
                        style: new TextStyle(fontWeight: FontWeight.bold),
                      ),
                      new Text(cont[l].type,
                        style: new TextStyle(
                            color: Theme.of(context).accentColor, fontSize: 12.0),
                      ),

                    ]

                ),
                subtitle: new Container(
                  padding: const EdgeInsets.only(top: 5.0),
                  child: new Text(cont[l].status,
                    style: new TextStyle(color: Colors.grey, fontSize: 14.0)),
              ),
              onTap: () {
                  var route =   new MaterialPageRoute(builder: (BuildContext context) => ChatScreen(name: cont[l].name));
                  Navigator.of(context).push(route);
              },
              ),
            ],
          ),
        )
    );
  }
}