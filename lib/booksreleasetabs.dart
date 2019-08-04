import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:carousel_slider/carousel_slider.dart';



class BooksReleaseTabs extends StatefulWidget {

  int colorVal;
  BooksReleaseTabs(this.colorVal);

  @override
  _BooksReleaseTabsState createState() => _BooksReleaseTabsState();

}



class _BooksReleaseTabsState extends State<BooksReleaseTabs> with SingleTickerProviderStateMixin {
 
  TabController _tabController;

  @override
  void initState() {

    super.initState();

    _tabController = new TabController(vsync: this, length: 5);
   
    _tabController.addListener(_handleTabSelection);
  
  }

  void _handleTabSelection() {

    setState(() {

      widget.colorVal = 0xff01579B;

    });

  }

 
  @override
  Widget build(BuildContext context) {

    return Container(
      
    );

  }

}