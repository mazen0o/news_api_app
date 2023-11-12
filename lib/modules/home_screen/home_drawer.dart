import 'package:flutter/material.dart';

class HomeDrawer extends StatelessWidget {
  static const int CATEGORY = 1;
  static const int SETTINGS = 2;
  Function onClicked;

  HomeDrawer(this.onClicked);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size.width;
    return  Container(
      width: size * .70,
      color: Colors.white,
      child: Column(
        children:
        [
          Container(
            width: double.infinity,
            padding: EdgeInsets.symmetric(vertical: 20),
            color: Theme.of(context).primaryColor,
            child: Center(
              child: Text(
                "News Api",
                style: TextStyle(
                  fontSize: 25,
                  color: Colors.white
                ),
              ),
            ),
          ),
          InkWell(
            onTap: (){
              onClicked(CATEGORY);
            },
            child: Row(
              children:
              [
                Icon(Icons.list,size: 30),
                SizedBox(width: 5,),
                Text("Categoris",style: TextStyle(fontSize: 30),),
              ],
            ),
          ),
          SizedBox(height: 10,),
          InkWell(
            onTap: (){
              onClicked(SETTINGS);
            },
            child: Row(
              children:
              [
                Icon(Icons.settings,size: 30),
                SizedBox(width: 5,),

                Text("Settings",style: TextStyle(fontSize: 30),),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
