import 'dart:async';

import 'package:flutter/widgets.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});





  @override
  State<Home> createState() => _HomeState();
}





class story {

  final Title = '';
  final Story = '';

  void db_connection(){
    
    
  }




}

class _HomeState extends State<Home> {
  final titleController = TextEditingController();
  final story_Controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        title: Text('Read Mind',style: TextStyle(color: Colors.white),),

      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(30.0),
                  child: Container(
                    width: 100.0,
                    height: 100.0,
                    color: Colors.black,
                  
                  ),
                ),
              ],
            ),
          

          ],

        ),
      
      ),
      
      floatingActionButton: FloatingActionButton(onPressed:()=>_dialogBuilder(context),child: Icon(Icons.add),),

    );
  }

   Future<void> _dialogBuilder(BuildContext context) {
    return showDialog<void>(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('UnLock The World 🔐'),
        
          content:Container(
            height: 250,
            child: SingleChildScrollView(
              child: Column(
                // mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [        
                  Text('Tittle'),
                  TextField(controller: titleController,
                    decoration: InputDecoration(border: OutlineInputBorder()),),
                  SizedBox(height:10,),
                  Text('Story :'),
                  Container(
                    height: 100,
                    decoration: BoxDecoration(
                      border: Border.all(
                        width: 1.0,
                        color: Colors.black45,
                      ),
                      borderRadius: BorderRadius.circular(5)
                    ),
                    child: TextFormField(controller: story_Controller,maxLines: 50,
                      decoration: InputDecoration(border: InputBorder.none),),
                  ),
              ],
              ),
            ),
          ),
          
          actions: <Widget>[
            TextButton(
              style: TextButton.styleFrom(
                textStyle: Theme.of(context).textTheme.labelLarge,
              ),
              child: const Text('Cancel'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
            TextButton(
              style: TextButton.styleFrom(
                textStyle: Theme.of(context).textTheme.labelLarge,
              ),
              child: const Text('Ok'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }


  
}

