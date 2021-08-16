import 'package:flutter/material.dart';
class Messages extends StatefulWidget{
  @override
  _MessagesState createState() => _MessagesState();
}
class _MessagesState extends State<Messages>{
  @override

  Widget buildSearchbar(){
    return Padding(
      padding: EdgeInsets.only(top: 16,left: 16,right: 16),
      child: TextField(
        decoration: InputDecoration(
          hintText: "Search...",
          hintStyle: TextStyle(color: Colors.grey.shade600),
          prefixIcon: Icon(Icons.search,color: Colors.grey.shade600, size: 20,),
          filled: true,
          fillColor: Colors.grey.shade100,
          contentPadding: EdgeInsets.all(8),
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20),
              borderSide: BorderSide(
                  color: Colors.grey.shade100
              )
          ),
        ),
      ),
    );
    }


  Widget buildHeader(){
    return Container(
      color:Color.fromRGBO(161, 228, 240, 1),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          SafeArea(
            child: Padding(
              padding: EdgeInsets.only(left: 16,right: 16,top: 20,bottom:15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text("Messages",style: TextStyle(fontSize: 32,fontWeight: FontWeight.bold),),
                  Container(
                    padding: EdgeInsets.only(left: 8,right: 8,top: 2,bottom: 2),
                    height: 30,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: Colors.pink[50],
                    ),
                    child: Row(
                      children: <Widget>[
                        Icon(Icons.add,color: Colors.pink,size: 20,),
                        SizedBox(width: 2,),
                        Text("Add New",style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold),),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }


  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: <Widget>[


           buildHeader(),
            buildSearchbar(),
          ],
        )

      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.indigo,
        unselectedItemColor: Colors.grey.shade600,
        selectedLabelStyle: TextStyle(fontWeight: FontWeight.w600),
        unselectedLabelStyle: TextStyle(fontWeight: FontWeight.w600),
        type: BottomNavigationBarType.fixed,
        backgroundColor: Color.fromRGBO(161, 228, 240, 1),
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.account_box_rounded),
            title: Text("Profile"),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.chat),
            title: Text("chat"),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text("Home"),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            title: Text("Search"),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            title: Text("Settings"),
          ),
        ],
      ),

    );


  }
}

