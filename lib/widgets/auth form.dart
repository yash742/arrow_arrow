import 'package:flutter/material.dart';

class Authform extends StatefulWidget {
  Authform(this.submitfn);
  final void Function(
      String username, String email, String passward, bool islogin) submitfn;
  @override
  _AuthformState createState() => _AuthformState();
}

class _AuthformState extends State<Authform> {
  final _formkey = GlobalKey<FormState>();
  var _islogin = true;
  var username = '';
  var email = '';
  var password = '';

  void _submitform() {
    final _isvalid = _formkey.currentState.validate();
    FocusScope.of(context).unfocus();
    if (_isvalid) {
      _formkey.currentState.save();
      widget.submitfn(username, email, password, _islogin);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Card(
          elevation: 9,
          margin: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
          color: Colors.white38,
          child: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.all(30),
              child: Form(
                  key: _formkey,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                
                        
                     
                   
                      
                      Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30)),
                        child: Expanded(
                          child: RaisedButton(
                            onPressed: _submitform,
                            child: Text(_islogin ? 'LogIn' : 'SignUp'),
                          ),
                        ),
                      ),
                      FlatButton(
                        onPressed: () {
                          setState(() {
                            _islogin = !_islogin;
                          });
                        },
                        child: Text(_islogin
                            ? 'create new account'
                            : 'i have an account'),
                        highlightColor: Colors.amber[100],
                        visualDensity:
                            VisualDensity(horizontal: 2.0, vertical: 1.0),
                        textColor: Colors.black,
                      )
                    ],
                  )),
            ),
          ),
        ),
      ),
    );
  }
}
