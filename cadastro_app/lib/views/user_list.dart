import 'package:cadastro_app/components/user_tile.dart';
import 'package:cadastro_app/provider/user.dart';
 
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class UserList extends StatelessWidget {
  const UserList({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {

    //const users = {...DUMMY_USER};
    final   users = Provider.of<UserProvider>(context);

    return Scaffold(
      appBar: AppBar(
        title: Text("Lista de Usuários"),
        actions: [
          IconButton(
            icon: Icon(Icons.add),
            onPressed: (){},
          ),
        ],
       ),
      body: ListView.builder(

        itemCount: users.count,
        itemBuilder: (context, index) => UserTile(users.all.elementAt(index)),

        ),
    
    );
  }
}