import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:news_app/models/destination_list.dart';

class HorizontalGrid extends StatelessWidget {
  HorizontalGrid({super.key});

  final cardList = DestinationList();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.40,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemExtent: 300,
        itemCount: cardList.cardList.length,
        itemBuilder: (context, index) {
          final cardData = cardList.cardList[index];
          return Padding(
            padding: const EdgeInsets.only(left: 5),
            child: GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, '/news_detail');
              },
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16),
                ),
                color: Colors.white,
                child: Padding(
                  padding: const EdgeInsets.all(12),
                  child: Column(
                    children: [
                      Expanded(
                        flex: 2,
                        child: Container(
                          height: 100,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(13),
                            image: DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage(cardData.image),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Expanded(
                        child: Text(
                          cardData.title,
                          style: GoogleFonts.poppins(
                            textStyle: const TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        child: ListTile(
                          contentPadding: const EdgeInsets.symmetric(horizontal: 1),
                          title: Text(
                            cardData.author,
                            maxLines: 2,
                            style: GoogleFonts.poppins(
                              textStyle: const TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                          subtitle: Text(
                            cardData.date,
                            style: GoogleFonts.poppins(
                              textStyle: const TextStyle(
                                fontSize: 13,
                                fontWeight: FontWeight.normal,
                                color: Color(0xFF9397A0),
                              ),
                            ),
                          ),
                          trailing: GestureDetector(
                            onTap: () {
                              Navigator.pushNamed(context, '/news_detail');
                            },
                            child: Container(
                              padding: const EdgeInsets.all(10),
                              width: 45,
                              height: 45,
                              decoration: BoxDecoration(
                                color: const Color(0xffEFF5F4),
                                borderRadius: BorderRadius.circular(12),
                              ),
                              child: SvgPicture.asset(cardData.shareIcon),
                            ),
                          ),
                          leading: CircleAvatar(
                            radius: 20,
                            backgroundImage: AssetImage(cardData.profileImage),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
