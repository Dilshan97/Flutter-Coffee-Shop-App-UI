import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BannerCard extends StatefulWidget {
  const BannerCard({super.key});

  @override
  State<BannerCard> createState() => _BannerCardState();
}

class _BannerCardState extends State<BannerCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 315,
      height: 140,
      decoration: BoxDecoration(
        image: const DecorationImage(
          image: AssetImage("assets/images/banner.png"),
          fit: BoxFit.contain,
        ),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 60,
              height: 26,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: const Color(0xffED5151),
                borderRadius: BorderRadius.circular(8),
              ),
              child: Text(
                "Promo",
                style: GoogleFonts.sora(
                  color: Colors.white,
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            Stack(
              children: [
                Positioned(
                  top: 17,
                  child: Container(
                    width: 200,
                    height: 27,
                    decoration: const BoxDecoration(
                      color: Color(0xff1C1C1C),
                    ),
                  ),
                ),
                Text(
                  "Buy one get",
                  style: GoogleFonts.sora(
                    fontSize: 32,
                    fontWeight: FontWeight.w600,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
            Stack(
              children: [
                Positioned(
                  top: 17,
                  child: Container(
                    width: 149,
                    height: 23,
                    decoration: const BoxDecoration(
                      color: Color(0xff1C1C1C),
                    ),
                  ),
                ),
                Text(
                  "one FREE",
                  style: GoogleFonts.sora(
                    fontSize: 32,
                    fontWeight: FontWeight.w600,
                    color: Colors.white,
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
