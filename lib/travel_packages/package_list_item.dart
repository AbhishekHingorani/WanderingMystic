import 'package:flutter/material.dart';

class PackageListItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Stack(
        children: <Widget>[

          //Background Image
          Container(
            height: 200.0,
            width: MediaQuery.of(context).size.width * 0.85,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12.0),
              image: DecorationImage(
                fit: BoxFit.fill,
                image: AssetImage("assets/images/varanasi.jpg"),
              ),
            ),
          ),

          //Gradient Overlay
          Opacity(
            opacity: 0.2,
            child: Container(
              height: 200.0,
              width: MediaQuery.of(context).size.width * 0.85,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12.0),
                gradient: new LinearGradient(
                  begin: Alignment.bottomLeft,
                  end: Alignment.topRight,
                  colors: [
                    Color.fromRGBO(235, 139, 123, 1.0),
                    Color.fromRGBO(226, 197, 125, 1.0)
                  ],
                ),
              )
            )
          ),


          //Center Text
          Container(
            alignment: Alignment.center,
            height: 200.0,
            width: MediaQuery.of(context).size.width * 0.85,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text("VISIT VARANASI"),
                    Text("VISIT VARANASI")
                  ],
                )
              ],
            )
          ),


          //Bottom Text
          Container(
            height: 200.0,
            width: MediaQuery.of(context).size.width * 0.85,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: <Widget>[
                Expanded(child: Container(margin: EdgeInsets.fromLTRB(20.0, 0.0, 0.0, 20.0), child: Text("VISIT VARANASI"))),
                Container(margin: EdgeInsets.fromLTRB(0.0, 0.0, 20.0, 20.0), child: Text("VISIT VARANASI")),
              ],
            ),
          )
        ]
      ),
    );
  }
}
