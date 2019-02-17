import 'package:flutter/material.dart';
// import 'my_custom_form.dart';

class Register extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return Registerstate();
  }
}

class Registerstate extends State<Register> {
  final _formkey = GlobalKey<FormState>();
  TextEditingController ctrlemail = TextEditingController();
  TextEditingController ctrlpassword1 = TextEditingController();
  TextEditingController ctrlpassword2 = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Resgister"),
      ),
      body: Form(
        key: _formkey,
        child: ListView(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(top:50.0,left:20.0,right:20.0),
              child: TextFormField(
                  controller: ctrlemail,
                  decoration: InputDecoration(
                  fillColor: Colors.blue,
                  labelText: "User Id",
                  hintText: "User Id",
                  icon: Icon(Icons.email),
                ),
                
                keyboardType: TextInputType.text,
                validator: (value) {
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top:10.0,left:20.0,right:20.0),
              child: TextFormField(
                controller: ctrlpassword1,
                  decoration: InputDecoration(
                  labelText: "Password",
                  hintText: "Password",
                  icon: Icon(Icons.https),
                ),

                keyboardType: TextInputType.text,
                obscureText: true,
                validator: (value) {
                },
              ),
            ),
             Padding(
             padding: const EdgeInsets.only(top:10.0,left:20.0,right:20.0),
              child: TextFormField(
                controller: ctrlpassword2,
                  decoration: InputDecoration(
                  labelText: "Confirm Password",
                  hintText: "Confirm Password",
                  icon: Icon(Icons.https),
                ),
                
                keyboardType: TextInputType.text,
                obscureText: true,
                validator: (value) {
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top:40.0,left:20.0,right:20.0),
              child: RaisedButton(
                child: Text("CONTINUE",style: TextStyle(color: Colors.white),),
                color: Colors.blue,

                onPressed: () {
                  String mail = ctrlemail.text;
                  String pass1 = ctrlpassword1.text;
                  String pass2 = ctrlpassword2.text;
                  if(mail == 'admin'){
                    showDialog(
                      context: context,
                      builder: (context) {
                        return AlertDialog(
                        content: Text("User นี้มีอยู่ในระบบแล้ว"));
                        });
                      }
                  else if(mail == '' || pass1 == '' || pass2 == ''){
                    showDialog(
                     context: context,
                    builder: (context) {
                        return AlertDialog(
                        content: Text("กรุณาระบุข้อมูลให้ครบถ้วน"));
                        });
                  }
                  else{
                    if(pass1 == pass2){
                        // Navigator.push(context,MaterialPageRoute(builder: (context) => MycustomForm(), ),);
                        Navigator.pop(context);
                    }
                    else if(pass1 != pass2){
                    showDialog(
                      context: context,
                      builder: (context) {
                        return AlertDialog(
                        content: Text("Password ไม่ตรงกัน"));
                        });
                    }
                  }
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}