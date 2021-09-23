import 'package:flutter/material.dart';
import 'package:moblieappweek1/backend/database.dart';
import 'package:moblieappweek1/config/constant.dart';

class Register extends StatefulWidget {
  const Register({Key? key}) : super(key: key);

  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  var name, surname, email, password, confirmpassword;
  TextEditingController _password = TextEditingController();
  TextEditingController _confirmpassword = TextEditingController();
  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text('Register:'),
        ),
        body: Form(
          key: formKey,
          child: SingleChildScrollView(
            child: Column(
              children: [
                txtName(),
                txtSureName(),
                txtEmail(),
                txtPassword(),
                txtConpassword(),
                btnSubmit(),
                
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget txtName() {
    return Container(
      margin: EdgeInsets.fromLTRB(15, 20, 10, 10),
      child: TextFormField(
        style: TextStyle(
          fontSize: 24,
          color: pColor,
        ),
        decoration: InputDecoration(
          labelText: 'Name:',
          icon: Icon(Icons.account_circle),
          hintText: 'Input your name',
        ),
        validator: (value) {
          if (value!.isEmpty) {
            return 'Please input your Name';
          } else if (value.length < 5) {
            return 'Please input more than 5 characters ';
          }
        },
        onSaved: (value) {
          name = value;
        },
      ),
    );
  }

  Widget txtSureName() {
    return Container(
      margin: EdgeInsets.fromLTRB(15, 20, 10, 10),
      child: TextFormField(
          style: TextStyle(
            fontSize: 24,
            color: pColor,
          ),
          decoration: InputDecoration(
            labelText: 'Surname',
            icon: Icon(Icons.account_circle_rounded),
            hintText: 'Input your surname',
          ),
          validator: (value) {
            if (value!.isEmpty) {
              return 'Please input your Surname';
            }
          },
          onSaved: (value) {
            surname = value!.trim();
          }),
    );
  }

  Widget txtEmail() {
    return Container(
      margin: EdgeInsets.fromLTRB(15, 20, 10, 10),
      child: TextFormField(
        keyboardType: TextInputType.emailAddress,
        style: TextStyle(
          fontSize: 24,
          color: pColor,
        ),
        decoration: InputDecoration(
          labelText: 'Email:',
          icon: Icon(Icons.email_outlined),
          hintText: 'Input your email',
        ),
        validator: (value) {
          if (!(value!.contains('@'))) {
            return 'Please input your Email';
          } else if (!(value.contains('.'))) {
            return 'Please input your Email';
          }
        },
        onSaved: (value) {
          email = value;
        },
      ),
    );
  }

  Widget txtPassword() {
    return Container(
      margin: EdgeInsets.fromLTRB(15, 20, 10, 10),
      child: TextFormField(
        controller: _password,
        obscureText: true,
        style: TextStyle(
          fontSize: 24,
          color: pColor,
        ),
        decoration: InputDecoration(
          labelText: 'Password:',
          icon: Icon(Icons.lock),
          hintText: 'Input your password',
        ),
         validator: (value){
          if(value!.isEmpty) {
            return "Please input re-password";
      
          }
        },
        onSaved: (value) {
          password = value;
        },
      ),
    );
  }
   Widget txtConpassword() {
    return Container(
      margin: EdgeInsets.fromLTRB(15, 20, 10, 10),
      child: TextFormField(
        controller: _confirmpassword, 
        obscureText: true,
        style: TextStyle(
          fontSize: 24,
          color: pColor,
        ),
        decoration: InputDecoration(
          labelText: 'Confirm password:',
          icon: Icon(Icons.lock),
          hintText: 'Please Confirm your password',
        ),
        validator: (value){
          if(value!.isEmpty) {
            return "Please input re-password";
          }
          if(_password.text != _confirmpassword.text)
          {
            return "Password Do not match";
          }
        },
        onSaved: (value) {
          password = value;
        },
      ),
    );
  }

  Widget btnSubmit() => ElevatedButton(
        style: ElevatedButton.styleFrom(
          primary: pColor,
        ),
        onPressed: () {
          print("Hello");

          var local = new DBLocal();

          if (formKey.currentState!.validate()) {
            formKey.currentState!.save();
            local.register(name, surname, email, password);
            formKey.currentState!.reset();
            Navigator.pushNamed(context, 'Login');
          }
        },
        child: Text('Submit'),
      );
}