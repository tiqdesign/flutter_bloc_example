import 'package:flutter_bloc/models/user.dart';

class LoginService{

  static LoginService _singleton = LoginService._internal();

  //Contstructor with no name
  //Instance oluştururken buradan oluşturacak ve bu da gidip _singleton ile instance oluşturacak
  factory LoginService(){
    return _singleton;
  }

  //Named Constructor
  LoginService._internal();

  static bool tryLoginWithEmail(String email, String password){
    //get user if condition is true, if not return false
    return false;
  }

}