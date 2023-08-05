import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconsax/iconsax.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    List<String> list = ['Cappuccino', 'Machiato', 'Latte', 'Americano'];

    return Scaffold(
      body: SingleChildScrollView(
        physics: const ScrollPhysics(),
        child: Stack(
          children: [
            Container(
              height: 280,
              width: size.width,
              decoration: const BoxDecoration(color: Color(0xff131313)),
            ),
            Column(
              children: [
                Center(
                  child: SizedBox(
                    width: 315,
                    child: Column(
                      children: [
                        SizedBox(
                          height: size.height * 0.060,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Location",
                                  style: GoogleFonts.sora(
                                    color: const Color(0xffB7B7B7),
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                                Row(
                                  children: [
                                    Text(
                                      "Bilzen, Tanjungbalai",
                                      style: GoogleFonts.sora(
                                        color: const Color(0xffDDDDDD),
                                        fontSize: 14,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                    const Icon(
                                      Icons.keyboard_arrow_down,
                                      color: Colors.white,
                                    )
                                  ],
                                )
                              ],
                            ),
                            SizedBox(
                              width: 44,
                              height: 44,
                              child: Image.asset(
                                "assets/images/avatar.png",
                                fit: BoxFit.fill,
                              ),
                            )
                          ],
                        ),
                        SizedBox(
                          height: size.height * 0.030,
                        ),
                        SizedBox(
                          height: 52,
                          child: TextFormField(
                            decoration: InputDecoration(
                              filled: true,
                              fillColor: const Color(0xff313131),
                              contentPadding: const EdgeInsets.only(
                                top: 23,
                                bottom: 2,
                                right: 5,
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(16),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(16),
                              ),
                              hintText: "Search coffee",
                              hintStyle: GoogleFonts.sora(
                                color: const Color(0xff989898),
                              ),
                              prefixIcon: const Icon(
                                Iconsax.search_normal,
                                color: Colors.white,
                                size: 20,
                              ),
                              suffixIcon: Container(
                                width: 44,
                                height: 44,
                                padding: const EdgeInsets.all(8),
                                decoration: BoxDecoration(
                                  color: const Color(0xffC67C4E),
                                  borderRadius: BorderRadius.circular(12),
                                ),
                                child: const Icon(
                                  Iconsax.setting_4,
                                  color: Colors.white,
                                  size: 20,
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: size.height * 0.020,
                        ),
                        Container(
                          width: 315,
                          height: 140,
                          decoration: BoxDecoration(
                            image: const DecorationImage(
                              image: AssetImage("assets/images/banner.png"),
                              fit: BoxFit.contain,
                            ),
                            borderRadius: BorderRadius.circular(16),
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
                                Text(
                                  "Buy one get \none FREE",
                                  style: GoogleFonts.sora(
                                    fontSize: 32,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.white,
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          height: size.height * 0.030,
                        ),
                        SizedBox(
                          height: 40,
                          child: SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Row(
                              children: List.generate(
                                list.length,
                                (index) => Container(
                                  width: 121,
                                  height: 38,
                                  margin: const EdgeInsets.only(
                                    right: 8,
                                  ),
                                  alignment: Alignment.center,
                                  decoration: BoxDecoration(
                                    color: index == 0
                                        ? const Color(0xffC67C4E)
                                        : Colors.white,
                                    borderRadius: BorderRadius.circular(12),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.white.withOpacity(0.9),
                                        spreadRadius: 1,
                                        blurRadius: 2,
                                      ),
                                    ],
                                  ),
                                  child: Text(
                                    list[index],
                                    style: GoogleFonts.sora(
                                      color: index == 0
                                          ? Colors.white
                                          : Colors.black,
                                      fontSize: 14,
                                      fontWeight: index == 0
                                          ? FontWeight.w600
                                          : FontWeight.w400,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  height: 600,
                  width: 315,
                  alignment: Alignment.center,
                  child: GridView(
                    gridDelegate:
                        const SliverGridDelegateWithMaxCrossAxisExtent(
                      maxCrossAxisExtent: 250,
                      childAspectRatio: 3/2,
                      crossAxisSpacing: 40,
                      mainAxisSpacing: 150,
                    ),
                    children: [
                      Container(
                        height: 500,
                        alignment: Alignment.center,
                        decoration: const BoxDecoration(
                          color: Colors.white,
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              width: 141,
                              height: 132,
                              child: Image.asset(
                                "assets/images/1.png",
                                fit: BoxFit.fill,
                              ),
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            Text(
                              "Cappucino",
                              style: GoogleFonts.sora(
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                                color: const Color(0xff2F2D2C),
                              ),
                            ),
                            Text(
                              'with Chocolate',
                              style: GoogleFonts.sora(
                                fontSize: 12,
                                fontWeight: FontWeight.w400,
                                color: const Color(0xff9B9B9B),
                              ),
                            ),
                            const SizedBox(
                              height: 0.080,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "\$ 4.53",
                                  style: GoogleFonts.sora(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w600,
                                    color: Color(0xff2F4B4E),
                                  ),
                                ),
                                GestureDetector(
                                  onTap: () => {},
                                  child: Container(
                                    width: 32,
                                    height: 32,
                                    decoration: BoxDecoration(
                                      color: Color(0xffC67C4E),
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    child: Icon(
                                      Icons.add,
                                      color: Colors.white,
                                    ),
                                  ),
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                      Container(
                        height: 500,
                        alignment: Alignment.center,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              width: 141,
                              height: 132,
                              child: Image.asset(
                                "assets/images/2.png",
                                fit: BoxFit.fill,
                              ),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Text(
                              "Cappucino",
                              style: GoogleFonts.sora(
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                                color: Color(0xff2F2D2C),
                              ),
                            ),
                            Text(
                              'with Oat Milk',
                              style: GoogleFonts.sora(
                                fontSize: 12,
                                fontWeight: FontWeight.w400,
                                color: Color(0xff9B9B9B),
                              ),
                            ),
                            const SizedBox(
                              height: 0.080,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "\$ 4.53",
                                  style: GoogleFonts.sora(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w600,
                                    color: Color(0xff2F4B4E),
                                  ),
                                ),
                                GestureDetector(
                                  onTap: () => {},
                                  child: Container(
                                    width: 32,
                                    height: 32,
                                    decoration: BoxDecoration(
                                      color: Color(0xffC67C4E),
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    child: Icon(
                                      Icons.add,
                                      color: Colors.white,
                                    ),
                                  ),
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                      Container(
                        height: 500,
                        alignment: Alignment.center,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              width: 141,
                              height: 132,
                              child: Image.asset(
                                "assets/images/3.png",
                                fit: BoxFit.fill,
                              ),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Text(
                              "Cappucino",
                              style: GoogleFonts.sora(
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                                color: Color(0xff2F2D2C),
                              ),
                            ),
                            Text(
                              'with Chocolate',
                              style: GoogleFonts.sora(
                                fontSize: 12,
                                fontWeight: FontWeight.w400,
                                color: Color(0xff9B9B9B),
                              ),
                            ),
                            const SizedBox(
                              height: 0.080,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "\$ 4.53",
                                  style: GoogleFonts.sora(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w600,
                                    color: Color(0xff2F4B4E),
                                  ),
                                ),
                                GestureDetector(
                                  onTap: () => {},
                                  child: Container(
                                    width: 32,
                                    height: 32,
                                    decoration: BoxDecoration(
                                      color: Color(0xffC67C4E),
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    child: Icon(
                                      Icons.add,
                                      color: Colors.white,
                                    ),
                                  ),
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                      Container(
                        height: 500,
                        alignment: Alignment.center,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              width: 141,
                              height: 132,
                              child: Image.asset(
                                "assets/images/4.png",
                                fit: BoxFit.fill,
                              ),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Text(
                              "Cappucino",
                              style: GoogleFonts.sora(
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                                color: Color(0xff2F2D2C),
                              ),
                            ),
                            Text(
                              'with Chocolate',
                              style: GoogleFonts.sora(
                                fontSize: 12,
                                fontWeight: FontWeight.w400,
                                color: Color(0xff9B9B9B),
                              ),
                            ),
                            const SizedBox(
                              height: 0.080,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "\$ 4.53",
                                  style: GoogleFonts.sora(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w600,
                                    color: Color(0xff2F4B4E),
                                  ),
                                ),
                                GestureDetector(
                                  onTap: () => {},
                                  child: Container(
                                    width: 32,
                                    height: 32,
                                    decoration: BoxDecoration(
                                      color: Color(0xffC67C4E),
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    child: Icon(
                                      Icons.add,
                                      color: Colors.white,
                                    ),
                                  ),
                                )
                              ],
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
