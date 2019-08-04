import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:carousel_slider/carousel_slider.dart';





class MovieReleaseTabs extends StatefulWidget {
  
  final Widget child;

  MovieReleaseTabs({Key key, this.child}) : super(key: key);



  @override
  _MovieReleaseTabsState createState() => _MovieReleaseTabsState();

}





class _MovieReleaseTabsState extends State<MovieReleaseTabs> {
  
  
  final List<String> imgList = [

    'https://lh3.googleusercontent.com/ckxZ0xzt3Rv8QKlVWd-3SacANTEOTY6iyTOE0QKdyOuqGSk1Veraw5hOiCBBEmFnHfc=w200-h300',

    'https://lh3.googleusercontent.com/4FiWSLB259PuncR7Uphu3octlmtXq8DOMgvEjzjiHzyNzXPSZ47J__Z5PbrznenGhsrI=w200-h300',

    'https://lh3.googleusercontent.com/bCFT6LWE9omSkP6rYg-p6gDgABsEFa1DmLl9VAd2KqkR-fFcQhuf2anQzB4omlO9o_npgw=w200-h300',

    'https://lh3.googleusercontent.com/5U0r4_EI_BCCGefg4TNZNRBRtoCGV8B6ZrUdIvuTNRBaqC4JQSWgdiCJplWqOseC6D4s=w200-h300',

    'https://lh3.googleusercontent.com/N6v1kOpFmKhwcXHXJYIgkQDUai_MYYEy9NzEImUeGzkR8UlIibiF22LgCZIgUEYuOQllMA=w200-h300',

    'https://lh3.googleusercontent.com/cpvUwWnYh5wcz2MVQE2tTJFW8j3nBTzmPvt8QOiE7E8PIe8JEgRs4OymeJbUMg5yPUU=w200-h300',

    'https://lh3.googleusercontent.com/T3yCPyTEl5FY--PULgLp5q22DjvkndTZCBxPDf7Hl08yJRvo9SXpff0A83TZyP2vPoA=w200-h300',

  ];



  
  @override
  Widget build(BuildContext context) {
  
    return Container(


      child: ListView(

        scrollDirection: Axis.vertical,

        children: <Widget>[


          SizedBox(height: 10.0),


          CarouselContainer(),


          SizedBox(height: 20.0),


          InstalledApps(),


          SizedBox(height: 20.0),


          RecommendedApps(),


        ],

      ),

      
    );

  }





  //----CAROUSEL CONTAINER BEGINS -----


  Widget CarouselContainer(){

    return CarouselSlider(

      viewportFraction: 0.9,

      aspectRatio: 2.0,

      autoPlay: true,

      enlargeCenterPage: true,


      items: imgList.map(


        (url){

          return Container(


            margin: EdgeInsets.all(5.0),


            child: ClipRRect(

              borderRadius: BorderRadius.all(Radius.circular(5.0)),


              child: Image.network(
                
                url,

                fit: BoxFit.cover,

                width: 1000.0,
                
              ),


            ),


          );

        }

      ).toList(),


    );

  }

  //----END OF THE CAROUSEL CONTAINER  -----





  //----RECOMMENDED APP CONTAINER BEGINS----

  Widget RecommendedApps(){

    return Material(

      color: Colors.white,

      elevation: 14.0,

      shadowColor: Color(0x802196F3),

      child: Column(

        children: <Widget>[


          Padding(

            padding: EdgeInsets.all(8.0),

            child: labelContainer(
              
              'Recommended for you',
              
            ),

          ),


          Padding(

            padding: EdgeInsets.all(8.0),

            child: appsContainer(),

          ),


        ],

      ),

    );

  }

  //----END OF THE RECOMMENDED APP CONTAINER ----





  //----INSTALLED APP CONTAINER BEGINS -----

  Widget InstalledApps(){

    return Material(

      color: Colors.white,

      elevation: 14.0,

      shadowColor: Color(0x802196F3),

      child:  Column(

        children: <Widget>[


          Padding(

            padding: EdgeInsets.all(8.0),

            child: labelContainer('Most Popular Movies'),

          ),


          Padding(

            padding: EdgeInsets.all(8.0),

            child: appsRecommendedContainer(),

          ),


        ],

      ),

    );

  }

  //----END OF THE INSTALLED APP CONTAINER  -----



  //----LABEL CONTAINER BEGINS -----

  Widget labelContainer(String labelVal){

    return Container(

      height: 30.0,

      child: Row(

        mainAxisAlignment: MainAxisAlignment.spaceBetween,

        children: <Widget>[


          Text(
            
            labelVal,

            style: TextStyle(

              fontWeight: FontWeight.bold,

              fontSize: 20.0,

            ),

          ),


          Text(
            
            'MORE',

            style: TextStyle(

              color: Colors.green,

              fontWeight: FontWeight.bold,

              fontSize: 18.0,

            ),

          ),



        ],

      ),

    );

  }

  //----END OF THE LABEL CONTAINER -----





  //----IMAGE SECTIONS BEGINS -----

