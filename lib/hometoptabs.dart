import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'homeforyoutabs.dart';

import 'hometopchartstabs.dart';


class HomeTopTabs extends StatefulWidget {
  
  HomeTopTabs(this.colorVal);

  int colorVal;


  @override
  _HomeTopTabsState createState() => _HomeTopTabsState();

}





class _HomeTopTabsState extends State<HomeTopTabs> with SingleTickerProviderStateMixin {
  
  
  TabController _tabController;


  @override 
  void initState() {
    
    super.initState();


    _tabController = new TabController(vsync: this, length: 6);

    _tabController.addListener(_habdleTabSelection);

  }

  void _habdleTabSelection(){

    setState(() {

      widget.colorVal = 0xff00796B;

    });

  }



  @override
  Widget build(BuildContext context) {
   
   
    return DefaultTabController(
      
      length: 6,

      child: Scaffold(

        appBar: AppBar(

          
          //---------2nd LAYER OF TABS BEGINS -------


          bottom: TabBar(


            controller: _tabController,

            isScrollable: true,

            indicatorWeight: 4.0,

            //---Color of the 2nd Layer App Bottom Line

            indicatorColor: Color(0xff00796B),

            unselectedLabelColor: Colors.grey,


            tabs: <Widget>[


              Tab(

                icon: Icon(

                  FontAwesomeIcons.compass,

                  color: _tabController.index == 0

                  ? Color(widget.colorVal)

                  : Colors.grey

                ),


                child: Text(
                  
                  'For You',

                  style: TextStyle(

                    color: _tabController.index == 0

                    ? Color(widget.colorVal)
                    
                    
                    : Colors.grey


                  ),

                ),


              ),



              Tab(

                icon: Icon(

                  FontAwesomeIcons.chartBar,

                  color: _tabController.index == 1

                  ? Color(widget.colorVal)

                  : Colors.grey

                ),


                child: Text(
                  
                  'Top Charts',

                  style: TextStyle(

                    color: _tabController.index == 1

                    ? Color(widget.colorVal)
                    
                    
                    : Colors.grey


                  ),

                ),


              ),



              Tab(

                icon: Icon(

                  FontAwesomeIcons.shapes,

                  color: _tabController.index == 2

                  ? Color(widget.colorVal)

                  : Colors.grey

                ),


                child: Text(
                  
                  'Categories',

                  style: TextStyle(

                    color: _tabController.index == 2

                    ? Color(widget.colorVal)
                    
                    
                    : Colors.grey


                  ),

                ),


              ),



              Tab(

                icon: Icon(

                  FontAwesomeIcons.solidBookmark,

                  color: _tabController.index == 3

                  ? Color(widget.colorVal)

                  : Colors.grey

                ),


                child: Text(
                  
                  'Family',

                  style: TextStyle(

                    color: _tabController.index == 3

                    ? Color(widget.colorVal)
                    
                    
                    : Colors.grey


                  ),

                ),


              ),



              Tab(

                icon: Icon(

                  FontAwesomeIcons.solidStar,

                  color: _tabController.index == 4

                  ? Color(widget.colorVal)

                  : Colors.grey

                ),


                child: Text(
                  
                  'Early Access',

                  style: TextStyle(

                    color: _tabController.index == 4

                    ? Color(widget.colorVal)
                    
                    
                    : Colors.grey


                  ),

                ),


              ),



              Tab(

                icon: Icon(

                  FontAwesomeIcons.lockOpen,

                  color: _tabController.index == 5

                  ? Color(widget.colorVal)

                  : Colors.grey

                ),


                child: Text(
                  
                  'Editors choice',

                  style: TextStyle(

                    color: _tabController.index == 5

                    ? Color(widget.colorVal)
                    
                    
                    : Colors.grey


                  ),

                ),


              ),



            ],

          ),

          //---------END of the 2nd LAYER OF TABS -------


        ),





        //---------MAIN BODY PART of 2nd LAYER TABS Begins-------


        body: TabBarView(


          controller: _tabController,


          children: <Widget>[

            
            HomeForYouTabs(),

            HomeTopChartsTabs(),


            Container(

              height: 200.0,

              child: Center(
                
                child: Text('Category'),
                
              ),

            ),



            Container(

              height: 200.0,

              child: Center(
                
                child: Text('Family'),
                
              ),

            ),



            Container(

              height: 200.0,

              child: Center(
                
                child: Text('Early Access'),
                
              ),

            ),



            Container(

              height: 200.0,

              child: Center(
                
                child: Text('Editor Choice'),
                
              ),

            ),


          ],

        ),


        //---------End of the MAIN BODY PART of 2nd LAYER TABS-------



      ),

    );
    
  }

}
