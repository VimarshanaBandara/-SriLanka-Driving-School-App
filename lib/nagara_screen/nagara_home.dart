import 'package:flutter/material.dart';
import 'package:riyaduru_pasala/homePage.dart';
import 'package:riyaduru_pasala/nagara_screen/nagara_details.dart';

List<ImageDetails>_images = [
  ImageDetails(
      imagePath: 'images/ds1.png',
      title: 'ජාතික මාර්ග මංසන්ධියකට ලඟාවීමට පෙර දිශාවන් පෙන්වන පුවරුව',
      details:'Direction sign before reaching a national highway'
  ),

  ImageDetails(
      imagePath: 'images/ds2.png',
      title: 'ජාතික මාර්ග මංසන්ධියකට ලඟාවීමට පෙර දිශාවන් පෙන්වන පුවරුව',
      details:'Direction sign before reaching a national highway'
  ),

  ImageDetails(
      imagePath: 'images/ds3.png',
      title: 'ජාතික මාර්ග මංසන්ධියකට ලඟාවීමට පෙර දිශාවන් පෙන්වන මාර්ගයට ඉහලින් සවිකර ඇති පුවරුව',
      details:'Sign above the road showing directions before reaching a national highway junction'
  ),

  ImageDetails(
      imagePath: 'images/ds4.png',
      title: 'මාර්ගයට ඉහලින් සවිකර ඇති දිශාවන් පෙන්වන පුවරුව',
      details:'Direction panel mounted above the road'
  ),

  ImageDetails(
      imagePath: 'images/ds5.png',
      title: 'මාර්ගයට ඉහලින් සවිකර ඇති නියමිත මංතීරු පෙන්වන පුවරුව',
      details:'Dedicated lane sign above the road'
  ),

  ImageDetails(
      imagePath: 'images/ds6.png',
      title: 'පරිපාලන ප්‍රදේශයක ආරම්භය',
      details:'Initiation of an administrative area'
  ),


];





class NagaraHome extends StatefulWidget {
  @override
  _NagaraHomeState createState() => _NagaraHomeState();
}

class _NagaraHomeState extends State<NagaraHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.lightGreenAccent,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios_outlined,color: Colors.black,size: 30.0,),
          onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>HomePage()));},
        ),
      ),
      backgroundColor: Colors.lightGreenAccent,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [

            Text('දිශා තොරතුරු සංඥා',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 22.0,
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
                        Navigator.push(context,MaterialPageRoute(builder: (context)=>Nagara_details(
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