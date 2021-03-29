import 'package:flutter/material.dart';
import 'package:riyaduru_pasala/anathuru_hagaweeme_screen/anathuru_hagaweeme_details.dart';
import 'package:riyaduru_pasala/homePage.dart';
import 'package:riyaduru_pasala/onroad_screen/onroad_details.dart';

List<ImageDetails>_images = [
  ImageDetails(
      imagePath: 'images/r1.png',
      title: 'මාර්ගය බෙදී යන ස්ථානයක පිහිටුවන නැවතුම් රේඛාව',
      details:'Stop Line at “STOP” signs or at Traffic Signals'
  ),

  ImageDetails(
      imagePath: 'images/r2.png',
      title: 'මාර්ගය ඉඩ දෙනු සලකුණ අසල ඇති "මාර්ගය ඉඩ දෙනු" රේඛාව.',
      details:'“Give Way”” line at “Give Way” signs at Roundabouts'
  ),

  ImageDetails(
      imagePath: 'images/r3.png',
      title: 'කඩ ඉරි මාධ්‍ය රේඛාව සලකුණු කිරීම',
      details:'Broken Centre Line Marking'
  ),

  ImageDetails(
      imagePath: 'images/r4.png',
      title: 'මාර්ග සලකුණු බුබුළු යොදා මාර්ගයේ මාධ්‍ය රේඛාව සලකුණු කිරීම',
      details:'Broken Centre Line Markings incorporating studs or cat eyes'
  ),

  ImageDetails(
      imagePath: 'images/r5.png',
      title: 'සීග්‍රගාමී හා අධිවේගී මාර්ග සඳහා පරාවර්තනය වන බුබුළු යොදා කඩ ඉරි මධ්‍ය රේඛාව සලකුණු කිරීම  ',
      details:'Broken Centre line marking with Reflective studs for high Speed Highways and Expressways'
  ),

  ImageDetails(
      imagePath: 'images/r6.png',
      title: 'දිගතට අඛණ්ඩ මධ්‍ය රේඛාව ',
      details:'Longitudinal Continuous Centre line'
  ),

  ImageDetails(
      imagePath: 'images/r7.png',
      title: 'කඩ ඉරි මධ්‍ය රේඛාව නිරන්තරව අඛණ්ඩ රේඛාව සහ සමාන්තරවීම සමග සංයෝජනය වීම.',
      details:'Combination of a Broken Center Line and a Continuous Line'
  ),

  ImageDetails(
      imagePath: 'images/r8.png',
      title: 'කඩ ඉරි මධ්‍ය රේඛාව සහ කැඩුණු රේඛාව සමග සංයෝජනය වීම.',
      details:'Combination of a Continuous Centre Line and Broken Line'
  ),

  ImageDetails(
      imagePath: 'images/r9.png',
      title: 'දීර්ඝ ද්විත්ව අඛණ්ඩ මධ්‍ය රේඛාව',
      details:'Longitudinal Double Continuous Centre Line'
  ),

  ImageDetails(
      imagePath: 'images/r10.png',
      title: 'මං තීරු ලකුණු',
      details:'Lane Marking'
  ),
  ImageDetails(
      imagePath: 'images/r11.png',
      title: 'ධාවන පථයේ අයින දැක්වීමට පිහිටුවන ආයත රේඛාව',
      details:'Longitudinal Edge Line'
  ),
  ImageDetails(
      imagePath: 'images/r12.png',
      title: 'ප්‍රතිදීප්ත බුබුලු මාර්ගය දිගේ රේඛාව',
      details:'Longitudinal Line with Reflective Studs'
  ),
  ImageDetails(
      imagePath: 'images/r13.png',
      title: 'රථ වාහන ගාල් කිරීම තහනම් කර ඇති බව හෝ සීමා කර ඇති බව දැක්වීමට ධාවන පථයේ අයින දිගේ පිහිටුවන රේඛාව.',
      details:'No Parking Line (yellow line)'
  ),
  ImageDetails(
      imagePath: 'images/r14.png',
      title: 'වාහන නවතා තැබීම තහනම් ද්විත්ව රේඛා ',
      details:'No Parking Double Line (yellow lines)'
  ),
  ImageDetails(
      imagePath: 'images/r15.png',
      title: 'විරුද්ධ පැත්තේ රථ වාහන සේවා තීරු ',
      details:'Hatch line for traffic in opposite direction'
  ),
  ImageDetails(
      imagePath: 'images/r16.png',
      title: 'එකම දිශාවට රථ වාහන සේවා තීරු(ඇතුල් වන)  ',
      details:'Hatch line for traffic in same direction (approaching)'
  ),
  ImageDetails(
      imagePath: 'images/r17.png',
      title:'එකම දිශාවට රථ වාහන සේවා තීරු(පිටවන)',
      details:'Hatch line for traffic in same direction (leaving)'
  ),
  ImageDetails(
      imagePath: 'images/r18.png',
      title: 'අනිවාර්යෙන්ම වමට හැරවීම',
      details:'Compulsory left turn'
  ),
  ImageDetails(
      imagePath: 'images/r19.png',
      title: 'අනිවාර්යෙන්ම දකුණට හැරවීම',
      details:'Compulsory left right'
  ),
  ImageDetails(
      imagePath: 'images/r20.png',
      title: 'අනිවාර්යෙන්ම කෙලින්ම ඉදිරියට',
      details:'Compulsory straight ahead'
  ),
  ImageDetails(
      imagePath: 'images/r21.png',
      title: 'සුදුසු රථ ධාවන තීරයක් වාහන වලට දැන්වීමට යොදා ඇති ලකුණු කිරීම ',
      details:'Traffic Lanes ahead'
  ),

  ImageDetails(
      imagePath: 'images/r22.png',
      title: 'පදික මාරුව ඉදිරියෙනි',
      details:'Pedestrian crossing ahead'
  ),

  ImageDetails(
      imagePath: 'images/r23.png',
      title: 'මාර්ගය ඉඩ දෙනු',
      details:'Give way'
  ),

  ImageDetails(
      imagePath: 'images/r24.png',
      title: 'සෙමෙන් ධාවනය කරන්න',
      details:'SLOW'
  ),

  ImageDetails(
      imagePath: 'images/r25.png',
      title: 'නවතිනු',
      details:'STOP'
  ),

  ImageDetails(
      imagePath: 'images/r26.png',
      title: 'බස්රථ ධාවන තීරුව',
      details:'BUS LANE'
  ),
  ImageDetails(
      imagePath: 'images/r27.png',
      title: 'මංසන්ධි කොටුව',
      details:'Junction Box'
  ),

];





class Roadmark_home extends StatefulWidget {
  @override
  _Roadmark_homeState createState() => _Roadmark_homeState();
}

class _Roadmark_homeState extends State<Roadmark_home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.purpleAccent,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios_outlined,color: Colors.black,size: 30.0,),
          onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>HomePage()));},
        ),
      ),
      backgroundColor: Colors.purpleAccent,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [

            Text('මාර්ගය මත පිහිටුවන සලකුණු',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 22.0,
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
                        Navigator.push(context,MaterialPageRoute(builder: (context)=> Roadmark_details(
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