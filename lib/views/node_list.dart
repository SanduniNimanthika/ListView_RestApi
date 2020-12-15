import 'package:flutter/material.dart';
import 'package:restapi/module/module.dart';
import 'package:restapi/services/notesservice.dart';
import 'package:restapi/views/modify.dart';
import 'package:restapi/views/notedelete,dart.dart';
import 'package:get_it/get_it.dart';
class Notelist extends StatefulWidget{
  @override
  _NotelistState createState()=>_NotelistState();
}
class _NotelistState extends State<Notelist> {
 NotesServices get service=>GetIt.I<NotesServices>();
 List<NoteListing> notes=[];

  String formatDateTime(DateTime dateTime){
    return '${dateTime.day}/${dateTime.month}/${dateTime.year}';
  }
  @override
  void initState(){
    notes = service.getNotesList();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
         title: Text("list"),
       ),
      floatingActionButton: FloatingActionButton
        (
        onPressed: (){
          Navigator.of(context).push(MaterialPageRoute(builder: (_)=>NoteModify()) );
        },
        child: Icon(Icons.add), 
      ),
      body: ListView.separated(
        separatorBuilder: (_, __) => Divider(height: 1,color: Colors.greenAccent,),
      itemBuilder: (_,index){
          return InkWell(
            onTap: (){
              Navigator.of(context).push(MaterialPageRoute(builder: (_)=>NoteModify(noteId: notes[index].noteId,)) );
            },
            child: Dismissible(
              key: ValueKey(notes[index].noteId),
              direction: DismissDirection.startToEnd,
              onDismissed: (direction){

              },
              confirmDismiss: (direction) async{
                final result =await showDialog(
                    context: context,
                    builder: (_)=>noteDelete());
                return  result;
              },
              background:Container(color: Colors.red,),
              child: ListTile(
                title: Text(notes[index].noteTitle,),
                subtitle: Text("last day ${formatDateTime(notes[index].lastEditDateTime) }"),
              ),
            ),
          );
      },
        itemCount: notes.length,
      )
    );
  }
}

