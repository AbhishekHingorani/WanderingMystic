import 'package:flutter/material.dart';
import '../../data_models/models/package_item_schema.dart';
import 'package:scoped_model/scoped_model.dart';

import './image_gallery.dart';

class SinglePackageDetails extends StatelessWidget {

  PackageItemSchema package;

  SinglePackageDetails(this.package){
    print("object");
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NestedScrollView(
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
          return <Widget>[
            SliverAppBar(
              expandedHeight: MediaQuery.of(context).size.height * 0.3,
              forceElevated: true,

              floating: false,
              pinned: true,
              backgroundColor: Color.fromRGBO(235, 139, 123, 1.0), //Background Color of AppBar when
              flexibleSpace: FlexibleSpaceBar(
                background: Stack(
                  fit: StackFit.expand,
                  children: <Widget>[ 

                    Image.network(
                      package.imageUrl,
                      fit: BoxFit.cover,
                    ),

                    Opacity(
                      opacity: 0.3,
                      child: Container(
                        decoration: BoxDecoration(
                          gradient: new LinearGradient(
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                            colors: [
                              Color.fromRGBO(255, 140, 90, 1.0),
                              Color.fromRGBO(253, 139, 123, 1.0)
                            ],
                          ),
                        )
                      )
                    ),


                  ]
                )
              ),
            ),
          ];
        },
        body: ListView(
          padding: EdgeInsets.only(left: 20.0, right: 20.0),
          children: <Widget>[
            
            Padding(
              padding: EdgeInsets.only(top: 30.0, bottom: 10.0),
              child: Text(package.title,
                style: TextStyle(
                  fontSize: 25.0, color: Colors.black, fontFamily: "SFProBold"
                ),
              ),
            ),

            Text(
              "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. ",
              style: TextStyle(
                fontFamily: "SFPro",
                fontSize: 15.0,
                height: 1.1
              ),
            ),

            Padding(
              padding: EdgeInsets.only(top: 25.0, bottom: 5.0),
              child: Text(package.nights + " NIGHTS " + package.days + " DAYS",
                style: TextStyle(
                  fontSize: 15.0, fontFamily: "SFPro"
                ),
              ),
            ),

            Text("INR " + package.price,
              style: TextStyle(
                fontSize: 18.0, fontFamily: "SFPro"
              ),
            ),

            Padding(
              padding: EdgeInsets.only(top: 25.0, bottom: 5.0),
              child: Text("PHOTOS",
                style: TextStyle(
                  fontSize: 12.0, fontFamily: "SFProBold"
                ),
              ),
            ),

            Container(
              height: 160.0,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  physics: const ClampingScrollPhysics(),
                  itemCount: 4,
                  // itemExtent: 10.0,
                  // reverse: true, //makes the list appear in descending order
                  itemBuilder: (BuildContext context, int index) {
                    return _buildImages(index, context);
                  }
              )
            ),


            Padding(
              padding: EdgeInsets.only(top: 25.0, bottom: 10.0),
              child: Text("ITINERARY",
                style: TextStyle(
                  fontSize: 12.0, fontFamily: "SFProBold"
                ),
              ),
            ),


            Text(
              "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. ",
              style: TextStyle(
                fontFamily: "SFPro",
                fontSize: 15.0,
                height: 1.1
              ),
            ),

            Padding(
              padding: EdgeInsets.only(top: 25.0, bottom: 10.0),
              child: Text("ACCOMODATION",
                style: TextStyle(
                  fontSize: 12.0, fontFamily: "SFProBold"
                ),
              ),
            ),


            Text(
              "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. ",
              style: TextStyle(
                fontFamily: "SFPro",
                fontSize: 15.0,
                height: 1.1
              ),
            ),

          ],
        )
      ),
    );
  }

  Widget _buildImages(int index, BuildContext context) {
    return new Container(
    // color: Colors.blue,
      padding: const EdgeInsets.fromLTRB(0.0, 10.0, 15.0, 10.0),
      child: new Row(
        children: [
          GestureDetector(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(
                builder: (BuildContext context) => ImageGallery(
                  backgroundColor: Colors.black87,
                  image1: AssetImage("assets/images/varanasi.jpg"),
                  image2: AssetImage("assets/images/varanasi.jpg"),
                  image3: AssetImage("assets/images/varanasi.jpg"),
                  image4: AssetImage("assets/images/varanasi.jpg"),
                  index: index,
                )
              ));
            },
            child: new Row(children: [
              //new Image.asset("assets/images/varanasi.jpg"),
              Stack(
                children: <Widget>[
                  Container(
                    width: 130.0,
                    decoration: BoxDecoration(  
                      borderRadius: BorderRadius.circular(12.0),
                      image: DecorationImage(
                        fit: BoxFit.fill,
                        image: AssetImage("assets/images/varanasi.jpg"),
                        //image: AssetImage("assets/images/varanasi.jpg"),
                      ),
                    ),
                  ),

                  Opacity(
                    opacity: 0.3,
                    child: Container(
                      width: 130.0,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12.0),
                        gradient: new LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [
                            Color.fromRGBO(255, 140, 90, 1.0),
                            Color.fromRGBO(64, 46, 50, 1.0)
                          ],
                        ),
                      )
                    )
                  ),
                ],
              ),
            ]),
          )
        ],
      ),
    );
  }

}