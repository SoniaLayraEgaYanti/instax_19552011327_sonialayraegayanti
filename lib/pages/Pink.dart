import 'package:flutter/material.dart';
import 'package:instax_19552011327_sonia/pages/DashboardPage.dart';

class PinkPage extends StatefulWidget {
  @override
  _PinkPage createState() => _PinkPage();
}

class _PinkPage extends State<PinkPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          actions: [
          MaterialButton
          (onPressed: () { 
            Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>DashboardPage()));
           },
          color: Colors.white,
          textColor: Colors.pinkAccent,
          child: Icon(
            Icons.keyboard_arrow_left,
            size: 30,
          ),
          padding: EdgeInsets.all(5),
          shape: CircleBorder(),
          ),
          Container(
              width: 180,
              height: 1,
              decoration: BoxDecoration(
              image: DecorationImage(
              fit: BoxFit.fitWidth,
              image: AssetImage("images/fujifilm-banner.png"),
              )),
              ),          
          MaterialButton
          (onPressed: () {  },
          color: Colors.black,
          textColor: Colors.white,
          child: Icon(
            Icons.more_vert,
            size: 20,
          ),
          padding: EdgeInsets.all(5),
          shape: CircleBorder(),
          ),
        ],
        ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
          Container(
          width: 130,
          height: 130,
          decoration: BoxDecoration(
          image: DecorationImage(
          fit: BoxFit.fitWidth,
          image: AssetImage("images/InstaxMini7plus_Pink_R.png"),
          )),
          ),
          Column(children: [
          Text("Instax Mini Pink 7+", style: TextStyle(fontSize: 20,color: Colors.pinkAccent, fontWeight: FontWeight.bold),),
          Text("Be real and fun with the INSTAX MINI 7+. Cool design, colorful and compact, this instant camera is fun and easy to use. Point and shoot and give your day some fun!"),
          Text("Point & Shoot", style: TextStyle(fontSize: 18,color: Colors.black, fontWeight: FontWeight.bold),),
          Text("The Mini 7+ is easy to use! Simply point and shoot! With its exposure control adjustment and 60mm fixed-focus lens, the Mini 7+ makes it easy for you to be creative and live in the moment."),
          Text("Mini But With Full-Size Memories", style: TextStyle(fontSize: 18,color: Colors.black, fontWeight: FontWeight.bold),),
          Text("Pop it in your wallet, stick it to your wall – the INSTAX Mini film brings you instant 2 x 3 sized photos you can show and tell. Using professional high-quality film technology (as you’d expect from Fujifilm), your festival frolicking, sun worshipping, crowd surfing memories that you print will transport you right back into that moment."),
          Text("Mini Film", style: TextStyle(fontSize: 18,color: Colors.black, fontWeight: FontWeight.bold),),
          Text("Mini moments with maximum impact. What’s your next mini moment?"),
          Text("Plenty of Great Color Choices", style: TextStyle(fontSize: 18,color: Colors.black, fontWeight: FontWeight.bold),),
          Text("Available in five awesome colors: Lavender, Seafoam Green, Coral, Light Pink & Light Blue"),
          Text("The Mini 7+ Has Your Back!", style: TextStyle(fontSize: 18,color: Colors.black, fontWeight: FontWeight.bold),),
          Text("Depending upon the weather conditions, you can easily control brightness to obtain a great picture"),
          Text("Fun All The Time!", style: TextStyle(fontSize: 18,color: Colors.black, fontWeight: FontWeight.bold),),
          Text("Live in the moment and enjoy your Mini 7+, and give your day some instant fun!"),
          ],),
          Card(
          color: Colors.white,
          child: Row(
          mainAxisAlignment: MainAxisAlignment.center, 
          children: [
          Column(children: [
          Row(children:[
          ConstrainedBox(
          constraints: BoxConstraints(
            minWidth: 200
            ),
          child: Text(" \$ 52.90                         ", style: TextStyle(fontSize: 20,color: Colors.black, fontWeight: FontWeight.bold)),         
          ),
          MaterialButton (color: Colors.pinkAccent,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(18.0)),
          onPressed: (){},
          child: Text("Buy Now",style:TextStyle(color: Colors.white)),
          ),
          ]),
          ],),
        ],
      ),
    ),
        ],
      ),
    ), 
    );  
  }
}