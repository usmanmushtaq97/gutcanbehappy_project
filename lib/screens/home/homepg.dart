import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gutcanbehappy_project/screens/home/widgets/section_title.dart';
import 'package:gutcanbehappy_project/screens/home/widgets/special_offers.dart';
import '../../navigation_drawer_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Gut Can Be Happy"),
        ),
        body: Column(
          children: <Widget>[
            SizedBox(height: 10),
            Container(
              // height: 90,
              width: double.infinity,
              margin: EdgeInsets.all(5),
              padding: EdgeInsets.symmetric(
                horizontal: 20,
                vertical: 25,
              ),
              decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Text.rich(
                TextSpan(
                  style: TextStyle(color: Colors.white),
                  children: [
                    TextSpan(text: "Your Fitness in Your Hand\n"),
                    TextSpan(
                      text: "Get  20% off",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: SectionTitle(title: "Category", press:(){}),
            ),
        
            Categoreis(),
           SizedBox(height: 19),
            SpecialOffers(),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: SectionTitle(title: "Popular Products", press:(){}),
            ),
            // Column(
            //               children: <Widget>[
            //     SizedBox(width: 100,
            //     child: AspectRatio(aspectRatio: 1.02,
            //     child: Container(
            //       decoration: BoxDecoration(
            //         color: Colors.grey,
            //
            //       ),
            //       child: Image.asset(products[0].image),
            //     ),
            //     ),)
            //
            //   ],
            // ),
      
          ],
        ),
        drawer: NavigationDrawerWidget());
  }
}



class Categoreis extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<Map<String, dynamic>> categories = [
      {"icon": "assets/icons/back.svg", "text": "Test C"},
      {"icon": "assets/icons/back.svg", "text": "Test C"},
      {"icon": "assets/icons/back.svg", "text": "Game"},
      {"icon": "assets/icons/back.svg", "text": "Daily Gift"},
      {"icon": "assets/icons/back.svg", "text": "More"},
    ];

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          ...List.generate(
              categories.length,
              (index) => CategoryCard(
                  icon: categories[index]["icon"],
                  text: categories[index]["text"],
                  press: () {}))
        ],
      ),
    );
  }
}

class CategoryCard extends StatelessWidget {
  const CategoryCard(
      {Key? key, required this.icon, required this.text, required this.press})
      : super(key: key);

  final String icon, text;
  final GestureTapCallback press;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        GestureDetector(
          onTap: press,
          child: SizedBox(
            width: 60,
            child: AspectRatio(
              aspectRatio: 1,
              child: Container(
                padding: EdgeInsets.all(15),
                decoration: BoxDecoration(
                  color: Colors.orangeAccent,
                  borderRadius: BorderRadius.circular(8.0),
                ),
                child: SvgPicture.asset(icon),
              ),
            ),
          ),
        ),
        const SizedBox(
          height: 5,
        ),
        Text(
          text,
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}
