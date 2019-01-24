import 'dart:convert';
import 'package:flutter/material.dart';
import './services/http.service.dart';
import './label_list.dart';
import './bottom_sheet.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  List data;


  Future<String> getData() async {
    var body = await getIncidentData();
    var res = json.decode(body);
    this.setState(() {
      data = res['objects'];
    });
    return 'success';
  }

  @override
  void initState() {
    this.getData();
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: new ListView.builder(
          itemCount: data == null ? 0 : data.length,
          itemBuilder: (BuildContext context, int index) {
            return new Container(
              margin: EdgeInsets.only(
                left: 7.0,
                top: 7.0,
                right: 7.0,
                bottom: 7.0
              ),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: new BorderRadius.all(const Radius.circular(7.0)),
                border: Border.all(width: 1.0, color: Colors.grey[350])
                
              ),
               child: Ink(
                child: Container(
                          padding: const EdgeInsets.all(18.0),
                          child: Row(
                            children: <Widget>[
                              Expanded(child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Container(
                                    padding: EdgeInsets.only(bottom: 8.0),
                                    child: Text(
                                      data[index]['description'],
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 16.0
                                      ),
                                    ),),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: <Widget>[
                                      Expanded(
                                        flex: 0,
                                        child: Container(
                                        padding: EdgeInsets.all(6.0),
                                        decoration: new BoxDecoration(
                                          color: Colors.grey[200],
                                          borderRadius: new BorderRadius.all(const Radius.circular(40.0)),
                                        ),
                                        child: Text(
                                          data[index]['category']['name']
                                        ),
                                      ),),
                                      Expanded(
                                        flex: 0,
                                        child: Container(
                                        padding: EdgeInsets.all(6.0),
                                        decoration: new BoxDecoration(
                                          color: Colors.grey[200],
                                          borderRadius: new BorderRadius.all(const Radius.circular(40.0)),
                                        ),
                                        child: Text(
                                          data[index]['priority']['name']
                                        ),
                                      ),)
                                    ],),
                                    new Container(
                                      margin: EdgeInsets.only(
                                        top: 8.0
                                      ),
                                      padding: EdgeInsets.only(
                                        top: 4.0,
                                        left: 8.0,
                                        bottom: 4.0,
                                        right: 8.0
                                      ),
                                      decoration: BoxDecoration(
                                        color: Colors.grey[50],
                                        borderRadius: BorderRadius.all(const Radius.circular(8.0))
                                      ),
                                      child:new Column(
                                        children: createChildrenTexts(data[index]['trigger']['fields']),
                                      ),
                                    ),
                                    Container(
                                      child: FlatButton(child: Text('Click'), onPressed: () {settingModalBottomSheet(context , data[index]['trigger']['links']);},),
                                    )
                                    
                                    
                                    
                                ],
                              ),)
                            ],
                          ),
                        )
               )
            );
          },
      ), 
    );
  }

 

}