  Widget imageSection(String imageVal, String appVal,String rateVal) {

    return Column(

      children: <Widget>[


        Container(

          height: 100.0,

          width: 100.0,

          decoration: new BoxDecoration(

            image: DecorationImage(

              image: new NetworkImage(imageVal),

              fit: BoxFit.fill,

            ),

            borderRadius: BorderRadius.circular(20.0),

          ),

        ),


        SizedBox(height: 10.0),


        Text(

          appVal,

          style: TextStyle(

            color: Colors.black, 
            
            fontWeight: FontWeight.bold, 
            
            fontSize: 16.0
              
          ),

        ),


        SizedBox(height: 10.0),


        Row(
          
          children: <Widget>[

            Text(

              rateVal,

              style: TextStyle(

                color: Colors.black, 
                
                fontWeight: FontWeight.bold,
                
              ),
            
            ),

          ],
            
        )

      ],

    );

  }

  //----END OF THE IMAGE SECTIONS -----




  //----APPS RECOMMENDED CONTAINER BEGINS----

  Widget appsRecommendedContainer() {

    return Container(

      height: 160.0,

      child: ListView(

        scrollDirection: Axis.horizontal,

        children: <Widget>[


          imageSection(

            'https://lh3.googleusercontent.com/DsBRQqcXLpuqumHTFjUa5gMqnMkOt85xB7OrgSD0z4Ok9S7tPH-23bk5H9HMmaqIpDF_=w200-h300',

            'Shazam','\u0024 5.99'
          ),


          SizedBox(width: 20.0),


          imageSection(

            'https://lh3.googleusercontent.com/cpvUwWnYh5wcz2MVQE2tTJFW8j3nBTzmPvt8QOiE7E8PIe8JEgRs4OymeJbUMg5yPUU=w200-h300',

            'Battle Angel','\u0024 5.99'
            
          ),
            

          SizedBox(width: 20.0),


          imageSection(

            'https://lh3.googleusercontent.com/N4LKDxB7luv6Mnvx-iJ-n6Ij2h_IZXLDMNSPPb0TnR7AEyjvMsS5O8KY3rdJy7YB1lOmJQ=w200-h300',

            'Long Shot','\u0024 5.99'
          
          ),


          SizedBox(width: 20.0),


          imageSection(
            'https://lh3.googleusercontent.com/ckxZ0xzt3Rv8QKlVWd-3SacANTEOTY6iyTOE0QKdyOuqGSk1Veraw5hOiCBBEmFnHfc=w200-h300',

            'Avengers: Endgame','\u0024 19.99'
          
          ),


          SizedBox(width: 20.0),
          
          
          imageSection(

            'https://lh3.googleusercontent.com/bCFT6LWE9omSkP6rYg-p6gDgABsEFa1DmLl9VAd2KqkR-fFcQhuf2anQzB4omlO9o_npgw=w200-h300',

            'Detective Pikachu','\u0024 19.99'
          
          ),


          SizedBox(width: 20.0),


          imageSection(

            'https://lh3.googleusercontent.com/_1Ll-72tEUmj1h7Hiiwiws8jykbpoZW0mhs7ctcVpdSSGPeCLxKEo-kLB7RnzvgXx8Q=w200-h300',
          
            'CAPTAIN MARVEL','\u0024 4.99'
          
          ),

        ],

      )
      
    );
  }

  //----END OF THE APPS RECOMMENDED CONTAINER ----



  //----APPS CONTAINER BEGINS----

  Widget appsContainer() {

    return Container(

      height: 160.0,

      child: ListView(

        scrollDirection: Axis.horizontal,

        children: <Widget>[

          imageSection(

            'https://lh3.googleusercontent.com/oE89fThv4Jz8oquzHO_pkn2PwES88YM4FJtjBLsZv0ZMpS12ViAryUN0V7kTbtuzJ9l1=w200-h300-rw',

            'Avengers: Infinity War','\u0024 13.99'

          ),


          SizedBox(width: 20.0),


          imageSection(

            'https://lh3.googleusercontent.com/N2smvNyfhOUUdYFt8UDtenVY1A3A62reVWacPTRERjDYRex4dkVfrxrQJ1BMPQ1KSxXKvw=w200-h300-rw',

            'Rampage','\u0024 9.99'
            
          ),


          SizedBox(width: 20.0),


          imageSection(

            'https://lh3.googleusercontent.com/2L4KUuN8fXnkwh2S-C3exr2b-oTe3mIaspcB4RO6XG026yLYFmEMinLZCDOBxftDiZU=w200-h300-rw',

            'Fantastic Beasts','\u0024 9.99'

          ),


          SizedBox(width: 20.0),


          imageSection(
            
            'https://lh3.googleusercontent.com/Fh9Pvucut6_q7K1pNZXUlS94qG5R1hdCIYhbRrOn5yy8RJ-Bv-gWcXHT3cSEbc4RchxR=w200-h300-rw',

            'Ready Player One','\u0024 13.99'

          ),


          SizedBox(width: 20.0),


          imageSection(

            'https://lh3.googleusercontent.com/Ef2oPADcTmD3p_jRHiGf6pJuxdvalfj-NSAReeayRFaX3Ic2YM5Dh0r19erhmwWB-GS7=w200-h300-rw',

            'Despicable Me 3','\u0024 14.99'
            
          ),
        

          SizedBox(width: 20.0),


          imageSection(

            'https://lh3.googleusercontent.com/oDQDmSUZQbuOwzMDqWl_nAqG6UyqIPiQIlm59JTtDSOacBpha8i99yjzbsW_36eGKfQ=w200-h300-rw',

            'Captain Marvel','\u0024 14.99'
          ),

        ],

      )
      
    );

  }
  
  //----END OF THE APPS CONTAINER----

}