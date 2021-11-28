import 'package:flutter/material.dart';
import 'package:instax_19552011327_sonia/pages/DashboardPage.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({Key? key}): super(key: key);
  @override
  _SearchPageState createState() => _SearchPageState();
}

class _SearchPageState  extends State<SearchPage>{
  final TextEditingController _SearchController= TextEditingController();
  final List<String> _originList=[
    'Instax Mini Mint 7+', 
    'Instax Mini Blue 7+',
    'Instax Mini Choral 7+',
    'Instax Mini Pink 7+',
    'Instax Mini Lavender 7+',
  ];
  List<String> _filterredlist=[];
    String _Keyword='';
  @override
  Widget build(BuildContext context) {
    _SearchController.addListener((() {
      setState(() {
        _Keyword= _SearchController.text;
      });
    }));
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

        body: Padding(padding: EdgeInsets.only(
          left: 15, 
          right: 15),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [  

          TextField(
             controller: _SearchController,
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
                        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>DashboardPage()));
                      },
                    child: Text("Back",style:TextStyle(color: Colors.white)),
                    ),  

          SizedBox(
            height: 15,
          ),
          (_Keyword.isEmpty)? _createOrginListView():_searchData(),
        ],
        ),
        )
        );
  }

        _searchData(){
          _filterredlist=[];
          for(int i=0; i<_originList.length; i++){
            var item = _originList[i];
            if (item.toLowerCase().contains(_Keyword.toLowerCase())){
              _filterredlist.add(item);
            }
          }
          return _createFilteredListView();
        }

        _createOrginListView(){
          return Expanded(child: ListView.separated(
            itemBuilder: (context, index){
              return Card(
                color: Colors.teal,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween, 
                  children: <Widget>[
                    ConstrainedBox(
                        constraints: BoxConstraints(minWidth: 100),
                        child: Text(_originList[index], style: TextStyle(fontSize: 18,color: Colors.white,fontWeight: FontWeight.bold),),),
                    Container(
                      width: 120,
                      height: 100,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                            fit: BoxFit.fill,
                            image: AssetImage("images/instax_mini_7plus_rainbow.png"),
                          )),
                    )
                  ],
                )
                );
            }, 
            separatorBuilder: (context, index){
              return Divider(
                thickness: 2,
                color: Colors.white,
              );
            }, 
            itemCount: _originList.length,
            ));
        }

        _createFilteredListView(){
          return Expanded(child: ListView.separated(
            itemBuilder: (context, index){
              return Card(
                color: Colors.teal,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween, 
                  children: <Widget>[
                    ConstrainedBox(
                        constraints: BoxConstraints(minWidth: 100),
                        child: Text(_filterredlist[index], style: TextStyle(fontSize: 18,color: Colors.white,fontWeight: FontWeight.bold),),),
                    Container(
                      width: 120,
                      height: 100,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                            fit: BoxFit.fill,
                            image: AssetImage("images/instax_mini_7plus_rainbow.png"),
                          )),
                    )
                  ],
                )
                );
            }, 
            separatorBuilder: (context, index){
              return Divider(
                thickness: 2,
                color: Colors.white
              );
            }, 
            itemCount: _filterredlist.length,
            ));
        }
}
