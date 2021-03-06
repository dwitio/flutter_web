import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LandingPage extends StatefulWidget {
  const LandingPage({Key? key}) : super(key: key);

  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  int selectedValue = 0;

  @override
  Widget build(BuildContext context) {
    Widget navItem({required String title, required int index}) {
      return InkWell(
        onTap: () {
          setState(() {
            selectedValue = index;
          });
        },
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              title,
              style: GoogleFonts.poppins(
                  color: const Color(0xff1D1E3C),
                  fontSize: 18,
                  fontWeight: index == selectedValue ? FontWeight.w500 : FontWeight.w300
              ),
            ),
            Container(
              width: 66,
              height: 2,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: index == selectedValue ? const Color(0xffFE998D) : Colors.transparent,
              ),
            ),
          ],
        ),
      );
    }
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            'background.png',
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            fit: BoxFit.fill,
          ),
          SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(
                  horizontal: 100,
                  vertical: 30
              ),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Image.asset(
                        'logo.png',
                        width: 72,
                        height: 40,
                      ),
                      Row(
                        children: [
                          navItem(
                            title: 'Guides',
                            index: 0
                          ),
                          const SizedBox(
                            width: 50,
                          ),
                          navItem(
                              title: 'Pricing',
                              index: 1
                          ),
                          const SizedBox(
                            width: 50,
                          ),
                          navItem(
                              title: 'Team',
                              index: 2
                          ),
                          const SizedBox(
                            width: 50,
                          ),
                          navItem(
                              title: 'Stories',
                              index: 3
                          ),
                        ],
                      ),
                      Image.asset(
                        'button_account.png',
                        width: 163,
                        height: 53,
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 76,
                  ),
                  Image.asset(
                    'illustration.png',
                    height: 550,
                  ),
                  const SizedBox(
                    height: 84,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        'icon.png',
                        width: 24,
                      ),
                      const SizedBox(
                        width: 13,
                      ),
                      Text(
                        'Scroll to Learn More',
                        style: GoogleFonts.poppins(
                          color: Colors.black,
                          fontSize: 20
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
