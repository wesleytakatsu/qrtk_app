import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:qrtk_app/components/home_grid_dashboard.dart';

class HomePerson extends StatefulWidget {
  const HomePerson({super.key});

  @override
  State<HomePerson> createState() => _HomePersonState();
}

class _HomePersonState extends State<HomePerson> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff392850),
      body: Column(
        children: <Widget>[
          const SizedBox(
            height: 110,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 16, right: 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      "Johny's Family",
                      style: GoogleFonts.openSans(
                          textStyle: const TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.bold)),
                    ),
                    const SizedBox(
                      height: 4,
                    ),
                    Text(
                      "Home",
                      style: GoogleFonts.openSans(
                          textStyle: const TextStyle(
                              color: Color(0xffa29aac),
                              fontSize: 14,
                              fontWeight: FontWeight.w600)),
                    ),
                  ],
                ),
                IconButton(
                  alignment: Alignment.topCenter,
                  icon: Image.asset(
                    "images/assets/notification.png",
                    width: 24,
                  ),
                  onPressed: () {},
                )
              ],
            ),
          ),
          const SizedBox(
            height: 40,
          ),
          const GridDashboard()
        ],
      ),
    );
  }
}
