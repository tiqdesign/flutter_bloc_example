import 'dart:async';
import 'package:flutter_bloc/bloc/abstract/base_bloc.dart';
import 'package:flutter_bloc/services/login_service.dart';

class LoginBloc implements BaseBloc{

  //Singleton//
  static LoginBloc _instance;
  static LoginBloc get getInstance{
    if(_instance == null) _instance = LoginBloc._init();
    return _instance;
  }
  LoginBloc._init();



  //StreamController//
  final loginStreamController = StreamController.broadcast();

  //yukardan da direk alabilirdik ama biz getter yaptık daha güzel duruyor.
  Stream get getLoginStream => loginStreamController.stream;


  
  //Functions//
  bool tryLoginWithEmail(String email, String password){
    //true or false
    return LoginService.tryLoginWithEmail(email, password);
  }

  //Dispose//
  @override
  void dispose() {
    loginStreamController.close();
  }


}