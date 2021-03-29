import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:riyaduru_pasala/about_screen.dart';
import 'package:riyaduru_pasala/anathuru_hagaweeme_screen/anathuru_hagaweeme_homepage.dart';
import 'package:riyaduru_pasala/anekuthsalakunu_Screen/anekuth_home.dart';
import 'package:riyaduru_pasala/athireka_screen/athireka_home.dart';
import 'package:riyaduru_pasala/nagara_screen/nagara_home.dart';
import 'package:riyaduru_pasala/onroad_screen/onroad_home.dart';
import 'package:riyaduru_pasala/padika_screen/padikaHome.dart';
import 'package:riyaduru_pasala/palana_screen/palana_homepage.dart';
import 'package:riyaduru_pasala/police_screen/police_home.dart';
import 'package:riyaduru_pasala/pramukatha_screen/pramukatha_home.dart';
import 'package:riyaduru_pasala/privacy_page.dart';
import 'package:riyaduru_pasala/simakari_screen/simakari_homepage.dart';
import 'package:riyaduru_pasala/traficlight_screen/trafic_homepage.dart';
import 'package:riyaduru_pasala/vidhana_screen/vidana_home.dart';
import 'package:riyaduru_pasala/vividha_screen/vividha_home.dart';
class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white70,
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('රියදුරු ',style: TextStyle(color:Colors.white,fontSize: 20.0,fontWeight: FontWeight.bold, shadows: <Shadow>[
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
            ],),),
            Text('පෙරහුරුව',style: TextStyle(color:Colors.white,fontSize: 20.0,fontWeight: FontWeight.bold, shadows: <Shadow>[
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
            ],),)
          ],
        ),
        backgroundColor: Colors.cyan,
        centerTitle: true,

      ),
      body: SafeArea(
        child: SingleChildScrollView(


              child:Column(
                children: [
                  SizedBox(height: 15.0,),
              Padding(
              padding: EdgeInsets.symmetric(
              vertical: 0.0, horizontal: 20.0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),


                child: Container(
                  height:100,
                  decoration: BoxDecoration(
                    color: Colors.yellowAccent,

                  ),

                  child: Row(
                    children: <Widget>[
                      SizedBox(width: 20.0,),
                      Container(


                        width: 70,
                        height: 70,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          color: Colors.white,
                          image: DecorationImage(
                            image: AssetImage('images/an1.png'),
                            fit: BoxFit.cover
                          )
                        ),
                      ),
                      SizedBox(width: 10),
                      Expanded(

                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment:
                          CrossAxisAlignment.start,
                          children: <Widget>[
                            Text('අනතුරු හැඟවීමේ සංඥා',style: TextStyle(color: Colors.black,fontSize: 19.0,fontWeight: FontWeight.bold),),
                            Text('Danger Warning Signs',
                                style: TextStyle(color: Colors.white,fontSize: 20.0,fontWeight: FontWeight.bold
                                ,shadows: <Shadow>[
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
                                ))
                          ],
                        ),
                      ),
                      IconButton(
                        icon: Icon(Icons.arrow_forward_ios),
                        onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>AnathuruHagaweema()));
                        },

                      )
                    ],
                  ),
                ),
              ),
            ),
                  SizedBox(height: 15.0,),
                  Padding(
                    padding: EdgeInsets.symmetric(
                        vertical: 0.0, horizontal: 20.0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20),


                      child: Container(
                        height: 100,
                        decoration: BoxDecoration(
                          color: Colors.redAccent,

                        ),

                        child: Row(
                          children: <Widget>[
                            SizedBox(width: 20.0,),
                            Container(


                              width: 70,
                              height: 70,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10.0),
                                  color: Colors.white,
                                  image: DecorationImage(
                                      image: AssetImage('images/pl1.png'),
                                      fit: BoxFit.cover
                                  )
                              ),
                            ),
                            SizedBox(width: 10),
                            Expanded(

                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment:
                                CrossAxisAlignment.start,
                                children: <Widget>[
                                  Text('පාලන සංඥා',style: TextStyle(color: Colors.black,fontSize: 19.0,fontWeight: FontWeight.bold),),
                                  Text('Prohibitory Signs',
                                      style: TextStyle(color: Colors.white,fontSize: 20.0,fontWeight: FontWeight.bold
                                      ,shadows: <Shadow>[
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
                                      ))
                                ],
                              ),
                            ),
                            IconButton(
                              icon: Icon(Icons.arrow_forward_ios),
                              onPressed: (){
                                Navigator.push(context, MaterialPageRoute(builder: (context)=>Palana()));
                              },

                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 15.0,),
                  Padding(
                    padding: EdgeInsets.symmetric(
                        vertical: 0.0, horizontal: 20.0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20),


                      child: Container(
                        height: 100,
                        decoration: BoxDecoration(
                          color: Colors.yellow,

                        ),

                        child: Row(
                          children: <Widget>[
                            SizedBox(width: 20.0,),
                            Container(


                              width: 70,
                              height: 70,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10.0),
                                  color: Colors.white,
                                  image: DecorationImage(
                                      image: AssetImage('images/pr4.png'),
                                      fit: BoxFit.cover
                                  )
                              ),
                            ),
                            SizedBox(width: 10),
                            Expanded(

                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment:
                                CrossAxisAlignment.start,
                                children: <Widget>[
                                  Text('ප්‍රමුඛතා සංඥා',style: TextStyle(color: Colors.black,fontSize: 19.0,fontWeight: FontWeight.bold),),
                                  Text('Priority signals',
                                      style: TextStyle(color: Colors.white,fontSize: 20.0,fontWeight: FontWeight.bold
                                      ,shadows: <Shadow>[
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
                                      ))
                                ],
                              ),
                            ),
                            IconButton(
                              icon: Icon(Icons.arrow_forward_ios),
                              onPressed: (){
                                Navigator.push(context, MaterialPageRoute(builder: (context)=>Pramukatha_home()));
                              },

                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 15.0,),
                  Padding(
                    padding: EdgeInsets.symmetric(
                        vertical: 0.0, horizontal: 20.0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20),


                      child: Container(
                        height: 100,
                        decoration: BoxDecoration(
                          color: Colors.pink,

                        ),

                        child: Row(
                          children: <Widget>[
                            SizedBox(width: 20.0,),
                            Container(


                              width: 70,
                              height: 70,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10.0),
                                  color: Colors.white,
                                  image: DecorationImage(
                                      image: AssetImage('images/vi1.png'),
                                      fit: BoxFit.cover
                                  )
                              ),
                            ),
                            SizedBox(width: 10),
                            Expanded(

                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment:
                                CrossAxisAlignment.start,
                                children: <Widget>[
                                  Text('විධාන සංඥා',style: TextStyle(color: Colors.black,fontSize: 19.0,fontWeight: FontWeight.bold),),
                                  Text('Mandatory Signs',
                                      style: TextStyle(color: Colors.white,fontSize: 20.0,fontWeight: FontWeight.bold
                                      ,shadows: <Shadow>[
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
                                      ))
                                ],
                              ),
                            ),
                            IconButton(
                              icon: Icon(Icons.arrow_forward_ios),
                              onPressed: (){
                                Navigator.push(context, MaterialPageRoute(builder: (context)=>Vidhana_home()));
                              },

                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 15.0,),
                  Padding(
                    padding: EdgeInsets.symmetric(
                        vertical: 0.0, horizontal: 20.0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20),


                      child: Container(
                        height: 100,
                        decoration: BoxDecoration(
                          color: Colors.blue,

                        ),

                        child: Row(
                          children: <Widget>[
                            SizedBox(width: 20.0,),
                            Container(


                              width: 70,
                              height: 70,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10.0),
                                  color: Colors.white,
                                  image: DecorationImage(
                                      image: AssetImage('images/ak5.png'),
                                      fit: BoxFit.cover
                                  )
                              ),
                            ),
                            SizedBox(width: 10),
                            Expanded(

                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment:
                                CrossAxisAlignment.start,
                                children: <Widget>[
                                  Text('අනෙකුත් සංඥා',style: TextStyle(color: Colors.black,fontSize: 19.0,fontWeight: FontWeight.bold),),
                                  Text('Other Signs Useful For Drivers',
                                      style: TextStyle(color: Colors.white,fontSize: 20.0,fontWeight: FontWeight.bold
                                      ,shadows: <Shadow>[
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
                                      ))
                                ],
                              ),
                            ),
                            IconButton(
                              icon: Icon(Icons.arrow_forward_ios),
                              onPressed: (){
                                Navigator.push(context, MaterialPageRoute(builder: (context)=>Anekuth_home()));
                              },

                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 15.0,),
                  Padding(
                    padding: EdgeInsets.symmetric(
                        vertical: 0.0, horizontal: 20.0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20),


                      child: Container(
                        height: 100,
                        decoration: BoxDecoration(
                          color: Colors.red,

                        ),

                        child: Row(
                          children: <Widget>[
                            SizedBox(width: 20.0,),
                            Container(


                              width: 70,
                              height: 70,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10.0),
                                  color: Colors.white,
                                  image: DecorationImage(
                                      image: AssetImage('images/si4.png'),
                                      fit: BoxFit.cover
                                  )
                              ),
                            ),
                            SizedBox(width: 10),
                            Expanded(

                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment:
                                CrossAxisAlignment.start,
                                children: <Widget>[
                                  Text('සීමාකාරී සංඥා',style: TextStyle(color: Colors.black,fontSize: 19.0,fontWeight: FontWeight.bold),),
                                  Text('Restrictive Signs',
                                      style: TextStyle(color: Colors.white,fontSize: 20.0,fontWeight: FontWeight.bold
                                      ,shadows: <Shadow>[
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
                                      ))
                                ],
                              ),
                            ),
                            IconButton(
                              icon: Icon(Icons.arrow_forward_ios),
                              onPressed: (){
                                Navigator.push(context, MaterialPageRoute(builder: (context)=>Simakari_Home()));
                              },

                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 15.0,),
                  Padding(
                    padding: EdgeInsets.symmetric(
                        vertical: 0.0, horizontal: 20.0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20),


                      child: Container(
                        height: 100,
                        decoration: BoxDecoration(
                          color: Colors.green,

                        ),

                        child: Row(
                          children: <Widget>[
                            SizedBox(width: 20.0,),
                            Container(


                              width: 70,
                              height: 70,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10.0),
                                  color: Colors.white,
                                  image: DecorationImage(
                                      image: AssetImage('images/p1.png'),
                                      fit: BoxFit.cover
                                  )
                              ),
                            ),
                            SizedBox(width: 10),
                            Expanded(

                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment:
                                CrossAxisAlignment.start,
                                children: <Widget>[
                                  Text('පොලිස් හස්ත සංඥා',style: TextStyle(color: Colors.black,fontSize: 19.0,fontWeight: FontWeight.bold),),
                                  Text('Police Hand Signs',
                                      style: TextStyle(color: Colors.white,fontSize: 20.0,fontWeight: FontWeight.bold
                                        ,shadows: <Shadow>[
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
                                      ))
                                ],
                              ),
                            ),
                            IconButton(
                              icon: Icon(Icons.arrow_forward_ios),
                              onPressed: (){
                                Navigator.push(context, MaterialPageRoute(builder: (context)=>Police_home()));
                              },

                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                 SizedBox(height: 15.0,),
                  Padding(
                    padding: EdgeInsets.symmetric(
                        vertical: 0.0, horizontal: 20.0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20),


                      child: Container(
                        height: 100,
                        decoration: BoxDecoration(
                          color: Colors.deepOrange,

                        ),

                        child: Row(
                          children: <Widget>[
                            SizedBox(width: 20.0,),
                            Container(


                              width: 70,
                              height: 70,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10.0),
                                  color: Colors.white,
                                  image: DecorationImage(
                                      image: AssetImage('images/tr2.png'),
                                      fit: BoxFit.cover
                                  )
                              ),
                            ),
                            SizedBox(width: 10),
                            Expanded(

                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment:
                                CrossAxisAlignment.start,
                                children: <Widget>[
                                  Text('රථ වාහන ආලෝක සං‌‍ඥා',style: TextStyle(color: Colors.black,fontSize: 19.0,fontWeight: FontWeight.bold),),
                                  Text('Police Hand Signs',
                                      style: TextStyle(color: Colors.white,fontSize: 20.0,fontWeight: FontWeight.bold
                                        ,shadows: <Shadow>[
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
                                      ))
                                ],
                              ),
                            ),
                            IconButton(
                              icon: Icon(Icons.arrow_forward_ios),
                              onPressed: (){
                                Navigator.push(context, MaterialPageRoute(builder: (context)=>TraficLight_Home()));
                              },

                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 15.0,),
                  Padding(
                    padding: EdgeInsets.symmetric(
                        vertical: 0.0, horizontal: 20.0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20),


                      child: Container(
                        height: 100,
                        decoration: BoxDecoration(
                          color: Colors.purpleAccent,

                        ),

                        child: Row(
                          children: <Widget>[
                            SizedBox(width: 20.0,),
                            Container(


                              width: 70,
                              height: 70,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10.0),
                                  color: Colors.white,
                                  image: DecorationImage(
                                      image: AssetImage('images/r21.png'),
                                      fit: BoxFit.cover
                                  )
                              ),
                            ),
                            SizedBox(width: 10),
                            Expanded(

                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment:
                                CrossAxisAlignment.start,
                                children: <Widget>[
                                  Text('මාර්ගය මත පිහිටුවන සලකුණු',style: TextStyle(color: Colors.black,fontSize: 19.0,fontWeight: FontWeight.bold),),
                                  Text('Road Markings',
                                      style: TextStyle(color: Colors.white,fontSize: 20.0,fontWeight: FontWeight.bold
                                        ,shadows: <Shadow>[
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
                                      ))
                                ],
                              ),
                            ),
                            IconButton(
                              icon: Icon(Icons.arrow_forward_ios),
                              onPressed: (){
                                Navigator.push(context, MaterialPageRoute(builder: (context)=>Roadmark_home()));
                              },

                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 15.0,),
                  Padding(
                    padding: EdgeInsets.symmetric(
                        vertical: 0.0, horizontal: 20.0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20),


                      child: Container(
                        height: 100,
                        decoration: BoxDecoration(
                          color: Colors.limeAccent,

                        ),

                        child: Row(
                          children: <Widget>[
                            SizedBox(width: 20.0,),
                            Container(


                              width: 70,
                              height: 70,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10.0),
                                  color: Colors.white,
                                  image: DecorationImage(
                                      image: AssetImage('images/w5.png'),
                                      fit: BoxFit.cover
                                  )
                              ),
                            ),
                            SizedBox(width: 10),
                            Expanded(

                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment:
                                CrossAxisAlignment.start,
                                children: <Widget>[
                                  Text('විවිධ සලකුණු',style: TextStyle(color: Colors.black,fontSize: 19.0,fontWeight: FontWeight.bold),),
                                  Text('Miscellaneous Sings',
                                      style: TextStyle(color: Colors.white,fontSize: 20.0,fontWeight: FontWeight.bold
                                        ,shadows: <Shadow>[
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
                                      ))
                                ],
                              ),
                            ),
                            IconButton(
                              icon: Icon(Icons.arrow_forward_ios),
                              onPressed: (){
                                Navigator.push(context, MaterialPageRoute(builder: (context)=>VividhaHome()));
                              },

                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 15.0,),
                  Padding(
                    padding: EdgeInsets.symmetric(
                        vertical: 0.0, horizontal: 20.0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20),


                      child: Container(
                        height: 100,
                        decoration: BoxDecoration(
                          color: Colors.tealAccent,

                        ),

                        child: Row(
                          children: <Widget>[
                            SizedBox(width: 20.0,),
                            Container(


                              width: 70,
                              height: 70,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10.0),
                                  color: Colors.white,
                                  image: DecorationImage(
                                      image: AssetImage('images/ni2.png'),
                                      fit: BoxFit.cover
                                  )
                              ),
                            ),
                            SizedBox(width: 10),
                            Expanded(

                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment:
                                CrossAxisAlignment.start,
                                children: <Widget>[
                                  Text('නියාමන සලකුණු',style: TextStyle(color: Colors.black,fontSize: 19.0,fontWeight: FontWeight.bold),),
                                  Text('Regulatory signs',
                                      style: TextStyle(color: Colors.white,fontSize: 20.0,fontWeight: FontWeight.bold
                                        ,shadows: <Shadow>[
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
                                      ))
                                ],
                              ),
                            ),
                            IconButton(
                              icon: Icon(Icons.arrow_forward_ios),
                              onPressed: (){
                                Navigator.push(context, MaterialPageRoute(builder: (context)=>Athireka_home()));
                              },

                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 15.0,),
                  Padding(
                    padding: EdgeInsets.symmetric(
                        vertical: 0.0, horizontal: 20.0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20),


                      child: Container(
                        height: 100,
                        decoration: BoxDecoration(
                          color: Colors.lightGreenAccent,

                        ),

                        child: Row(
                          children: <Widget>[
                            SizedBox(width: 20.0,),
                            Container(


                              width: 70,
                              height: 70,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10.0),
                                  color: Colors.white,
                                  image: DecorationImage(
                                      image: AssetImage('images/ds1.png'),
                                      fit: BoxFit.cover
                                  )
                              ),
                            ),
                            SizedBox(width: 10),
                            Expanded(

                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment:
                                CrossAxisAlignment.start,
                                children: <Widget>[
                                  Text('දිශා තොරතුරු සංඥා',style: TextStyle(color: Colors.black,fontSize: 19.0,fontWeight: FontWeight.bold),),
                                  Text('Direction information signals',
                                      style: TextStyle(color: Colors.white,fontSize: 19.0,fontWeight: FontWeight.bold
                                        ,shadows: <Shadow>[
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
                                      ))
                                ],
                              ),
                            ),
                            IconButton(
                              icon: Icon(Icons.arrow_forward_ios),
                              onPressed: (){
                                Navigator.push(context, MaterialPageRoute(builder: (context)=>NagaraHome()));
                              },

                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 15.0,),
                  Padding(
                    padding: EdgeInsets.symmetric(
                        vertical: 0.0, horizontal: 20.0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20),


                      child: Container(
                        height: 100,
                        decoration: BoxDecoration(
                          color: Colors.cyan,

                        ),

                        child: Row(
                          children: <Widget>[
                            SizedBox(width: 20.0,),
                            Container(


                              width: 70,
                              height: 70,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10.0),
                                  color: Colors.white,
                                  image: DecorationImage(
                                      image: AssetImage('images/pa4.png'),
                                      fit: BoxFit.cover
                                  )
                              ),
                            ),
                            SizedBox(width: 10),
                            Expanded(

                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment:
                                CrossAxisAlignment.start,
                                children: <Widget>[
                                  Text('පදිකයින් සඳහා ආලෝක සංඥා',style: TextStyle(color: Colors.black,fontSize: 19.0,fontWeight: FontWeight.bold),),
                                  Text('Light signals for Pedestrians',
                                      style: TextStyle(color: Colors.white,fontSize: 20.0,fontWeight: FontWeight.bold
                                        ,shadows: <Shadow>[
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
                                      ))
                                ],
                              ),
                            ),
                            IconButton(
                              icon: Icon(Icons.arrow_forward_ios),
                              onPressed: (){
                                Navigator.push(context, MaterialPageRoute(builder: (context)=>PadikaHome()));
                              },

                            )
                          ],
                        ),
                      ),
                    ),
                  ),







                ],
              )


        ),

      ),
      drawer:Drawer(
        child: ListView(
          children: [
            Container(
              height: 260.0,
             decoration: BoxDecoration(
               borderRadius: BorderRadius.only(
                 bottomRight: Radius.circular(25.0),
                 bottomLeft: Radius.circular(25.0),
               ),
               color: Colors.cyan
             ),
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 15.0),
                    child: Container(
                      width: 160.0,
                      height: 160.0,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage('images/logo.png',),
                            fit: BoxFit.cover,
                          )
                      ),
                    ),
                  ),
                  SizedBox(height: 10.0,),
                  Text('රියදුරු පෙරහුරුව',style: TextStyle(fontSize: 22.0,color: Colors.white,fontWeight: FontWeight.bold),),
                  Text('Powered by VM Mobile',style: TextStyle(fontSize: 20.0,color: Colors.white,fontWeight: FontWeight.bold),),
                ],
              ),
            ),
            ListTile(
              leading: Icon(Icons.perm_device_information_outlined),
              title: Text('About',style: TextStyle(fontSize: 16.0,fontWeight: FontWeight.bold,color: Colors.grey),),
              trailing: IconButton(
                icon: Icon(Icons.menu),
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>AboutPage()));
                },
              ),
            ),
            Divider(),
            ListTile(
              leading: Icon(Icons.privacy_tip),
              title: Text('Privacy & policy',style: TextStyle(fontSize: 16.0,fontWeight: FontWeight.bold,color: Colors.grey),),
              trailing: IconButton(
                icon: Icon(Icons.menu),
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>PrivacyHome()));
                },
              ),
            ),
            Divider(),

            ListTile(
              leading: Icon(Icons.home),
              title: Text('Home',style: TextStyle(fontSize: 16.0,fontWeight: FontWeight.bold,color: Colors.grey),),
              trailing: IconButton(
                icon: Icon(Icons.menu),
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>HomePage()));
                },
              ),
            ),
            Divider(),
          ],
        ),
      )
    );
  }


}
