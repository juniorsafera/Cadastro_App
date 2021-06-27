import 'package:cadastro_app/data/dummy_user.dart';
import 'package:cadastro_app/models/user.dart';
import 'package:flutter/cupertino.dart';

class UserProvider with ChangeNotifier{
 final Map<String, User > _items = {...DUMMY_USER};

  List<User> get all {
    return [..._items.values];
  }

    int get count {
    return _items.length;
  }

  User byIndex(int i){
    return _items.values.elementAt(i);
  }

}