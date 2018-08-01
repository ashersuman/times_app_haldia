import 'package:flutter/material.dart';

class Posts extends StatefulWidget {
  //final val = 0;
  String _dropDownValue = "Recent Posts";
  @override
  PostsState createState() {
    return new PostsState();
  }
}

class PostsState extends State<Posts> {
  @override
  Widget build(BuildContext context) {
    /*return new Center(
      child: Text(
        "POSTS",
        style: new TextStyle(fontSize: 20.0),
      ),
    );*/
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          DropdownButton<String>(
            value: widget._dropDownValue,
            items: <String>['Recent Posts','All Posts'].map((String value){
              return DropdownMenuItem<String>(
                  child: Text(value),
                  value: value,
              );
            }).toList(),
           onChanged: (String newValue){
              setState((){
                widget._dropDownValue = newValue;
              });
           },
          ),
        ],
      ),
      floatingActionButton: new FloatingActionButton(
          backgroundColor: Theme.of(context).accentColor,
          child: Icon(Icons.library_add),
          elevation: 1.0,
          onPressed: (){}
      ),
    );
  }
}
