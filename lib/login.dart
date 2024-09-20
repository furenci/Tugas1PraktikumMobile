import 'package:flutter/material.dart';
import 'package:flutter_application_1/home.dart';

class loginpage extends StatefulWidget{
  const loginpage({Key? key}): super(key: key);

  @override
  _loginpage createState() => _loginpage();
}

class _loginpage extends State<loginpage>{
  String username = "";
  String password = "";
  bool isloginsuccess = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          padding: EdgeInsets.all(20),
          child: Column(
            children: [
              Container(
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Image.asset("assets/images/logo_upn.png"),
                )
                ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Text("Silahkan Login Dulu"),
              ),
              _username(),
              _password(),
              _loginbutton(context),
            ],
          ),
        ),
      ),
    );
  }

  Widget _username(){
    return Container(
      padding: EdgeInsets.all(12),
      child: TextFormField(
        enabled: true,
        onChanged: (value) {
          username = value;
        },
        decoration: InputDecoration(
          hintText: 'Nama',
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide(color: Colors.blue),
          )
        ),
      ),
    );
  }

  Widget _password(){
    return Container(
      padding: EdgeInsets.all(12),
      child: TextFormField(
        enabled: true,
        onChanged: (value) {
          password = value;
        },
        obscureText: true,
        decoration: InputDecoration(
          hintText: 'NIM',
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide(color: Colors.blue)
          )
        ),
      ),
    );
  }

  Widget _loginbutton(BuildContext context){
    return Container(
      padding: EdgeInsets.all(12),
      width: MediaQuery.of(context).size.width,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: (isloginsuccess) ? Colors.blue : Colors.red,
          foregroundColor: Colors.white,
        ),
        onPressed: (){
          String text = "";
          if (password == "124220124"){
            setState(() {
              text = "Login success";
              isloginsuccess  = true;
            });
            Navigator.push(
              context, 
              MaterialPageRoute(
                builder: (context) {
                  return homepage(nama: username);
                }
              ),
            );
          }else {
            setState(() {
              text ="Login failed";
              isloginsuccess = false;
            });
          }
          SnackBar snackBar = SnackBar(content: Text(text));
          ScaffoldMessenger.of(context).showSnackBar(snackBar);
        }, 
        child: Text("Login")
        ),
    );
  }
}