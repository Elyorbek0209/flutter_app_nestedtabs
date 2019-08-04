import 'package:flutter/material.dart';

import 'package:font_awesome_flutter/font_awesome_flutter.dart';



class MusicTopTabs extends StatefulWidget {
  
  
  int colorVal;
  
  MusicTopTabs(this.colorVal);

  @override
  _MusicTopTabsState createState() => _MusicTopTabsState();

}




class _MusicTopTabsState extends State<MusicTopTabs> with SingleTickerProviderStateMixin{
 
 
  TabController _tabController;


  @override 
  void initState(){

    super.initState();

    _tabController = new TabController(vsync: this, length: 6);

    _tabController.addListener(_handleTabSelection);

  }

  void _handleTabSelection(){

    setState(() {

      widget.colorVal = 0xffe53935;

    });

  } 





  @override
  Widget build(BuildContext context) {
 
 
    return DefaultTabController(

      length: 6,

      child: Scaffold(


        //----- MUSIC APP BAR BEGINS ----

        appBar: AppBar(

          bottom: TabBar(

            isScrollable: true,

            indicatorWeight: 4.0,

            indicatorColor:Color(0xffe53935),
            
            unselectedLabelColor: Colors.grey,

            controller: _tabController,


            tabs: <Widget>[

              
              Tab(


                icon:Icon(
                  
                  FontAwesomeIcons.compass, 
                  
                  color: _tabController.index == 0

                  ? Color( widget.colorVal)

                  : Colors.grey
                  
                ),


                child:Text(
                  
                  'For you',
                  
                  style: TextStyle( 
                    
                    color: _tabController.index == 0

                    ?  Color( widget.colorVal)

                    : Colors.grey
                  
                  )
                  
                ),

              ),



              Tab(


                icon:Icon(
                  
                  FontAwesomeIcons.music, 
                  
                  color: _tabController.index == 1

                  ? Color( widget.colorVal)

                  : Colors.grey
                  
                ),


                child:Text(
                  
                  'Top Songs',
                  
                  style: TextStyle( 
                    
                    color: _tabController.index == 1

                    ?  Color( widget.colorVal)

                    : Colors.grey
                  
                  )
                  
                ),

              ),



              Tab(


                icon:Icon(
                  
                  FontAwesomeIcons.dotCircle, 
                  
                  color: _tabController.index == 2

                  ? Color( widget.colorVal)

                  : Colors.grey
                  
                ),


                child:Text(
                  
                  'Top Album',
                  
                  style: TextStyle( 
                    
                    color: _tabController.index == 2

                    ?  Color( widget.colorVal)

                    : Colors.grey
                  
                  )
                  
                ),

              ),


              Tab(


                icon:Icon(
                  
                  FontAwesomeIcons.solidBookmark, 
                  
                  color: _tabController.index == 5

                  ? Color( widget.colorVal)

                  : Colors.grey
                  
                ),


                child:Text(
                  
                  'New Releases',
                  
                  style: TextStyle( 
                    
                    color: _tabController.index == 5

                    ?  Color( widget.colorVal)

                    : Colors.grey
                  
                  )
                  
                ),

              ),



              Tab(


                icon:Icon(
                  
                  FontAwesomeIcons.shapes, 
                  
                  color: _tabController.index == 3

                  ? Color( widget.colorVal)

                  : Colors.grey
                  
                ),


                child:Text(
                  
                  'Genres',
                  
                  style: TextStyle( 
                    
                    color: _tabController.index == 3

                    ?  Color( widget.colorVal)

                    : Colors.grey
                  
                  )
                  
                ),

              ),



              Tab(


                icon:Icon(
                  
                  FontAwesomeIcons.cartPlus, 
                  
                  color: _tabController.index == 4

                  ? Color( widget.colorVal)

                  : Colors.grey
                  
                ),


                child:Text(
                  
                  'Pre-Orders',
                  
                  style: TextStyle( 
                    
                    color: _tabController.index == 4

                    ?  Color( widget.colorVal)

                    : Colors.grey
                  
                  )
                  
                ),

              ),

            ],

          ),

        ),

         //-----END OF THE MUSIC APP BAR ----






        //---- BODY OF MUSIC BEGINS ----

        body: TabBarView(


          controller: _tabController,


          children: <Widget>[



            Container(


              height: 200.0,


              child: Center(

                child: Text(
                  
                  'For you',
                  
                ),

              ),

            ),



            Container(


              height: 200.0,


              child: Center(

                child: Text(
                  
                  'Top Songs',
                  
                ),

              ),

            ),



            Container(


              height: 200.0,


              child: Center(

                child: Text(
                  
                'Top Album',
                  
                ),

              ),

            ),



            Container(


              height: 200.0,


              child: Center(

                child: Text(
                  
                  'New Releases',
                  
                ),

              ),

            ),



            Container(


              height: 200.0,


              child: Center(

                child: Text(
                  
                  'Genres',
                  
                ),

              ),

            ),



            Container(


              height: 200.0,


              child: Center(

                child: Text(
                  
                  'Pre- orders',
                  
                ),

              ),

            ),

          ],


        ),

      ),

    );

  }

}








