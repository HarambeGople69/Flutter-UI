import 'package:flutter/material.dart';
import 'package:myapp/screens/homepage.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String name = "";
  bool changeButton = false;
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(18.0),
          child: Form(
            key: _formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset("assets/first.png"),
                SizedBox(
                  height: 20,
                ),
                Text(
                  "Welcome $name",
                  style: TextStyle(fontSize: 35, fontWeight: FontWeight.w500),
                ),
                SizedBox(
                  height: 20,
                ),
                TextFormField(
                  decoration: InputDecoration(
                    hintText: "Enter your username",
                    labelText: "Username",
                  ),
                  onChanged: (value) {
                    setState(() {
                      name = value;
                    });
                  },
                  validator: (value) {
                    if (value.trim().isEmpty) {
                      return "Username cannot be empty";
                    } else {
                      return null;
                    }
                  },
                ),
                SizedBox(
                  height: 10,
                ),
                TextFormField(
                  obscureText: true,
                  decoration: InputDecoration(
                    hintText: "Enter your password",
                    labelText: "Password",
                  ),
                  validator: (value) {
                    if (value.trim().isEmpty) {
                      return "Password cannot be empty";
                    } else if (value.length < 6) {
                      return "Password cannot be less than 6 character";
                    } else {
                      return null;
                    }
                  },
                ),
                SizedBox(
                  height: 20,
                ),
                InkWell(
                  onTap: () async {
                    if (_formKey.currentState.validate()) {
                      setState(() {
                        changeButton = true;
                      });
                      await Future.delayed(Duration(seconds: 1));
                      await Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return HomePage();
                      }));
                      setState(() {
                        changeButton = false;
                      });
                    }
                  },
                  child: AnimatedContainer(
                    duration: Duration(seconds: 1),
                    width: changeButton ? 50 : 200,
                    height: 50,
                    padding: EdgeInsets.symmetric(
                      horizontal: 15,
                      vertical: 10,
                    ),
                    decoration: BoxDecoration(
                      color: Colors.purple,
                      borderRadius: changeButton
                          ? BorderRadius.circular(50)
                          : BorderRadius.circular(20),
                    ),
                    child: changeButton
                        ? Icon(
                            Icons.check,
                            color: Colors.white,
                          )
                        : Text(
                            "Login",
                            style: TextStyle(
                              fontSize: 25,
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                            textAlign: TextAlign.center,
                          ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
