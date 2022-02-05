import 'package:flutter/material.dart';
import 'signup.dart';
import 'package:e_xchange/screens/Dashboard.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

        resizeToAvoidBottomInset: false,
        body: Container(
            decoration: BoxDecoration(
              color: Colors.black,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  child: Stack(
                    children: <Widget>[
                      Container(
                        padding: EdgeInsets.fromLTRB(20, 50, 0, 0),
                        child: Text(
                          'Welcome to',
                          style: TextStyle(
                            fontFamily: 'Rancho',
                            color: Colors.amber,
                            letterSpacing: 2.0,
                            fontSize: 40.0,
                            fontWeight: FontWeight.bold,
                            fontStyle: FontStyle.italic,
                          ),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.fromLTRB(20, 95, 0, 0),
                        child: Text(
                          'E-XCHANGE',
                          style: TextStyle(
                            fontFamily: 'Rancho',
                            color: Colors.amber,
                            letterSpacing: 2.0,
                            fontSize: 40.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(left: 20, top: 55, right: 20),
                  child: Column(
                    children: <Widget>[
                      TextFormField(
                       style: TextStyle(color: Colors.white),
                        decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(
                                borderSide: const BorderSide(color:Colors.blue)
                                        ),
                                              focusedBorder: OutlineInputBorder(
                                    borderSide: const BorderSide(color:Colors.blue)
                                            ),
                            labelText: 'Email',
                            labelStyle: TextStyle(
                                fontSize: 20,
                                fontFamily: 'Rancho',
                                color: Colors.grey)),
                      ),
                      SizedBox(height: 14),
                      TextField(
                        style: TextStyle(color: Colors.white),
                        decoration: InputDecoration(
                            enabledBorder: OutlineInputBorder(
                                borderSide: const BorderSide(color:Colors.blue)
                            ),
                            focusedBorder: OutlineInputBorder(
                                borderSide: const BorderSide(color:Colors.blue)
                            ),
                            labelText: 'Password',
                            labelStyle: TextStyle(
                                fontSize: 20,
                                fontFamily: 'Rancho',
                                color: Colors.grey)),
                        obscureText: true,
                      ),
                      Container(
                        alignment: Alignment(1, 0),
                        padding: EdgeInsets.only(top: 20.0),
                        child: InkWell(
                          child: Text(
                            'Forgort Password',
                            style: TextStyle(
                              fontSize: 15,
                              fontFamily: "Rancho",
                              color: Colors.amber,
                              fontWeight: FontWeight.bold,
                              letterSpacing: 1,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 40),
                      Container(
                        child: Row(
                          children: <Widget>[
                            SizedBox(width: 0),
                            Text(
                              'Sign In',
                              style: TextStyle(
                                color: Colors.amber,
                                fontFamily: 'Rancho',
                                letterSpacing: 2.0,
                                fontSize: 25,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(width: 245),
                            Ink(
                              decoration: const ShapeDecoration(
                                color: Colors.blue,
                                shape: CircleBorder(),
                              ),
                              child: IconButton(
                                icon: Icon(
                                  Icons.arrow_forward,
                                  color: Colors.amber,
                                ),
                                color: Colors.white,
                                onPressed: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => DashBoard()));
                                },

                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(height: 15),
                Padding(
                  padding: const EdgeInsets.fromLTRB(30, 100, 0, 0),
                  child: Text(
                    'New to E-xchange ?',
                    style: TextStyle(
                      fontFamily: 'Rancho',
                      color: Colors.amber,
                      letterSpacing: 2.0,
                    ),
                  ),
                ),
                SizedBox(width: 0.0),
                Padding(
                  padding: const EdgeInsets.fromLTRB(25, 0, 0, 0),
                  child: InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => SignupPage()));
                    },
                    child: Text(
                      'Sign Up',
                      style: TextStyle(
                          fontFamily: 'Rancho',
                          color: Colors.amber,
                          letterSpacing: 2.0,
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                          decoration: TextDecoration.underline),
                    ),
                  ),
                )
              ],
            )));
  }
}

// we will be creating a widget for text field
Widget inputFile({label, obscureText = false}) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: <Widget>[
      Text(
        label,
        style: TextStyle(
            fontSize: 15, fontWeight: FontWeight.w400, color: Colors.black87),
      ),
      SizedBox(
        height: 5,
      ),
      TextField(
        obscureText: obscureText,
        decoration: InputDecoration(
            contentPadding: EdgeInsets.symmetric(vertical: 0, horizontal: 10),
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.grey),
            ),
            border:
                OutlineInputBorder(borderSide: BorderSide(color: Colors.grey))),
      ),
      SizedBox(
        height: 10,
      )
    ],
  );
}
