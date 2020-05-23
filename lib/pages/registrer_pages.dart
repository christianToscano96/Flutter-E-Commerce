import 'package:flutter/material.dart';


class RegistrerPage extends StatefulWidget{
  @override 
  RegistrerPageState createState() => RegistrerPageState();

}


class RegistrerPageState extends State<RegistrerPage> {
  @override

  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        padding: EdgeInsets.symmetric(horizontal: 40.0),
        child: Center(
          child: SingleChildScrollView(
           child: _inputsRegistrer(),
          ),
        ),
      ),
    );
  }


//widget 
  Widget _inputsRegistrer() {
    return Form(
              child: Column(
                children: <Widget>[
                  _logo(),                
                  Padding(padding: EdgeInsets.only(top: 20.0),
                    child: TextFormField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(borderSide: BorderSide(color: Colors.pink) ,borderRadius: BorderRadius.circular(20.0) ),                     
                        labelText: 'Username',
                        labelStyle: TextStyle(color: Colors.pink, fontSize: 16.0),
                        hintText: 'Enter username, min length 6',
                        icon: Icon(Icons.face, color: Colors.pink, size: 30.0),                       
                      ),
                    ),                  
                  ),
                  Padding(padding: EdgeInsets.only(top: 30.0),
                    child: TextFormField(
                      decoration: InputDecoration(
                        enabled: false,
                        border: OutlineInputBorder(borderSide: BorderSide(color: Colors.pink) ,borderRadius: BorderRadius.circular(20.0) ),                     
                        labelText: 'Email',
                        labelStyle: TextStyle(color: Colors.pink, fontSize: 16.0),
                        hintText: 'Enter a valid email',
                        icon: Icon(Icons.mail, color: Colors.pink, size: 30.0),                       
                      ),
                    ),                  
                  ),
                  Padding(padding: EdgeInsets.only(top: 30.0),
                    child: TextFormField(
                      obscureText: true,
                      autofocus: true,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(borderSide: BorderSide(color: Colors.pink) ,borderRadius: BorderRadius.circular(20.0) ),                     
                        labelText: 'Password',
                        labelStyle: TextStyle(color: Colors.pink, fontSize: 16.0),
                        hintText: 'Enter password, min length 6',
                        icon: Icon(Icons.lock, color: Colors.pink, size: 30.0),                       
                      ),
                    ),                  
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 30.0),
                    child: Column(
                      children: <Widget>[
                        _buttonSubmit(),
                        FlatButton(
                          child: Text('Existing user? Login'),
                          onPressed: (){},
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            );
  }
    Widget _buttonSubmit() {
      return Row(
          children: <Widget>[
            Expanded(
              flex: 1,
              child: RaisedButton(                          
                onPressed: () {},
                child: Text('Submit', style: TextStyle(color: Colors.white, fontSize: 16.0)),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10.0)),                            
                ),
                color: Theme.of(context).primaryColor,
                autofocus: true,
              ),
            ),
          ],
        );
    }
    
    Widget _logo() {
     return Image.asset(
       'assets/logo.png',
        fit: BoxFit.cover,
        height: 200.0,
        semanticLabel: 'logoApp',
     );
    }
}