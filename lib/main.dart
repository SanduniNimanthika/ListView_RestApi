import 'package:flutter/material.dart';
import 'package:restapi/services/notesservice.dart';
import 'package:restapi/views/node_list.dart';
import 'package:get_it/get_it.dart';
void setupLocator(){
  GetIt.I.registerLazySingleton(()=>NotesServices());

}
void main() {
  setupLocator();
  runApp(MyApp());}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home: Notelist(),
    );
  }
}


