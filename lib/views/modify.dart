import 'package:flutter/material.dart';
import 'package:restapi/views/node_list.dart';
class NoteModify extends StatelessWidget {
  final String noteId;
  bool get isEditing=>noteId!=null;
  NoteModify({this.noteId});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(noteId==null?"Create note":"update"),
      ),
      body: Padding(
        padding:  const EdgeInsets.all(12.0),
        child: Column(
          children: <Widget>[
            TextField(
              decoration: InputDecoration(
                hintText: 'NoteTitle'
              ),
            ),
            SizedBox(
              height: 10,
            ),
            TextField(
              decoration: InputDecoration(
                  hintText: 'NoteContent'
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(18.0),
              child: Material(
                child: RaisedButton(
                  child: Text("submit", style: TextStyle(color: Colors.white),),
                  color: Colors.green,
                  onPressed: (){
                    Navigator.of(context).push(MaterialPageRoute(builder: (_)=>Notelist()) );
                  },
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
