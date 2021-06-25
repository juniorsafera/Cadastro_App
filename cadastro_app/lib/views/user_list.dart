import 'package:cadastro_app/components/user_tile.dart';
import 'package:cadastro_app/data/dummy_user.dart';
import 'package:flutter/material.dart';

class UserList extends StatelessWidget {
  const UserList({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {

    const users = {...DUMMY_USER};

    return Scaffold(
      appBar: AppBar(
        title: Text("Lista de Usuários"),
       ),
      body: ListView.builder(

        itemCount: users.length,
        itemBuilder: (context, index) => UserTile(users.values.elementAt(index)),

        ),
    
    );
  }
}