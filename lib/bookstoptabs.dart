import 'package:flutter/material.dart';

import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'booksreleasetabs.dart';



class BooksTopTabs extends StatefulWidget {
  
  int colorVal;

  BooksTopTabs(this.colorVal);

  @override
  _BooksTopTabsState createState() => _BooksTopTabsState();

}




class _BooksTopTabsState extends State<BooksTopTabs> with SingleTickerProviderStateMixin {
  

  TabController _tabController;


  @override
    void initState() {

      super.initState();

      _tabController = new TabController(vsync: this, length: 7);

      _tabController.addListener(_handleTabSelection);

    } 

    void _handleTabSelection(){

    setState(() {

      widget.colorVal = 0xff42a5f5;
    
    });

  }




  
  
  @override
  Widget build(BuildContext context) {
    
    return DefaultTabController(

      length: 7,
      
      child: Scaffold(

        appBar: AppBar(

          bottom: TabBar(

            isScrollable: true,

            indicatorWeight: 4.0,

            //---Color of the 2nd Layer App Bottom Line---

            indicatorColor: Color(0xff42a5f5),

            unselectedLabelColor: Colors.grey,

            controller: _tabController,


            tabs: <Widget>[

              //---EBOOKS BEGINS---
              Tab(

                icon:Icon(
                  
                  FontAwesomeIcons.book,

                  color: _tabController.index == 0
                  
                  ? Color(widget.colorVal)
                  
                  : Colors.grey
                  
                ),


                child: Text(
                  
                  'Ebooks',
                  
                  style: TextStyle(

                    color: _tabController.index == 0

                    ? Color(widget.colorVal)

                    : Colors.grey

                  ),
                
                
                ),

              ),

              //---END OF THE EBOOKS---



              //---AUDIO BOOK BEGINS---

              Tab(

                icon:Icon(
                  
                  FontAwesomeIcons.headphones,

                  color: _tabController.index == 1
                  
                  ? Color(widget.colorVal)
                  
                  : Colors.grey
                  
                ),


                child: Text(
                  
                  'Audiobooks',
                  
                  style: TextStyle(

                    color: _tabController.index == 1

                    ? Color(widget.colorVal)

                    : Colors.grey

                  ),
                
                
                ),

              ),

              //---END OF THE 'AUDIO BOOK' ---



              //---COMIC BOOK BEGINS--- 

              Tab(

                icon:Icon(
                  
                  FontAwesomeIcons.cloudsmith,

                  color: _tabController.index == 3
                  
                  ? Color(widget.colorVal)
                  
                  : Colors.grey
                  
                ),


                child: Text(
                  
                  'Comic',
                  
                  style: TextStyle(

                    color: _tabController.index == 3

                    ? Color(widget.colorVal)

                    : Colors.grey

                  ),
                
                
                ),

              ),

              //---END OF THE 'COMIC BOOK' --- 



              //---GENRES BOOK BEGINS--- 

              Tab(

                icon:Icon(
                  
                  FontAwesomeIcons.shapes,

                  color: _tabController.index == 4
                  
                  ? Color(widget.colorVal)
                  
                  : Colors.grey
                  
                ),


                child: Text(
                  
                  'Genres',
                  
                  style: TextStyle(

                    color: _tabController.index == 4

                    ? Color(widget.colorVal)

                    : Colors.grey

                  ),
                
                
                ),

              ),

              //---END OF THE GENRES BOOK --- 



               //---TOP SELLING BOOK BEGINS--- 

              Tab(

                icon:Icon(
                  
                  FontAwesomeIcons.solidStar,

                  color: _tabController.index == 4
                  
                  ? Color(widget.colorVal)
                  
                  : Colors.grey
                  
                ),


                child: Text(
                  
                  'Top Selling',
                  
                  style: TextStyle(

                    color: _tabController.index == 4

                    ? Color(widget.colorVal)

                    : Colors.grey

                  ),
                
                
                ),

              ),

              //---END OF THE GENRES BOOK --- 




              //---NEW RELEASE BOOK BEGINS--- 

              Tab(

                icon:Icon(
                  
                  FontAwesomeIcons.solidBookmark,

                  color: _tabController.index == 5
                  
                  ? Color(widget.colorVal)
                  
                  : Colors.grey
                  
                ),


                child: Text(
                  
                  'New Releases',
                  
                  style: TextStyle(

                    color: _tabController.index == 5

                    ? Color(widget.colorVal)

                    : Colors.grey

                  ),
                
                
                ),

              ),

              //---END OF THE NEW RELEASE BOOK --- 




              //---TOP FREE BOOK BEGINS--- 

              Tab(

                icon:Icon(
                  
                  FontAwesomeIcons.chartBar,

                  color: _tabController.index == 6
                  
                  ? Color(widget.colorVal)
                  
                  : Colors.grey
                  
                ),


                child: Text(
                  
                  'Top Free',
                  
                  style: TextStyle(

                    color: _tabController.index == 6

                    ? Color(widget.colorVal)

                    : Colors.grey

                  ),
                
                
                ),

              ),

            ],


          ),

        ),

        //-----END OF THE BOOK APP BAR ----






        //---- BODY OF BOOK BEGINS ----

        body: TabBarView(


          controller: _tabController,


          children: <Widget>[



            Container(


              height: 200.0,


              child: Center(

                child: Text(
                  
                  'Ebooks',
                  
                ),

              ),

            ),



            Container(


              height: 200.0,


              child: Center(

                child: Text(
                  
                  'Audiobooks',
                  
                ),

              ),

            ),



            Container(


              height: 200.0,


              child: Center(

                child: Text(
                  
                  'Comics',
                  
                ),

              ),

            ),



            //BooksReleaseTabs(),



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
                  
                  'Top Selling',
                  
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
                  
                  'Top Free',
                  
                ),

              ),

            ),



          ],


        ),




      ),

    );

  }

}








