import 'package:restapi/module/module.dart';
class NotesServices{
  List<NoteListing> getNotesList(){
    return [
      new NoteListing(
          noteId: '1',
          createDateTime: DateTime.now(),
          lastEditDateTime: DateTime.now(),
          noteTitle: 'note 1'
      ),
      new NoteListing(
          noteId: '2',
          createDateTime: DateTime.now(),
          lastEditDateTime: DateTime.now(),
          noteTitle: 'note 2'
      ),
      new NoteListing(
          noteId: '3',
          createDateTime: DateTime.now(),
          lastEditDateTime: DateTime.now(),
          noteTitle: 'note 3'
      ),
      new NoteListing(
          noteId: '4',
          createDateTime: DateTime.now(),
          lastEditDateTime: DateTime.now(),
          noteTitle: 'note 4'
      ),
    ];
  }
}