import 'package:flutter/material.dart';
import 'package:instax_19552011327_sonia/pages/Blue.dart';
import 'package:instax_19552011327_sonia/pages/Choral.dart';
import 'package:instax_19552011327_sonia/pages/Lavender.dart';
import 'package:instax_19552011327_sonia/pages/Mint.dart';
import 'package:instax_19552011327_sonia/pages/Pink.dart';
import 'package:instax_19552011327_sonia/pages/SearchPage.dart';

class DashboardPage extends StatefulWidget {
  const DashboardPage({Key? key}) : super(key: key);


  @override
  _DashboardPage createState() => _DashboardPage();
}

class _DashboardPage extends State<DashboardPage> {

  @override
  Widget build(BuildContext context) {

    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          actions: [
          MaterialButton
          (onPressed: () {  },
          color: Colors.deepOrange,
          textColor: Colors.white,
          child: Icon(
            Icons.menu,
            size: 20,
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
            Icons.shopping_bag,
            size: 20,
          ),
          padding: EdgeInsets.all(5),
          shape: CircleBorder(),
          ),
        ],
        ),
     
        body: ListView(
          children: <Widget>[
          TextField(
              onChanged: (value) => (value),
              textAlign: TextAlign.left,
              style: TextStyle(color: Colors.white, fontSize: 15),
              cursorColor: Colors.white,
              decoration: const InputDecoration(
                  hintText: "Search",
                  hintStyle: TextStyle(fontSize: 15, color: Colors.white),  
                  prefixIcon: const Icon(
                    Icons.search,
                    color: Colors.white,
                  ),
                  filled: true,
                  fillColor: Colors.black,
                  enabledBorder: OutlineInputBorder(
                    borderRadius: const BorderRadius.all(
                      Radius.circular(20),
                    ),
                    borderSide: BorderSide(
                      color: Colors.blue,
                      width: 1
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: const BorderRadius.all(
                      Radius.circular(20),
                    ),
                    borderSide: BorderSide(
                      color: Colors.blue,
                      width: 1
                    ),
                  ),
                  ),
                  ), 
                  MaterialButton (color: Colors.black,
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(18.0)),
                      onPressed: (){
                        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>SearchPage()));
                      },
                    child: Text("Search",style:TextStyle(color: Colors.white)),
                    ),          

          Card(
                color: Colors.teal,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround, 
                  children: [
                    Column(children: [
                    Text("Limited Edition", style: TextStyle(fontSize: 10,color: Colors.white,),),
                    Text("Instax Mini Mint 7+", style: TextStyle(fontSize: 20,color: Colors.white),),
                    Text("\$ 49.90", style: TextStyle(fontSize: 20,color: Colors.white,fontWeight: FontWeight.bold),),
                    MaterialButton (color: Colors.white,
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(18.0)),
                      onPressed: (){
                        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>MintPage()));
                      },
                    child: Text("Buy",style:TextStyle(color: Colors.teal)),
                    ),
                    ],),
 
                    Container(
                      width: 130,
                      height: 130,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                            fit: BoxFit.fill,
                            image: AssetImage("images/InstaxMini7plus_Mint_R.png"),
                            )),
                    ), 
                  ],
                )),
          Card(
                color: Colors.cyan,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround, 
                  children: [
                    Column(children: [
                    Text("Limited Edition", style: TextStyle(fontSize: 10,color: Colors.white,),),
                    Text("Instax Mini Blue 7+", style: TextStyle(fontSize: 20,color: Colors.white,),),
                    Text("\$ 50.90", style: TextStyle(fontSize: 20,color: Colors.white,fontWeight: FontWeight.bold),),
                    MaterialButton (color: Colors.white,
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(18.0)),
                      onPressed: (){
                        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>BluePage()));
                      },
                    child: Text("Buy",style:TextStyle(color: Colors.cyan),
                    ),
                    )                 
                    ],),
 
                    Container(
                      width: 130,
                      height: 130,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                            fit: BoxFit.fill,
                            image: AssetImage("images/InstaxMini7plus_Blue_R.png"),
                            )),
                    ),
                  ],
                )),
          Card(
                color: Colors.redAccent,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround, 
                  children: [
                    Column(children: [
                    Text("Limited Edition", style: TextStyle(fontSize: 10,color: Colors.white,),),
                    Text("Instax Mini Choral 7+", style: TextStyle(fontSize: 20,color: Colors.white),),
                    Text("\$ 51.90", style: TextStyle(fontSize: 20,color: Colors.white,fontWeight: FontWeight.bold),),
                    MaterialButton (color: Colors.white,
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(18.0)),
                      onPressed: (){
                        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>ChoralPage()));
                      },
                    child: Text("Buy",style:TextStyle(color: Colors.redAccent)),
                    ),
                    ],),
 
                    Container(
                      width: 130,
                      height: 130,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                            fit: BoxFit.fill,
                            image: AssetImage("images/InstaxMini7plus_Choral_R.png"),
                            )),
                    ), 
                  ],
                )),
          Card(
                color: Colors.pinkAccent,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround, 
                  children: [
                    Column(children: [
                    Text("Limited Edition", style: TextStyle(fontSize: 10,color: Colors.white,),),
                    Text("Instax Mini Pink 7+", style: TextStyle(fontSize: 20,color: Colors.white),),
                    Text("\$ 52.90", style: TextStyle(fontSize: 20,color: Colors.white, fontWeight: FontWeight.bold),),
                    MaterialButton (color: Colors.white,
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(18.0)),
                      onPressed: (){
                        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>PinkPage()));
                      },
                    child: Text("Buy",style:TextStyle(color: Colors.pinkAccent)),
                    ),
                    ],),
 
                    Container(
                      width: 130,
                      height: 130,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                            fit: BoxFit.fill,
                            image: AssetImage("images/InstaxMini7plus_Pink_R.png"),
                            )),
                    ), 
                  ],
                )),
          Card(
                color: Colors.purple,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center, 
                  children: [
                    Column(children: [
                    Text("Limited Edition", style: TextStyle(fontSize: 10,color: Colors.white,),),
                    Text("Instax Mini Lavender 7+", style: TextStyle(fontSize: 20,color: Colors.white,),),
                    Text("\$ 53.90", style: TextStyle(fontSize: 20,color: Colors.white, fontWeight: FontWeight.bold),),
                    MaterialButton (color: Colors.white,
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(18.0)),
                      onPressed: (){
                        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>LavenderPage()));
                      },
                    child: Text("Buy",style:TextStyle(color: Colors.purple)),
                    ),
                    ],),
 
                    Container(
                      width: 130,
                      height: 130,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                            fit: BoxFit.fill,
                            image: AssetImage("images/InstaxMini7plus_Lavender_R.png"),
                            )),
                    ),
                  ],
                )),
          ],
        ),
    );
  }
}