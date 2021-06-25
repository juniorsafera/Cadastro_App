 
 
import 'package:cadastro_app/views/user_list.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'models/user.dart';
 

void main() {
  runApp(
    MyApp()
    );
}

class MyApp extends StatelessWidget {
   
  @override
  Widget build(BuildContext context) {
    return 
    
    MultiProvider(
      providers: [       
           Provider<User>(create: (_) =>  User(name: '', email: '', avatarUrl: '') ,)
      ],
      child:   MaterialApp(
        title: 'Cadastro',
        theme: ThemeData(
        primarySwatch: Colors.blue,
        ),
        home:  UserList(),
      ),
    );
    
    
    
    
    
  }
}

 