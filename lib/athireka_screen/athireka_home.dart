import 'package:flutter/material.dart';
import 'package:riyaduru_pasala/anathuru_hagaweeme_screen/anathuru_hagaweeme_details.dart';
import 'package:riyaduru_pasala/athireka_screen/athireka_details.dart';
import 'package:riyaduru_pasala/homePage.dart';
import 'package:riyaduru_pasala/police_screen/police_details.dart';

List<ImageDetails>_images = [
  ImageDetails(
      imagePath: 'images/ni1.png',
      title: 'නියමයට ඇති දුර',
      details:'Distance to a Regulation'
  ),

  ImageDetails(
      imagePath: 'images/ni2.png',
      title: 'නියමය සහිත සැලකුණේ දිග ප්‍රමාණය',
      details:'Length of a Regulation sign'
  ),

  ImageDetails(
      imagePath: 'images/ni3.png',
      title: 'වාහන නවතා තැබීමේ සහ නැවැත්වීමේ නියමය ආරම්භය',
      details:'Start of Regulation for Parking and Standing Prohibition'
  ),

  ImageDetails(
      imagePath: 'images/ni4.png',
      title: 'වාහන නවතා තැබීමේ සහ නැවැත්වීමේ තහනම් නියමයේ දිශාව',
      details:'Direction of Regulation for Parking and Standing Prohibition'
  ),

  ImageDetails(
      imagePath: 'images/ni5.png',
      title: 'වාහන නවතා තැබීමේ සහ නැවැත්වීමේ තහනම් නියමය අවසානය',
      details:'End of Regulation for Parking andStanding Prohibition '
  ),
  ImageDetails(
      imagePath: 'images/ni6.png',
      title: 'වාහන නවතා තැබීමේ සහ නැවැත්වීමේ තහනම් කෙරෙන කාලසීමාව සහ දිශාව.',
      details:'Time Limitation of Parking Prohibition or Parking and Standing Prohibition and direction of the prohibition'
  ),



];





class Athireka_home extends StatefulWidget {
  @override
  _Athireka_homeState createState() => _Athireka_homeState();
}

class _Athireka_homeState extends State<Athireka_home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.tealAccent,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios_outlined,color: Colors.black,size: 30.0,),
          onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>HomePage()));},
        ),
      ),
      backgroundColor: Colors.tealAccent,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [

            Text('නියාමන සලකුණු',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 22.0,
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
                        Navigator.push(context,MaterialPageRoute(builder: (context)=>Athireka_details(
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