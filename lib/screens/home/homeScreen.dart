import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:travel_ui_app/models/beach_model.dart';
import 'package:travel_ui_app/models/popular_model.dart';
import 'package:travel_ui_app/screens/home/bottom_navigation_bar.dart';
import 'package:travel_ui_app/screens/home/categoris.dart';
import 'package:travel_ui_app/screens/home/travel_carousel.dart';
import 'package:travel_ui_app/screens/utils/constants.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
 Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: buildAppBar(),
      body: SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Explore The Nature',
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 25,
                  ),
                ),
              ],
            ),
          ),
        Categorylist(),
        TravelCarousel(),
              /// Text Widget for Popular Categories
              Padding(
                padding: EdgeInsets.only(top: 48, left: 28.8, right: 28.8),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      width: MediaQuery.of(context).size.width*0.4,
                      child: FittedBox(
                        child: Text(
                          'Popular Categories',
                          style: GoogleFonts.playfairDisplay(
                            fontWeight: FontWeight.w700,
                            color: Color(0xFF000000),
                          ),
                        ),
                      ),
                    ),
                    Container(width: MediaQuery.of(context).size.width*0.1,
                      child: FittedBox(
                        child: Text(
                          'Show All ',
                          style: GoogleFonts.lato(
                            fontWeight: FontWeight.w500,
                            color: Color(0xFF8a8a8a),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),

              /// ListView for Popular Categories Section
              Container(
                margin: EdgeInsets.only(top: 33.6),
                height: 45.6,
                child: ListView.builder(
                  itemCount: populars.length,
                  scrollDirection: Axis.horizontal,
                  physics: BouncingScrollPhysics(),
                  padding: EdgeInsets.only(left: 28.8, right: 9.6),
                  itemBuilder: (context, index) {
                    return Container(
                      margin: EdgeInsets.only(right: 19.2),
                      height: 45.6,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(9.6),
                        color: Color(populars[index].color),
                      ),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          SizedBox(
                            width: 19.2,
                          ),
                          Image.asset(
                            populars[index].image,
                            height: 16.8,
                          ),
                          SizedBox(
                            width: 19.2,
                          )
                        ],
                      ),
                    );
                  },
                ),
              ),

              /// ListView for Beach Section
              Container(
                margin: EdgeInsets.only(top: 28.8, bottom: 16.8),
                height: 124.8,
                child: ListView.builder(
                  itemCount: beaches.length,
                  padding: EdgeInsets.only(left: 28.8, right: 12),
                  scrollDirection: Axis.horizontal,
                  physics: BouncingScrollPhysics(),
                  itemBuilder: (context, index) {
                    return Container(
                      height: 124.8,
                      width: 188.4,
                      margin: EdgeInsets.only(right: 16.8),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(9.6),
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image:
                              CachedNetworkImageProvider(beaches[index].image),
                        ),
                      ),
                    );
                  },
                ),
              )        
        ],
      ),
    ),
    bottomNavigationBar:BottomNavigationBarTravel(),
    );
  }
}

  AppBar buildAppBar() {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 0,
      leading: IconButton(
        padding: EdgeInsets.only(left: kDefaultPadding),
        icon: Icon(Icons.menu_sharp,color: Colors.black,),
        onPressed: () {},
      ),
      actions: <Widget>[
        IconButton(
          padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
          icon: Icon(Icons.notifications,color: Colors.black,),
          onPressed: () {},
        ),
      ],
    );
  }