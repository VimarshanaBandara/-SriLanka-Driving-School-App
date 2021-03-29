import 'package:flutter/material.dart';
import 'package:riyaduru_pasala/palana_screen/palana_homepage.dart';

class Palana_details extends StatelessWidget {
  final String imagePath;
  final String title;
  final String details;
  final int index;
  Palana_details(
      {@required this.imagePath,
        @required this.title,
        @required this.details,
        @required this.index});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 1.0,
        centerTitle: true,
        title: Text('පාලන සංඥා ',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 18.0),),
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios_outlined,color: Colors.blueGrey,),
          onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>Palana()));},
        ),
      ),
      body: Container(
        child: Column(
          children: <Widget>[

            Expanded(
              child: Hero(
                tag: 'logo$index',
                child: Container(

                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(30),
                        bottomRight: Radius.circular(30)),
                    image: DecorationImage(
                      image: AssetImage(imagePath,),


                    ),
                  ),
                ),
              ),
            ),
            Container(
              height: 260.0,

              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.fromLTRB(20.0, 20.0, 20.0,0.0),
                    child: Column(
                      children: [
                        Text(title,style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 18.0),),
                        SizedBox(height: 10.0,),
                        Text(details,style: TextStyle(color: Colors.blue,fontSize: 22.0 , fontWeight: FontWeight.bold),)
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}