import 'package:flutter/material.dart';
import 'package:new_app/modules/news/news_data.dart';
import 'package:new_app/modules/home_screen/tabItem.dart';
import '../../models/sources_response/SoruceResponse.dart';

class TabsController extends StatefulWidget {
  List<Sources> sources;
  TabsController(this.sources);

  @override
  State<TabsController> createState() => _TabsControllerState();
}

class _TabsControllerState extends State<TabsController> {
  int selectedItemIndex = 0;

  @override
  Widget build(BuildContext context) {
    return  Column(
      children: [
        DefaultTabController(
          length:widget.sources.length,
          child: TabBar(
            isScrollable: true,
            indicator: BoxDecoration(
              color: Colors.transparent
            ),
            onTap: (index){
              selectedItemIndex = index;
              setState(() {

              });
            },
            tabs: widget.sources.map((oneSource) => TabItem(
                oneSource, selectedItemIndex==widget.sources.indexOf(oneSource))).toList(),
          ),
        ),
        Expanded(child: NewsData(widget.sources[selectedItemIndex])),


      ],
    );
  }
}
