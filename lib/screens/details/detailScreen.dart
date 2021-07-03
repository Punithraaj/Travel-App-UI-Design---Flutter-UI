import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import 'package:travel_ui_app/models/destinationInfo.dart';

class DetailsScreen extends StatelessWidget {
  final _pageController = PageController();
  final DestinationInfo dest;

  DetailsScreen({
    Key? key,
    required this.dest,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Stack(
          children: <Widget>[
            /// PageView for Image
            PageView(
              controller: _pageController,
              scrollDirection: Axis.horizontal,
              children: List.generate(
                dest.images.length,
                (int index) => Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: CachedNetworkImageProvider(
                          dest.images[index]),
                    ),
                  ),
                ),
              ),
            ),

            /// Custom Button
            SafeArea(
              child: Container(
                height: 57.6,
                margin: EdgeInsets.only(top: 28.8, left: 28.8, right: 28.8),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    GestureDetector(
                      onTap: () {
                        Navigator.of(context).pop();
                      },
                      child: Container(
                        height: 57.6,
                        width: 57.6,
                        padding: EdgeInsets.all(18),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(9.6),
                          color: Color(0x10000000),
                        ),
                        child:
                            SvgPicture.asset('assets/icons/icon_left_arrow.svg'),
                      ),
                    ),
                    FavoriteButton()
                  ],
                ),
              ),
            ),

            /// Content
            Align(
              alignment: Alignment.bottomLeft,
              child: Container(
                constraints: BoxConstraints(
                  minHeight: MediaQuery.of(context).size.height * 0.5,
                    maxHeight: MediaQuery.of(context).size.height * 0.5),
                padding: EdgeInsets.only(left: 28.8, top: 110, right: 28.8),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    SmoothPageIndicator(
                      controller: _pageController,
                      count: dest.images.length,
                      effect: ExpandingDotsEffect(
                          activeDotColor: Color(0xFFFFFFFF),
                          dotColor: Color(0xFFababab),
                          dotHeight: 4.8,
                          dotWidth: 6,
                          spacing: 4.8),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 10),
                      child: Text(
                        dest.tagLine,
                        maxLines: 2,
                        overflow: TextOverflow.fade,
                        style: GoogleFonts.playfairDisplay(
                            fontSize: 28,
                            fontWeight: FontWeight.w700,
                            color: Colors.white),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 10),
                      child: Text(
                        dest.description,
                        maxLines: 4,
                        overflow: TextOverflow.fade,
                        style: GoogleFonts.lato(
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            color: Colors.white),
                      ),
                    ),
                    SizedBox(
                      height: 48,
                    ),
                    Container(
                      alignment: Alignment.centerRight,
                      child:ElevatedButton(
                          child: Text(
                            "Explore now",
                            style: TextStyle(fontSize: 16)
                            ),
                          style: ButtonStyle(
                            foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
                            backgroundColor: MaterialStateProperty.all<Color>(Colors.red),
                            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(18.0),
                                side: BorderSide(color: Colors.red)
                              )
                            )
                          ),
                          onPressed: () => null
                        )
                      )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}


/// FavoriteButton Icon
class FavoriteButton extends StatefulWidget {
  @override
  _FavoriteButtonState createState() => _FavoriteButtonState();
}

class _FavoriteButtonState extends State<FavoriteButton> {
  bool isFavorite = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        height: 57.6,
        width: 57.6,
        padding: EdgeInsets.all(18),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(9.6),
          color: Color(0x10000000),
        ),
        child: SvgPicture.asset(isFavorite
            ? 'assets/icons/icon_heart_fill_red.svg'
            : 'assets/icons/icon_heart_fill.svg'),
      ),
      onTap: () {
        setState(() {
          isFavorite = !isFavorite;
        });
      },
    );
  }
}