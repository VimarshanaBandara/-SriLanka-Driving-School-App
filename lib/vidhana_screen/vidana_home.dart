import 'package:flutter/material.dart';
import 'package:riyaduru_pasala/anathuru_hagaweeme_screen/anathuru_hagaweeme_details.dart';
import 'package:riyaduru_pasala/homePage.dart';
import 'package:riyaduru_pasala/vidhana_screen/vidhana_details.dart';

List<ImageDetails>_images = [
  ImageDetails(
      imagePath: 'images/vi1.png',
      title: 'වම් පැත්තට හැරවිය යුතුයි',
      details:'Turn Left'
  ),
  ImageDetails(
      imagePath: 'images/vi2.png',
      title: 'දකුණු පැත්තට හැරවිය යුතුයි',
      details:'Turn Right'
  ),
  ImageDetails(
      imagePath: 'images/vi3.png',
      title: 'කෙලින්ම ඉදිරියට ගමන් කළ යුතුයි',
      details:'Straight Ahead'
  ),
  ImageDetails(
      imagePath: 'images/vi4.png',
      title: 'ඉදිරියෙන් වම් පැත්තට හැරවිය යුතුයි',
      details:'Turn Left Ahead'
  ),
  ImageDetails(
      imagePath: 'images/vi5.png',
      title: 'ඉදිරියෙන් දකුණු පැත්තට හැරවිය යුතුයි',
      details:'Turn Right Ahead'
  ),
  ImageDetails(
      imagePath: 'images/vi6.png',
      title: 'වම් පැත්තෙන් පසු කරන්න',
      details:'Pass Left Side'
  ),

  ImageDetails(
      imagePath: 'images/vi7.png',
      title: 'දකුණු පැත්තෙන් පසු කරන්න',
      details:'Pass Right Side'
  ),

  ImageDetails(
      imagePath: 'images/vi8.png',
      title: 'අවශ්‍ය පැත්තෙන් පසු කරන්න',
      details:'Pass either side'
  ),

  ImageDetails(
      imagePath: 'images/vi9.png',
      title: 'අනිවාර්ය වටරවුම',
      details:'Compulsory Roundabout'
  ),


];





class Vidhana_home extends StatefulWidget {
  @override
  _Vidhana_homeState createState() => _Vidhana_homeState();
}

class _Vidhana_homeState extends State<Vidhana_home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.pink,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios_outlined,color: Colors.black,size: 30.0,),
          onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>HomePage()));},
        ),
      ),
      backgroundColor: Colors.pink,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [

            Text('විධාන සංඥා',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 22.0,
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
                        Navigator.push(context,MaterialPageRoute(builder: (context)=>Vidhana_details(
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