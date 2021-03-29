import 'package:flutter/material.dart';
import 'package:riyaduru_pasala/anathuru_hagaweeme_screen/anathuru_hagaweeme_details.dart';
import 'package:riyaduru_pasala/homePage.dart';
import 'package:riyaduru_pasala/vividha_screen/vividha_details.dart';

List<ImageDetails>_images = [
  ImageDetails(
      imagePath: 'images/w1.png',
      title: 'මාර්ග අලුත්වැඩියා කිරීමේ බාධක පුවරුව',
      details:'Barricade Board for road works'
  ),

  ImageDetails(
      imagePath: 'images/w2.png',
      title: 'මාර්ග අලුත්වැඩියා කිරීමේ බාධක පුවරුව හා ගමන් කළයුතු දිශාව',
      details:'Road repair barrier and direction of travel'
  ),

  ImageDetails(
      imagePath: 'images/w3.png',
      title: 'පැති අවහිරය සලකුණ',
      details:'Side Obstacle Markers'
  ),

  ImageDetails(
      imagePath: 'images/w4.png',
      title: 'ස්ථීර භාවිතය සඳහා දිශා පෙන්නුම් පුවරුව',
      details:'Direction Board for permanent use'
  ),

  ImageDetails(
      imagePath: 'images/w5.png',
      title: 'වංගුවක දිශාව දක්වන පුවරුව',
      details:'Bend direction board'
  ),

  ImageDetails(
      imagePath: 'images/w6.png',
      title: 'තාවකාලික බාධකයක් නිසා මාර්ගය මත තබන කේතුව',
      details:'Traffic Cone'
  ),

  ImageDetails(
      imagePath: 'images/w7.png',
      title: 'රථවාහන නවතා තැබීම තහනම් බව දක්ක්වන කේතුව',
      details:'Traffic Cone for No Parking'
  ),

  ImageDetails(
      imagePath: 'images/w8.png',
      title: 'අක්‍රීය වාහන සලකුණු',
      details:'Disabled Vehicle Sign'
  ),


];





class VividhaHome extends StatefulWidget {
  @override
  _VividhaHomeState createState() => _VividhaHomeState();
}

class _VividhaHomeState extends State<VividhaHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.limeAccent,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios_outlined,color: Colors.black,size: 30.0,),
          onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>HomePage()));},
        ),
      ),
      backgroundColor: Colors.limeAccent,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [

            Text('විවිධ සලකුණු',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 22.0,
              shadows: <Shadow>[
                Shadow(
                  offset: Offset(2.0, 2.0),
                  blurRadius: 3.0,
                  color: Colors.black87,
                ),
                Shadow(
                  offset: Offset(2.0, 2.0),
                  blurRadius: 8.0,
                  color: Colors.black87,
                ),
              ],
            ),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 25.0),
            Expanded(
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 20.0 , vertical: 30.0),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30.0),
                      topRight: Radius.circular(30.0),
                    )
                ),
                child: GridView.builder(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10,
                  ),
                  itemBuilder: (context , index){
                    return RawMaterialButton(
                      onPressed: (){
                        Navigator.push(context,MaterialPageRoute(builder: (context)=>VividhaDetails(
                          imagePath: _images[index].imagePath,
                          title: _images[index].title,
                          details: _images[index].details,
                          index: index,
                        )));



                      },
                      child: Hero(
                        tag: 'logo$index',
                        child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15.0),
                              image: DecorationImage(
                                  image: AssetImage(_images[index].imagePath),
                                  fit: BoxFit.cover
                              )
                          ),
                        ),
                      ),
                    );
                  },
                  itemCount: _images.length,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ImageDetails {
  final String imagePath;
  final String title;
  final String details;
  ImageDetails({
    @required this.imagePath,
    @required this.title,
    @required this.details,
  });
}