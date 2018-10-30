import 'package:flutter/material.dart';

class Login extends StatefulWidget{

  @override
  State<StatefulWidget> createState() =>  _LoginState();

}

class _LoginState extends State<Login>{

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        //resizeToAvoidBottomPadding: false,
        body:  Stack(
          alignment: Alignment.center,
          children: <Widget>[
            Container(
              decoration:  BoxDecoration(
                image:  DecorationImage(
                  image:  AssetImage("assets/images/loginbackground.png"), 
                  fit: BoxFit.cover,
                ),
              ),
            ),

            ListView(
              padding: EdgeInsets.fromLTRB(30.0, 0.0, 30.0, 0.0),
              children: <Widget>[

                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.53,
                ),

                Container(
                  padding: const EdgeInsets.only(top: 5.0),
                  alignment: Alignment.center,
                  height: 60.0,
                  decoration: new BoxDecoration(
                      color: Colors.white,
                      borderRadius: new BorderRadius.circular(100.0),
                      boxShadow: [
                        new BoxShadow(
                            color: Color.fromRGBO(0, 0, 0, 0.25),
                            blurRadius: 10.0,
                            offset: Offset(0.0, 3.0)
                        )
                      ]
                  ),

                  child: TextFormField(
                    textAlign: TextAlign.center,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintStyle: TextStyle(color: Colors.grey),
                      hintText: "Username",
                    ),
                    //onFieldSubmitted: (v) => onSearch(v, model),
                  )
                ),


                Container(
                  margin: EdgeInsets.only(top: 20.0),
                  padding: const EdgeInsets.only(top: 5.0),
                  alignment: Alignment.center,
                  height: 60.0,
                  width: MediaQuery.of(context).size.width * 0.85,
                  decoration: new BoxDecoration(
                      color: Colors.white,
                      borderRadius: new BorderRadius.circular(100.0),
                      boxShadow: [
                        new BoxShadow(
                            color: Color.fromRGBO(0, 0, 0, 0.25),
                            blurRadius: 10.0,
                            offset: Offset(0.0, 3.0)
                        )
                      ]
                  ),

                  child: TextFormField(
                    obscureText: true,
                    textAlign: TextAlign.center,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintStyle: TextStyle(color: Colors.grey),
                      hintText: "Password",
                    ),
                    //onFieldSubmitted: (v) => onSearch(v, model),
                  )
                ),


                Container(
                  margin: EdgeInsets.only(top: 40.0, bottom: 5.0),
                  padding: const EdgeInsets.only(top: 5.0),
                  alignment: Alignment.center,
                  height: 60.0,
                  width: MediaQuery.of(context).size.width * 0.85,
                  decoration: new BoxDecoration(
                      gradient: new LinearGradient(
                        begin: Alignment.centerLeft,
                        end: Alignment.centerRight,
                        colors: [
                          Color.fromRGBO(235, 139, 123, 1.0),
                          Color.fromRGBO(255, 140, 90, 1.0)
                        ],
                      ),
                      borderRadius: new BorderRadius.circular(100.0),
                      boxShadow: [
                        new BoxShadow(
                            color: Color.fromRGBO(0, 0, 0, 0.3),
                            blurRadius: 10.0,
                            offset: Offset(0.0, 10.0)
                        )
                      ]
                  ),

                  child: InkWell(
                    child: Text(
                      "Login",
                      style: TextStyle(color: Colors.white),
                    ),
                  )
                ),

                FlatButton(
                  onPressed: (){},
                  child: Text(
                    "Forgot Password?",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontFamily: "SFProBold",
                      color: Color.fromRGBO(64, 46, 50, 1.0)
                    ),
                  ),
                ),
                
                FlatButton(
                  onPressed: (){},
                  child: Text(
                    "Don't have an account? Signup.",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontFamily: "SFProBold",
                      color: Color.fromRGBO(64, 46, 50, 1.0)
                    ),
                  ),
                ),

              ],
            ),

          ],
        )
    );
  }
}