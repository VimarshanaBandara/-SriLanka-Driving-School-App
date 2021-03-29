import 'package:flutter/material.dart';
import 'package:riyaduru_pasala/anathuru_hagaweeme_screen/anathuru_hagaweeme_details.dart';
import 'package:riyaduru_pasala/homePage.dart';
import 'package:riyaduru_pasala/police_screen/police_details.dart';

List<ImageDetails>_images = [
  ImageDetails(
      imagePath: 'images/p1.png',
      title: 'නවතිනු',
      details:'Traffic approaching from the front to STOP'
  ),

  ImageDetails(
      imagePath: 'images/p2.png',
      title: 'ඉදිරියට එන්න',
      details:'Come forward'
  ),

  ImageDetails(
      imagePath: 'images/p3.png',
      title: 'ඉදිරියෙන් හා පිටුපසින් එන වාහන නතර වෙනු',
      details:'Traffic approaching both from front and behind to STOP'
  ),

  ImageDetails(
      imagePath: 'images/p4.png',
      title: 'පිටුපසින් එන වාහන නතර වෙනු',
      details:'Stop the vehicles coming from behind'
  ),

  ImageDetails(
      imagePath: 'images/p5.png',
      title: 'ඉදිරියට එන්න',
      details:'Come forward'
  ),


];





class Police_home extends StatefulWidget {
  @override
  _Police_homeState createState() => _Police_homeState();
}

class _Police_homeState extends State<Police_home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.green,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios_outlined,color: Colors.black,size: 30.0,),
          onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>HomePage()));},
        ),
      ),
      backgroundColor: Colors.green,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [

            Text('පොලිස් හස්ත සංඥා',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 22.0,
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
                        Navigator.push(context,MaterialPageRoute(builder: (context)=>Police_details(
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