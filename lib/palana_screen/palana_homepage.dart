import 'package:flutter/material.dart';
import 'package:riyaduru_pasala/homePage.dart';
import 'package:riyaduru_pasala/palana_screen/palana_details.dart';

List<ImageDetails>_images = [
  ImageDetails(
      imagePath: 'images/pl1.png',
      title: 'ඇතුල්වීම තහනම්',
      details:'No Entry'
  ),
  ImageDetails(
      imagePath: 'images/pl2.png',
      title: 'වම් පැත්තට හැරවීම තහනම්',
      details:'No Left Turn'
  ),
  ImageDetails(
      imagePath: 'images/pl3.png',
      title: 'දකුණු පැත්තට හැරවීම තහනම්',
      details:'No Right Turn'
  ),
  ImageDetails(
      imagePath: 'images/pl4.png',
      title: 'U හැඩයට සිටින සේ හැරවීම තහනම්',
      details:'No U-turn',
  ),
  ImageDetails(
      imagePath: 'images/pl5.png',
      title: 'වාහන ඉස්සර කිරීම තහනම්',
      details:'No Overtaking'
  ),
  ImageDetails(
      imagePath: 'images/pl6.png',
      title: 'නළා ශබ්ද කිරීම තහනම්',
      details:'No Horning',
  ),
  ImageDetails(
      imagePath: 'images/pl7.png',
      title: 'සියලුම වාහන සඳහා මාර්ගය වසා ඇත',
      details:'Road Closed for all vehicles'
  ),
  ImageDetails(
      imagePath: 'images/pl8.png',
      title: 'මෝටර් රථ සඳහා මාර්ගය වසා ඇත',
      details:'Road closed for Motor vehicles'
  ),
  ImageDetails(
      imagePath: 'images/pl9.png',
      title: 'බස් රථ සඳහා මාර්ගය වසා ඇත.',
      details:'Road Closed for Buses'
  ),
  ImageDetails(
      imagePath: 'images/pl10.png',
      title: 'ලොරි සඳහා මාර්ගය වසා ඇත',
      details:'Road Closed for Lorries'
  ),
  ImageDetails(
      imagePath: 'images/pl11.png',
      title: 'යතුරුපැදි සඳහා මාර්ගය වසා ඇත.',
      details:'Road Closed for Motorcycles'
  ),
  ImageDetails(
      imagePath: 'images/pl12.png',
      title: 'පාපැදි සඳහා මාර්ගය වසා ඇත',
      details:'Road Closed for Cycles'
  ),
  ImageDetails(
      imagePath: 'images/pl13.png',
      title: 'පදිකයින් සඳහා මාර්ගය වසා ඇත',
      details:'Road Closed for Pedestrians'
  ),
  ImageDetails(
      imagePath: 'images/pl14.png',
      title: 'රථවාහන නැවත්වීම තහනම්',
      details:'No Parking'
  ),
  ImageDetails(
      imagePath: 'images/pl15.png',
      title: 'රථවාහන නැවත්වීම හා පැටවීම තහනම්',
      details:' No Parking and Standing'
  ),
  ImageDetails(
      imagePath: 'images/pl16.png',
      title: 'ඔත්තේ දිනවල වාහන නැවත්වීම තහනම්',
      details:'No Parking on Odd days'
  ),
  ImageDetails(
      imagePath: 'images/pl17.png',
      title: 'ඉරට්ටේ දිනවල වාහන නැවත්වීම තහනම්',
      details:'No Parking on Even day'
  ),



];






class Palana extends StatefulWidget {
  @override
  _PalanaState createState() => _PalanaState();
}

class _PalanaState extends State<Palana> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.redAccent,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios_outlined,color: Colors.black,size: 30.0,),
          onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>HomePage()));},
        ),

      ),
      backgroundColor: Colors.redAccent,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text('පාලන සංඥා',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 22.0,

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
                        Navigator.push(context,MaterialPageRoute(builder: (context)=>Palana_details(
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