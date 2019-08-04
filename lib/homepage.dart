import 'package:flutter/material.dart';

import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'hometoptabs.dart';
import 'bookstoptabs.dart';
import 'gamestoptabs.dart';
import 'moviestoptabs.dart';
import 'musicstoptabs.dart';



class HomePage extends StatefulWidget {
  

  final Widget child;

  HomePage({Key key, this.child}) : super( key: key);

  @override
  _HomePageState createState() => _HomePageState();

}


Color PrimaryColor = Color(0xff00796B);


class _HomePageState extends State<HomePage> {
  
  @override
  Widget build(BuildContext context) {
  
    return DefaultTabController(

      length: 5,

      child: Scaffold(

        appBar: AppBar(


          backgroundColor: PrimaryColor,


          title: Padding(

            padding: EdgeInsets.only(top: 8.0),

           child: _GooglePlayAppBar(),

          ),


          //----TOP TAB BAR BEGINS ----

          bottom: TabBar(

            //'isScrollable' enable scrolling
            isScrollable: true,

            indicatorColor: Colors.white,

            indicatorWeight: 6.0,


            onTap: (index){


              setState(() {
                
                 //----COLOR OF THE TOP TAB BAR BEGINS ----

                switch(index){

                  case 0:

                  PrimaryColor = Color(0xff00796B);

                  break;


                  case 1:

                  PrimaryColor = Color(0xff00796B);

                  break;


                  case 2:

                  PrimaryColor = Color(0xffe91e63);

                  break;


                  case 3:

                  PrimaryColor = Color(0xff42a5f5);

                  break;


                  case 4:

                  PrimaryColor = Color(0xffe53935);

                  break;

                  default:

                }

              }
              );

            },



            //---------1st LAYER OF TABS BEGINS -------

            tabs: <Widget>[



              Tab(

                child: Container(

                  child: Text(
                    
                    'HOME',

                    style: TextStyle(

                      color: Colors.white,

                      fontSize: 18.0,

                    ),

                  ),

                ),

              ),



              Tab(

                child: Container(

                  child: Text(
                    
                    'GAMES',

                    style: TextStyle(

                      color: Colors.white,

                      fontSize: 18.0,

                    ),

                  ),

                ),

              ),



              Tab(

                child: Container(

                  child: Text(
                    
                    'MOVIES & TV',

                    style: TextStyle(

                      color: Colors.white,

                      fontSize: 18.0,

                    ),

                  ),

                ),

              ),




              Tab(

                child: Container(

                  child: Text(
                    
                    'BOOKS',

                    style: TextStyle(

                      color: Colors.white,

                      fontSize: 18.0,

                    ),

                  ),

                ),

              ),



              Tab(

                child: Container(

                  child: Text(
                    
                    'MUSIC',

                    style: TextStyle(

                      color: Colors.white,

                      fontSize: 18.0,

                    ),

                  ),

                ),

              ),


              //---------END OF THE 1st LAYER OF TABS -------


            ],

          ),

        ),



        //---------2nd LAYER OF TABS BEGINS -------

        body: TabBarView(

          children: <Widget>[
            

            //---------COLORS OF 2nd LAYER OF TABS: 'FOR YOU'... BEGINS -------


            HomeTopTabs(0xff00796B),
            
            GamesTopTabs(0xff00796B),

            MoviesTopTabs(0xffe91e63),
            
            BooksTopTabs(0xff42a5f5), 
            
            MusicTopTabs(0xffe53935), 


          ],

        ),

        //---------2nd LAYER OF TABS BEGINS -------

      ),
      
    );

  }

}



Widget _GooglePlayAppBar(){

  return Container(

    color: Colors.white,

    child: Row(

      mainAxisAlignment: MainAxisAlignment.spaceBetween,


      children: <Widget>[

        //---BAR ICON---
        Container(

          child: IconButton(

            icon: Icon(
              
              FontAwesomeIcons.bars,
              
            ),

            onPressed: (){

              //

            },

          ),

        ),



        //---APP NAME ---
        Container(

          margin: EdgeInsets.only(left: 2.0),

          child: Text(
            
            'Google Play',

            style: TextStyle(

              color: Colors.grey,

              

            ),

          )

        ),



        //---BAR ICON---
        Container(

          child: IconButton(

            icon: Icon(
              
              FontAwesomeIcons.microphone,
              
              color: Colors.blueGrey,
            
            ),

            onPressed: (){

              //

            },

          ),

        ),

      ],

    ),

  );

}















