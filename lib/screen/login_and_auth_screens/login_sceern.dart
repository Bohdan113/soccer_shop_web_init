// ignore_for_file: unused_field

import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:soccer_shop_web/services/auth_firebase.dart';
import 'package:soccer_shop_web/services/user.dart';

class LoginScreen extends StatefulWidget {
  LoginScreen({Key? key}) : super(key: key);
  static const routName = '/login_screen';


  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController= TextEditingController();
  FocusNode _one = FocusNode();
  FocusNode _two = FocusNode();
  bool showLogin = true;

  AuthService _authService = AuthService();
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    String _email;
    String _password;


    void _loginButtonAction() async {
      _email = _emailController.text;
      _password = _passwordController.text;

      if (_email.isEmpty || _password.isEmpty) return;

      Users? user = await _authService.singInWithEmailAndPassword(
          _email.trim(), _password.trim());
      if (user == null) {
        Fluttertoast.showToast(
            msg: "Can`t SingIn you! Pls check your email or password!",
            toastLength: Toast.LENGTH_SHORT,
            gravity: ToastGravity.CENTER,
            timeInSecForIosWeb: 2,
            webPosition: "center",
            webShowClose: true,

            backgroundColor: Colors.red,
            textColor: Colors.white,
            fontSize: 16.0);
        print('NOT');
      } else {
        // ignore: avoid_print
        print('login');
        _emailController.clear();
        _passwordController.clear();
        Navigator.of(context).pushNamed('/shop');
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
              SizedBox(height: 150),
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
              Container(
                width: 500,
                color: Colors.white,
                child: Padding(
                  padding: EdgeInsets.all(10),
                  child: TextField(
                    controller: _emailController,
                    focusNode: _one,
                    keyboardType: TextInputType.emailAddress,
                    textInputAction: TextInputAction.next,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'User Name',
                        hintText: 'Enter valid mail id as abc@gmail.com'),
                  ),
                ),
              ),
              SizedBox(
                height: 10
              ),
              Container(
                width: 500,
                color: Colors.white,
                child: Padding(
                  padding: EdgeInsets.all(10),
                  child: TextField(
                    controller: _passwordController,
                    focusNode: _two,
                    textInputAction: TextInputAction.done,
                    onSubmitted:(_) => _loginButtonAction(),
                    obscureText: true,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Password',
                        hintText: 'Enter your secure password'),
                  ),
                ),
              ),
              SizedBox(height: 20,),
              OutlinedButton(
                onPressed: (){
                  //TODO FORGOT PASSWORD SCREEN GOES HERE
                  //TODO LUL
                },
                child: Text(
                  'Forgot Password',
                  style: TextStyle(color: Colors.blue, fontSize: 15),
                ),
              ),
              Container(
                height: 50,
                width: 250,
                decoration: BoxDecoration(
                    color: Colors.blue, borderRadius: BorderRadius.circular(20)),
                child: ElevatedButton(
                  onPressed: () =>
                    _loginButtonAction(),
                  child: Text(
                    'Login',
                    style: TextStyle(color: Colors.white, fontSize: 25),
                  ),
                ),
              ),
              SizedBox(
                height: 130
              ),
              TextButton(onPressed: () => Navigator.of(context).pushNamed('/authentication_screen'),child: Text('New User? Create Account',style: TextStyle(color: Colors.white),)
              ),],
          ),
        ),
      ),
    );
  }
}
