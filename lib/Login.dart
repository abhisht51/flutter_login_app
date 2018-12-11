import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final TextEditingController _userController = new TextEditingController();
  final TextEditingController _passController = new TextEditingController();
  void _erase() {
    setState(() {
      _userController.clear();
      _passController.clear();
    });
  }

  String str = "Abhisht";
  void _showWelcome() {
    setState(() {
      if (_userController.text.isNotEmpty && _passController.text.isNotEmpty)
        str = _userController.text;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: new Text("Login App"),
        centerTitle: true,
        backgroundColor: Colors.black,
      ),
      backgroundColor: Colors.grey,
      body: new Container(
          alignment: Alignment.topCenter,
          child: new ListView(
            padding: EdgeInsets.only(top: 10),
            children: <Widget>[
              new Image.asset(
                'images/face.jpg',
                width: 90.0,
                height: 90.0,
              ),
              new Container(
                padding: EdgeInsets.all(10.0),
                height: 180.0,
                width: 380.0,
                child: new Column(
                  children: <Widget>[
                    new TextField(
                      controller: _userController,
                      decoration: new InputDecoration(
                        hintText: "Username",
                        icon: new Icon(Icons.person),
                      ),
                    ),
                    new TextField(
                      controller: _passController,
                      obscureText: true,
                      decoration: new InputDecoration(
                        hintText: "Password",
                        icon: new Icon(Icons.vpn_key),
                      ),
                    ),
                    new Padding(
                      padding: EdgeInsets.all(8.0),
                    ),
                    new Center(
                      //heightFactor: 1.0,
                      child: new Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          new RaisedButton(
                            onPressed: _showWelcome,
                            child: new Text(
                              "Login",
                              style: new TextStyle(
                                  fontSize: 16.0, fontWeight: FontWeight.bold),
                            ),
                            color: Colors.blueGrey,
                            splashColor: Colors.blue,
                            padding: EdgeInsets.all(10.0),
                          ),
                          new RaisedButton(
                            onPressed: _erase,
                            child: new Text(
                              "Clear",
                              style: new TextStyle(
                                  fontSize: 16.0, fontWeight: FontWeight.bold),
                            ),
                            color: Colors.blueGrey,
                            splashColor: Colors.blue,
                            padding: EdgeInsets.all(10.0),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ), // Container 2
              new Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  new Padding(
                    padding: EdgeInsets.all(10.0),
                  ),
                  new Text(
                    "Welcome, $str!",
                    style: new TextStyle(
                        color: Colors.black,
                        fontSize: 39.9,
                        fontWeight: FontWeight.bold),
                  )
                ],
              )
            ],
          )),
    );
  }
}
