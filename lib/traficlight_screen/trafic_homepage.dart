import 'package:flutter/material.dart';
import 'package:riyaduru_pasala/anathuru_hagaweeme_screen/anathuru_hagaweeme_details.dart';
import 'package:riyaduru_pasala/homePage.dart';
import 'package:riyaduru_pasala/traficlight_screen/trafic_details.dart';

List<ImageDetails>_images = [
  ImageDetails(
      imagePath: 'images/tr1.png',
      title: 'නතර කරනු',
      details:'Stop'
  ),

  ImageDetails(
      imagePath: 'images/tr2.png',
      title: 'නතර කරනු.කොල පාට දැල්වෙනතුරු ඉදිරියට නොයන්න',
      details:'STOP/Do not proceed until Green light appears'
  ),

  ImageDetails(
      imagePath: 'images/tr3.png',
      title: 'සෘජුවම ඉදිරියට යා යුතු හෝ වමට හෝ දකුණට ආරක්ෂා සහිතව ධාවනය කළ හැක',
      details:'Can go straight ahead or drive safely left or right'
  ),

  ImageDetails(
      imagePath: 'images/tr4.png',
      title: 'නතර කරනු',
      details:'Stop'
  ),

  ImageDetails(
      imagePath: 'images/tr5.png',
      title: 'වාහනයේ වේගය අඩුකර සැලකිලිමත්ව ධාවනය කරන්න',
      details:'Slow down and drive carefully'
  ),

  ImageDetails(
      imagePath: 'images/tr6.png',
      title: 'දක්වා ඇති දිශාව අනුව වාහනය ධාවනය කරන්න',
      details:'Traffic shall follow in the direction of the arrows.'
  ),




];





class TraficLight_Home extends StatefulWidget {
  @override
  _TraficLight_HomeState createState() => _TraficLight_HomeState();
}

class _TraficLight_HomeState extends State<TraficLight_Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.deepOrange,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios_outlined,color: Colors.black,size: 30.0,),
          onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>HomePage()));},
        ),
      ),
      backgroundColor: Colors.deepOrange,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [

            Text('රථ වාහන ආලෝක සංඥා',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 22.0,
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
                        Navigator.push(context,MaterialPageRoute(builder: (context)=>TraficLight_details(
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