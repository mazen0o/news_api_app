import 'package:flutter/material.dart';

import '../../models/sources_response/SoruceResponse.dart';

class TabItem extends StatelessWidget {
  Sources source;
  bool isSelected;
  TabItem(this.source,this.isSelected);


  @override
  Widget build(BuildContext context) {
    return  Container(
      padding: EdgeInsets.all(8),
      margin: EdgeInsets.only(top: 12),

      decoration: BoxDecoration(
        color: isSelected ? Colors.green : Colors.white,
        border: Border.all(color: Colors.green),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Text(
        "${source.name}",
        style: TextStyle(
          color: isSelected ? Colors.white : Colors.green
        ),
      ),

    );
  }
}
