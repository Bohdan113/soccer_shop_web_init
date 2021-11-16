// ignore_for_file: unused_field

import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:soccer_shop_web/services/auth_firebase.dart';
import 'package:soccer_shop_web/services/user.dart';

class Authentication extends StatefulWidget {
  Authentication({Key? key}) : super(key: key);
  static const routName = '/authentication_screen';


  @override
  _AuthenticationState createState() => _AuthenticationState();
}

class _AuthenticationState extends State<Authentication> {
  TextEditingController _nameController = TextEditingController();
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController= TextEditingController();
  final _nodeThree = FocusNode();
  final _nodeTwo = FocusNode();
  final _nodeOne = FocusNode();




  bool showLogin = true;

  AuthService _authService = AuthService();
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    String _email;
    String _password;

    void _registerButtonAction() async {
      _email = _emailController.text;
      _password = _passwordController.text;

      if (_email.isEmpty || _password.isEmpty) return;

      Users? user = await _authService.registerWithEmailAndPassword(
          _email.trim(), _password.trim());
      if (user == null) {
        Fluttertoast.showToast(
            msg: "Can`t Register you! Pls check your email",
            toastLength: Toast.LENGTH_SHORT,
            timeInSecForIosWeb: 1,
            webPosition: "center",
            webShowClose: true,
            backgroundColor: Colors.red,
            textColor: Colors.white,
            fontSize: 16.0);
        print('Not regist');
      }
      else {
        print('regist');
        Navigator.of(context).pushNamed('/login_screen');
        _emailController.clear();
        _passwordController.clear();
      }
    }

    return Scaffold(
      body: Container(
        height: size.height,
        width: size.width,
        decoration: BoxDecoration(image: DecorationImage(image: AssetImage('assets/images/logosoccerbig.png'),fit: BoxFit.cover),),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: size.height/5,
                width: size.width/5,
                padding: EdgeInsets.only(top: 40),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(200),
                ),
                child: Center(
                  child: SvgPicture.asset('assets/svg/logofinal.svg',),
                ),
              ),
              SizedBox(height: 150),
              Container(
                width: 500,
                color: Colors.white,
                child: Padding(
                  padding: EdgeInsets.all(10),
                  child: TextField(
                    focusNode: _nodeOne,
                    textInputAction: TextInputAction.next,
                    controller: _nameController,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'User Name',
                        hintText: 'Enter your Name'),
                  ),
                ),
              ),
              SizedBox(height: 10),
              Container(
                width: 500,
                color: Colors.white,
                child: Padding(
                  padding: EdgeInsets.all(10),
                  child: TextField(
                    focusNode: _nodeTwo,
                    textInputAction: TextInputAction.next,
                    controller: _emailController,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Email',
                        hintText: 'Enter valid mail id as abc@gmail.com'),
                  ),
                ),
              ),
              SizedBox(
                  height: 10),
              Container(
                width: 500,
                color: Colors.white,
                child: Padding(
                  padding: EdgeInsets.all(10),
                  child: TextField(
                    focusNode: _nodeThree,
                    controller: _passwordController,
                    textInputAction: TextInputAction.done,
                    onSubmitted: (_)=>_registerButtonAction,
                    obscureText: true,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Password',
                        hintText: 'Enter your secure password'),
                  ),
                ),
              ),
              SizedBox(height: 20),
              // OutlinedButton(
              //   onPressed: (){
              //     //TODO LUL
              //   },
              //   child: Text(
              //     'Forgot Password',
              //     style: TextStyle(color: Colors.blue, fontSize: 15),
              //   ),
              // ),
              Container(
                height: 50,
                width: 250,
                decoration: BoxDecoration(
                    color: Colors.blue, borderRadius: BorderRadius.circular(20)),
                child: ElevatedButton(
                  onPressed: _registerButtonAction,
                  child: Text(
                    'Registion',
                    style: TextStyle(color: Colors.white, fontSize: 25),
                  ),
                ),
              ),
              ],
          ),
        ),
      ),
    );
  }
}
