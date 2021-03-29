import 'package:flutter/material.dart';
import 'package:riyaduru_pasala/homePage.dart';
import 'package:riyaduru_pasala/padika_screen/padikaDetails.dart';

List<ImageDetails>_images = [
  ImageDetails(
      imagePath: 'images/pa2.png',
      title: 'කොළ පැහැති මිනිසා ආලෝක සංඥාවේ දිස්වූ පසු පදිකයින්ට ගමන් කිරීමටය.',
      details:'Light Signals for pedestrians to proceed after the “Green Man” appears.'
  ),

  ImageDetails(
      imagePath: 'images/pa1.png',
      title: 'කොළ පැහැති මිනිසා ආලෝක සංඥාවේ දිස්වූ පසු පදිකයින්ට ගමන් කිරීමටය.',
      details:'Light Signals for pedestrians to proceed after the “Green Man” appears.'
  ),

  ImageDetails(
      imagePath: 'images/pa3.png',
      title: 'බොත්තම තද කර කොළ පැහැති සංඥාවලැබුණු පසු යාමට හෝ මරුවීමටය',
      details:'To press the button and wait for the change to Green to proceed/cross, the road'
  ),

];





class PadikaHome extends StatefulWidget {
  @override
  _PadikaHomeState createState() => _PadikaHomeState();
}

class _PadikaHomeState extends State<PadikaHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.cyan,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios_outlined,color: Colors.black,size: 30.0,),
          onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>HomePage()));},
        ),
      ),
      backgroundColor: Colors.cyan,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [

            Text('පදිකයින් සඳහා ආලෝක සංඥා',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 22.0,
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
                        Navigator.push(context,MaterialPageRoute(builder: (context)=>PadikaDetails(
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