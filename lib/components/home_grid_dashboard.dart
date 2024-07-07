
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class GridDashboard extends StatefulWidget {

  const GridDashboard({super.key});

  @override
  State<GridDashboard> createState() => _GridDashboardState();
}

class _GridDashboardState extends State<GridDashboard> {
  Items item1 = Items(
      title: "Calendar",
      subtitle: "Check Verifications Dates",
      event: "3 Events",
      img: "images/assets/calendar.png");

  Items item2 = Items(
    title: "Scan",
    subtitle: "QRCode Scanner",
    event: "",
    img: "images/assets/qrcodescan.png",
  );

  Items item3 = Items(
    title: "Locations",
    subtitle: "Tracking Using Code",
    event: "",
    img: "images/assets/map.png",
  );

  Items item4 = Items(
    title: "Business",
    subtitle: "Registered Business",
    event: "",
    img: "images/assets/company.png",
  );

  Items item5 = Items(
    title: "Notes List",
    subtitle: "Every Notes in Trackers",
    event: "4 Items",
    img: "images/assets/todo.png",
  );

  Items item6 = Items(
    title: "Settings",
    subtitle: "Language, Theme, etc.",
    event: "",
    img: "images/assets/setting.png",
  );

  @override
  Widget build(BuildContext context) {
    List<Items> myList = [item1, item2, item3, item4, item5, item6];
    var color = 0xff453658;
    return Flexible(
      child: GridView.count(
          childAspectRatio: 1.0,
          padding: const EdgeInsets.only(left: 16, right: 16),
          crossAxisCount: 2,
          crossAxisSpacing: 18,
          mainAxisSpacing: 18,
          children: myList.map((data) {
            return Container(
              decoration: BoxDecoration(
                  color: Color(color), borderRadius: BorderRadius.circular(10)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Image.asset(
                    data.img,
                    width: 42,
                  ),
                  const SizedBox(
                    height: 14,
                  ),
                  Text(
                    data.title,
                    style: GoogleFonts.openSans(
                        textStyle: const TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.w600)),
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  Text(
                    data.subtitle,
                    style: GoogleFonts.openSans(
                        textStyle: const TextStyle(
                            color: Colors.white38,
                            fontSize: 10,
                            fontWeight: FontWeight.w600)),
                  ),
                  const SizedBox(
                    height: 14,
                  ),
                  Text(
                    data.event,
                    style: GoogleFonts.openSans(
                        textStyle: const TextStyle(
                            color: Colors.white70,
                            fontSize: 11,
                            fontWeight: FontWeight.w600)),
                  ),
                ],
              ),
            );
          }).toList()),
    );
  }
}

class Items {
  String title;
  String subtitle;
  String event;
  String img;
  Items({required this.title, required this.subtitle, required this.event, required this.img});
}
