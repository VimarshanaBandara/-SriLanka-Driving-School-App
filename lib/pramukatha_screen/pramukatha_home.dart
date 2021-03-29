import 'package:flutter/material.dart';
import 'package:riyaduru_pasala/anathuru_hagaweeme_screen/anathuru_hagaweeme_details.dart';
import 'package:riyaduru_pasala/homePage.dart';
import 'package:riyaduru_pasala/pramukatha_screen/pramukatha_details.dart';

List<ImageDetails>_images = [
  ImageDetails(
      imagePath: 'images/pr1.png',
      title: 'නවතිනු',
      details:' Stop to give priority to vehicles on the adjacent road'
  ),

  ImageDetails(
      imagePath: 'images/pr2.png',
      title: 'මාර්ගය ඉඩ දෙනු',
      details:'Give Way to vehicles on the adjacent road'
  ),

  ImageDetails(
      imagePath: 'images/pr3.png',
      title: 'ප්‍රමුඛතා මාර්ගය',
      details:'Priority Road to vehicles on the major road'
  ),

  ImageDetails(
      imagePath: 'images/pr4.png',
      title: 'ප්‍රමුඛතාව අවසන්',
      details:'End of Priority given to vehicles on the major road'
  ),

  ImageDetails(
      imagePath: 'images/pr5.png',
      title: 'ඉදිරියෙන් යන වාහන වලට ප්‍රමුඛතාව දිය යුතුයි',
      details:'Priority for the Oncoming Traffic'
  ),

  ImageDetails(
      imagePath: 'images/pr6.png',
      title: 'ඉදිරියට පැමිණෙන රථ වලට ප්‍රමුඛතාව දිය යුතුයි',
      details:'Priority over Oncoming Traffic Vehicles'
  ),


];





class Pramukatha_home extends StatefulWidget {
  @override
  _Pramukatha_homeState createState() => _Pramukatha_homeState();
}

class _Pramukatha_homeState extends State<Pramukatha_home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.yellow,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios_outlined,color: Colors.black,size: 30.0,),
          onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>HomePage()));},
        ),
      ),
      backgroundColor: Colors.yellow,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [

            Text('ප්‍රමුඛතා සංඥා', textAlign: TextAlign.center,style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 22.0,
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
            )),

            SizedBox(height: 40.0),
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
                        Navigator.push(context,MaterialPageRoute(builder: (context)=>Pramukatha_details(
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