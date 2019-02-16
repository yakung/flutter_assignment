import 'package:flutter/material.dart';
import './Tabbar.dart';
import './register.dart';
class MycustomForm extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyCustomFormState();
  }
}

class MyCustomFormState extends State<MycustomForm> {
  final _formkey = GlobalKey<FormState>();
  TextEditingController ctrlUsername = TextEditingController();
  TextEditingController ctrlpassword = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: _formkey,
        child: ListView(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(top: 30.0),
              child: Image.asset("resources/food.jpg", height: 200, width: 200),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SizedBox(
                height: 25.0,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left:40.0,right: 40.0),
              child: TextFormField(
                  controller: ctrlUsername,
                  decoration: InputDecoration(
                  labelText: "User Id",
                  hintText: "",
                  prefixIcon: Icon(Icons.person),
                ),
                
                keyboardType: TextInputType.text,
              ),
              
            ),
            Padding(
              padding: const EdgeInsets.only(left:40.0,right: 40.0),
              child: TextFormField(
                  controller: ctrlpassword,
                  decoration: InputDecoration(
                  labelText: "Password",
                  hintText: "",
                  prefixIcon: Icon(Icons.https),
                ),
                
                keyboardType: TextInputType.text,
                obscureText: true,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: RaisedButton(
                child: Text("LOGIN"),
                onPressed: () {
                  String username = ctrlUsername.text;
                  String password = ctrlpassword.text;

                  if(username == '' || password == ''){
                    showDialog(
                      context: context,
                      builder: (context) {
                        return AlertDialog(
                        content: Text("กรุณาระบุ user or password"));
                        });
                  }

                  else if(username != 'admin' || password != 'admin' ){
                    showDialog(
                      context: context,
                      builder: (context) {
                        return AlertDialog(
                        content: Text("user or password ไม่ถูกต้อง"));
                        });                    
                  }

                  if (username == 'admin' && password == 'admin'){
                    Navigator.push(context,MaterialPageRoute(builder: (context) => TabDemo()));
                  }
                }
              ),
            ),
            
            Padding(
              padding: const EdgeInsets.only(left:235.0),
              child: FlatButton(
                child: Text("Register New Account"),
                onPressed: () {
                      Navigator.push(context,MaterialPageRoute(builder: (context) => Register(), ),);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}