import 'package:flutter/material.dart';
import 'package:riyaduru_pasala/anathuru_hagaweeme_screen/anathuru_hagaweeme_details.dart';
import 'package:riyaduru_pasala/anekuthsalakunu_Screen/anekuth_details.dart';
import 'package:riyaduru_pasala/homePage.dart';

List<ImageDetails>_images = [
  ImageDetails(
      imagePath: 'images/ak1.png',
      title: 'පදිකයන් මාරු වන ස්ථානය',
      details:'Pedestrian Crossing'
  ),

  ImageDetails(
      imagePath: 'images/ak2.png',
      title: 'රෝහල',
      details:'Hospital'
  ),

  ImageDetails(
      imagePath: 'images/ak3.png',
      title: 'වාහන නවත්වන ස්ථානය',
      details:'Parking'
  ),

  ImageDetails(
      imagePath: 'images/ak4.png',
      title: 'අබාධිතයින් සඳහා නැවතුම',
      details:'Parking for Handicapped Persons'
  ),

  ImageDetails(
      imagePath: 'images/ak5.png',
      title: 'බස් රථ නැවතුම',
      details:'Bus Stop'
  ),

  ImageDetails(
      imagePath: 'images/ak6.png',
      title: 'තනි අතට ගමන් කරන මාර්ගය',
      details:'One Way Traffic flow'
  ),

  ImageDetails(
      imagePath: 'images/ak7.png',
      title: 'බස්රථ සඳහා පමණක් ඇති ධාවන තීරුව ආරම්භය හෝ ඉදිරියට පැතිරීම',
      details:'Bus only Lane Begins or Continues'
  ),

  ImageDetails(
      imagePath: 'images/ak8.png',
      title: 'බස්රථ සඳහා පමණක් ඇති ධාවන තීරුව අවසානය',
      details:'Bus only Lane Begins or Continues'
  ),
  ImageDetails(
      imagePath: 'images/ak9.png',
      title: 'පාපැදි සඳහා පමණක් ඇති ධාවන තීරුව ආරම්භය හෝ ඉදිරියට පැතිරීම',
      details:'Cycle only Lane Begins or Continues'
  ),
  ImageDetails(
      imagePath: 'images/ak10.png',
      title: 'පාපැදි සඳහා පමණක් ඇති ධාවන තීරුව අවසානය',
      details:'Cycle only Lane Ends'
  ),
  ImageDetails(
      imagePath: 'images/ak11.png',
      title: 'පදික උමං මඟ',
      details:'Pedestrian Underpass'
  ),
  ImageDetails(
      imagePath: 'images/ak12.png',
      title: 'පදික පාලම',
      details:'Pedestrian Overpass'
  ),
  ImageDetails(
      imagePath: 'images/ak13.png',
      title: 'මහජන දුරකථන ඇති ස්ථානය',
      details:'Location of a Public Telephone'
  ),

  ImageDetails(
      imagePath: 'images/ak14.png',
      title: 'තොරතුරු මධ්‍යස්ථානය',
      details:'Information Centre'
  ),

  ImageDetails(
      imagePath: 'images/ak15.png',
      title: 'ආපන ශාලාව',
      details:'Restaurant'
  ),


];





class Anekuth_home extends StatefulWidget {
  @override
  _Anekuth_homeState createState() => _Anekuth_homeState();
}

class _Anekuth_homeState extends State<Anekuth_home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.blue,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios_outlined,color: Colors.black,size: 30.0,),
          onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>HomePage()));},
        ),
      ),
      backgroundColor: Colors.blue,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [

            Text('අනෙකුත් සංඥා',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 22.0,
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
                        Navigator.push(context,MaterialPageRoute(builder: (context)=>Anekuth_details(
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