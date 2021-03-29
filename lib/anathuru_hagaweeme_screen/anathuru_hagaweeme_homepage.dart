import 'package:flutter/material.dart';
import 'package:riyaduru_pasala/anathuru_hagaweeme_screen/anathuru_hagaweeme_details.dart';
import 'package:riyaduru_pasala/homePage.dart';

List<ImageDetails>_images = [
  ImageDetails(
      imagePath: 'images/an1.png',
      title: 'වම් පැත්තට වංගුව ඉදිරියෙනි',
      details:'Left Bend Ahead'
  ),

  ImageDetails(
      imagePath: 'images/an2.png',
      title: 'දකුණු පැත්තට වංගුව ඉදිරියෙනි',
      details:'Right Bend Ahead'
  ),

  ImageDetails(
      imagePath: 'images/an3.png',
      title: 'වම් පැත්තට ද්විත්ව වංගුව ඉදිරියෙනි',
      details:'Double Bend to Left Ahead'
  ),

  ImageDetails(
      imagePath: 'images/an4.png',
      title: 'දකුණු පැත්තට ද්විත්ව වංගුව ඉදිරියෙනි',
      details:'Double Bend to Right Ahead'
  ),

  ImageDetails(
      imagePath: 'images/an5.png',
      title: 'වම් පැත්තට වැලමිට වංගුව ඉදිරියෙනි',
      details:'Hair Pin Bend to Left Ahead'
  ),

  ImageDetails(
      imagePath: 'images/an6.png',
      title: 'දකුණු පැත්තට වැලමිට වංගුව ඉදිරියෙනි',
      details:'Hair Pin Bend to Right Ahead'
  ),

  ImageDetails(
      imagePath: 'images/an7.png',
      title: 'ද්විත්ව රථ මාර්ගය අවසානය ඉදිරියෙනි',
      details:'Dual Carriage-way Ends'
  ),

  ImageDetails(
      imagePath: 'images/an8.png',
      title: 'ද්විත්ව රථ මාර්ගය ආරම්භය ඉදිරියෙනි',
      details:'Dual Carriage-way Starts Ahead'
  ),

  ImageDetails(
      imagePath: 'images/an9.png',
      title: 'ඉදිරියෙන් මාර්ගය පටුය',
      details:'Road Narrows Ahead'
  ),

  ImageDetails(
      imagePath: 'images/an10.png',
      title: 'මාර්ගයේ වම්පස පටුවීම ඉදිරියෙනි ',
      details:'Road Narrows on the Left Side Ahead'
  ),
  ImageDetails(
      imagePath: 'images/an11.png',
      title: 'මාර්ගයේ දකුණුපස පටුවීම ඉදිරියෙනි',
      details:'Road Narrows on the Right Side Ahead'
  ),
  ImageDetails(
      imagePath: 'images/an12.png',
      title: 'එකිනෙකා හරහා ගමන් කරන මාර්ගය ඉදිරියෙනි',
      details:'Cross Roads Ahead'
  ),
  ImageDetails(
      imagePath: 'images/an13.png',
      title: 'පළමුවැනි පැති මාර්ගය වම් පැත්තට විහිදෙන විසම සන්ධිය ඉදිරියෙනි',
      details:'Staggered Junction Ahead with First Side Road to Left'
  ),
  ImageDetails(
      imagePath: 'images/an14.png',
      title: 'පළමුවැනි පැති මාර්ගය දකුණු පැත්තට විහිදෙන විසම සන්ධිය ඉදිරියෙනි',
      details:'Staggered Junction Ahead with First Side Road to Right'
  ),
  ImageDetails(
      imagePath: 'images/an15.png',
      title: 'Y හැඩයේ මංසන්ධිය ඉදිරියෙනි',
      details:'Y Junction Ahead'
  ),
  ImageDetails(
      imagePath: 'images/an16.png',
      title: 'T හැඩයේ මංසන්ධිය ඉදිරියෙනි',
      details:'T Junction Ahead'
  ),
  ImageDetails(
      imagePath: 'images/an17.png',
      title:'වම් පැත්තෙන් රථවාහන ප්‍රධාන මාර්ගයට එක්වන සන්ධිය ඉදිරියෙනි',
      details:'Traffic From Left Merges Ahead'
  ),
  ImageDetails(
      imagePath: 'images/an18.png',
      title: 'දකුණු පැත්තෙන් රථවාහන ප්‍රධාන මාර්ගයට එක්වන සන්ධිය ඉදිරියෙනි',
      details:'Traffic From Right Merges Ahead'
  ),
  ImageDetails(
      imagePath: 'images/an19.png',
      title: 'වම් පැත්තෙන් රථවාහන ප්‍රධාන මාර්ගයට සෘජුකෝණාකාරව එක්වන සන්ධිය ඉදිරියෙනි',
      details:'Side Road From Left Intersects at Right Angle Ahead'
  ),
  ImageDetails(
      imagePath: 'images/an20.png',
      title: 'දකුණු පැත්තෙන් රථවාහන ප්‍රධාන මාර්ගයට සෘජුකෝණාකාරව එක්වන සන්ධිය ඉදිරියෙනි',
      details:'Side Road From Right Intersects at Right Angle Ahead'
  ),
  ImageDetails(
      imagePath: 'images/an21.png',
      title: 'පටු පාලම ඉදිරියෙනි',
      details:'Narrow Bridge or Culvert Ahead'
  ),
  ImageDetails(
      imagePath: 'images/an22.png',
      title: 'රථවාහන දෙපසට ගමන් කිරීම ඉදිරියෙනි',
      details:'Two-way Traffic Ahead'
  ),
  ImageDetails(
      imagePath: 'images/an23.png',
      title: 'වට රවුම ඉදිරියෙනි',
      details:'Roundabout Ahead'
  ),
  ImageDetails(
      imagePath: 'images/an24.png',
      title: 'රථ වාහන ආලෝක පුවරු ඉදිරියෙනි',
      details:'Light Signals Ahead'
  ),
  ImageDetails(
      imagePath: 'images/an25.png',
      title: 'පහතට අවදානම් බෑවුම ඉදිරියෙනි',
      details:'Dangerous Descent Ahead'
  ),
  ImageDetails(
      imagePath: 'images/an26.png',
      title: 'ඉහළට අවදානම් බෑවුම ඉදිරියෙනි',
      details:'Dangerous Ascent Ahead'
  ),
  ImageDetails(
      imagePath: 'images/an27.png',
      title: 'ලිස්සන සුළු මාර්ගය ඉදිරියෙනි',
      details:'Slippery Road Ahead'
  ),
  ImageDetails(
      imagePath: 'images/an28.png',
      title: 'ගල් පර්වත කැබලි වැටෙන ස්ථානය ඉදිරියෙනි',
      details:'Falling Rocks Ahead'
  ),
  ImageDetails(
      imagePath: 'images/an29.png',
      title: 'පදිකයන් මාරුවන ස්ථානය ඉදිරියෙනි',
      details:'Pedestrian Crossing Ahead'
  ),
  ImageDetails(
      imagePath: 'images/an30.png',
      title: 'ළමයින් මාරුවන ස්ථානය ඉදිරියෙනි',
      details:'Children present/ crossing Ahead'
  ),
  ImageDetails(
      imagePath: 'images/an31.png',
      title: 'මිනිසුන් වැඩෙහි යෙදෙන ස්ථානය ඉදිරියෙනි',
      details:'Road Work Ahead'
  ),
  ImageDetails(
      imagePath: 'images/an32.png',
      title: 'ගේට්ටු සහිත දුම්රිය හරස් මාර්ගය ඉදිරියෙනි',
      details:'Level Crossing with Gates Ahead'
  ),
  ImageDetails(
      imagePath: 'images/an33.png',
      title: 'අනාරක්ෂිත දුම්රිය හරස් මාර්ගය ඉදිරියෙනි',
      details:'Unprotected Level Crossing Ahead'
  ),
  ImageDetails(
      imagePath: 'images/an34.png',
      title: 'පාපැදිකරුවන් මාරුවන ස්ථානය ඉදිරියෙනි',
      details:'Cyclist crossing Ahead'
  ),
  ImageDetails(
      imagePath: 'images/an35.png',
      title: 'ගවයන් හෝ වෙනත් සතුන් මාර්ගය හරහා ගමන් කිරීමට ඉඩ ඇති ස්ථානය ඉදිරියෙනි',
      details:'Cattle Crossing Ahead'
  ),
  ImageDetails(
      imagePath: 'images/an36.png',
      title: 'මාර්ගය හරහා ගැට්ටක් ඉදිරියෙනි',
      details:'Road Hump Ahead'
  ),
  ImageDetails(
      imagePath: 'images/an37.png',
      title: 'වළ ගොඩැලි ඇති මාර්ගය ඉදිරියෙනි',
      details:'Uneven Road Ahead'
  ),
  ImageDetails(
      imagePath: 'images/an38.png',
      title: 'බෑවුම් හෝ සපත්තු පාලම ඉදිරියෙනි',
      details:'Dip or Causeway Ahead'
  ),

  ImageDetails(
      imagePath: 'images/an39.png',
      title: 'ඉදිරියෙන් මාර්ගය ඉඩ දෙනු',
      details:'Give Way Ahead'
  ),
  ImageDetails(
      imagePath: 'images/an40.png',
      title: 'මාර්ගයේ අවධානම් කොටසට ඇති දුර ප්‍රමාණය',
      details:'Distance to a Hazardous section of a road'
  ),
  ImageDetails(
      imagePath: 'images/an41.png',
      title: 'මාර්ගයේ අවධානම් කොටසේ දුර ප්‍රමාණය',
      details:'Length of a Hazardous section of a road'
  ),
  ImageDetails(
      imagePath: 'images/an42.png',
      title: 'පාසල',
      details:'School'
  ),
];





class AnathuruHagaweema extends StatefulWidget {
  @override
  _AnathuruHagaweemaState createState() => _AnathuruHagaweemaState();
}

class _AnathuruHagaweemaState extends State<AnathuruHagaweema> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.yellowAccent,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios_outlined,color: Colors.black,size: 30.0,),
          onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>HomePage()));},
        ),
      ),
      backgroundColor: Colors.yellowAccent,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [

            Text('අනතුරු හැගවීමේ සංඥා',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 22.0,
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
                        Navigator.push(context,MaterialPageRoute(builder: (context)=>Anathuru_hagaweeme_details(
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