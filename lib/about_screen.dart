import 'package:flutter/material.dart';
import 'package:riyaduru_pasala/homePage.dart';
class AboutPage extends StatefulWidget {
  @override
  _AboutPageState createState() => _AboutPageState();
}

class _AboutPageState extends State<AboutPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.cyan,
        title: Text('About App',style: TextStyle(color: Colors.white,fontSize: 20.0,shadows: <Shadow>[
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
        centerTitle: true,
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: (){
            Navigator.push(context,MaterialPageRoute(builder: (context)=>HomePage()));
          },
        ),
      ),

      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            width: MediaQuery.of(context).size.width,
            padding: EdgeInsets.only(top: 20.0,left: 10.0,right: 5.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text('රියදුරු බලපත්‍රය ලබා ගැනීමට බලාපොරාත්තු වන ඔබට මුහුණ දීමට සිදුවන රියදුරු ලිඛිත පරීක්ෂණය සඳහා අවශ්‍ය සියලු දැනුම ලබා ගත හැකි වන අයුරින් මෙමෙ App එක නිර්මාණය කර ඇත .සිංහල හා ඉංග්‍රීසි යන භාෂා දෙකෙන්ම තොරතුරු ඇතුලත් කර ඇති නිසා ඔබට වැඩි අවබෝධයක් ලබා ගත හැක.මෙම App එක හොදින් අධ්‍යනය කළහොත් ඔබට පහසුවෙන්ම ලිඛිත පරීක්ෂණය ජයගත හැක.\n\nකෙසේ වෙතත් මෙමෙ App එකේ සැබෑ අරමුණ ලිඛිත පරීක්ෂණය ජය ගැනීම පමණක් නොව සෑමදාම ඔබ මාර්ගනීති පිළිපදින විනයගරුක හා ගුණගරුක රියදුරන් බිහිකිරීමට යම් හෝ අයුරකින් දායක වීමයි.',style: TextStyle(color: Colors.black,fontSize: 18.0,fontWeight: FontWeight.w600),),
                SizedBox(height: 15.0,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [Text('ඔබට ජය ! ',style: TextStyle(color: Colors.black,fontWeight: FontWeight.w600,fontSize: 20.0),)],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
