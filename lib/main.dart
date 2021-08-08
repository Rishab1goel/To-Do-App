import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'homepage.dart';
import 'todos.dart';

Future main() async
{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();


  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  
  @override
  Widget build(BuildContext context)=>ChangeNotifierProvider(
    create: (context)=> TodosProvider(),
    child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'TODO APP',
        theme: ThemeData(
          primaryColor: Colors.red,
          accentColor: Colors.white,
        ),
        home: HomePage(),

      ),
  );
  }

