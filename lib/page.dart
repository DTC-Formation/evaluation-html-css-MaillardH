import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MonPage extends StatefulWidget {
  const MonPage({super.key});

  @override
  State<MonPage> createState() => _MonPageState();
}

Color color_1 = Color.fromARGB(255, 13, 1, 63);
Color color_2 = Colors.white;
Color color_3 = Colors.black;
Color color_4 = Color.fromARGB(255, 250, 92, 80);
Color color_5 = Color.fromARGB(255, 250, 182, 80);

class _MonPageState extends State<MonPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(60),
        child: AppBar(
          backgroundColor: color_2,
          elevation: 8,
          actions: [
            Container(
              height: 50,
              width: 50,
              margin: EdgeInsets.only(right: 15),
              child: Builder(
                builder: (context) => IconButton(
                  onPressed: () => Scaffold.of(context).openEndDrawer(),
                  icon: SvgPicture.asset(
                    'assets/images/icon-menu.svg',
                    semanticsLabel: 'svg',
                  ),
                ),
              ),
            ),
          ],
          title: Container(
            height: 40,
            width: 40,
            child: SvgPicture.asset(
              'assets/images/logo.svg',
              semanticsLabel: 'svg',
            ),
          ),
        ),
      ),
      endDrawer: Drawer(
        child: Container(
          margin: EdgeInsets.only(right: 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              SizedBox(
                height: 60,
              ),
              IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: SvgPicture.asset(
                  'assets/images/icon-menu-close.svg',
                  semanticsLabel: 'svg',
                ),
              ),
              SizedBox(
                height: 80,
              ),
              /* Container(
                height: 120,
                child: DrawerHeader(
                  /* decoration: BoxDecoration(
                    color: Colors.blue,
                  ), */
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                     
                      SizedBox(
                        width: 30,
                      ),
                    ],
                  ),
                ),
              ), */
              ListTile(
                leading: Icon(Icons.home),
                title: Text('Home'.toUpperCase()),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              ListTile(
                leading: Icon(Icons.fiber_new),
                title: Text('New'.toUpperCase()),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              ListTile(
                leading: Icon(Icons.star),
                title: Text('Popular'.toUpperCase()),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              ListTile(
                leading: Icon(Icons.trending_up),
                title: Text('Trending'.toUpperCase()),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              ListTile(
                leading: Icon(Icons.category),
                title: Text('Categories'.toUpperCase()),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
            ],
          ),
        ),
      ),
      body: /* LayoutBuilder(
        builder: (context, constraints) {
          double screenWidth = constraints.maxWidth;

          return  */
          SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              // margin: EdgeInsets.all(screenWidth * 0.03),
              margin: EdgeInsets.all(20),
              height: 320,
              // width: (screenWidth - (screenWidth * 0.05)),
              child: Image.asset(
                'assets/images/image-01-mobile.jpg',
                fit: BoxFit.cover,
              ),
            ),
            Container(
              margin: EdgeInsets.all(20),
              // margin: EdgeInsets.all(screenWidth * 0.03),
              child: Text(
                'The Bright\nFuture of Web\n3.0?',
                style: TextStyle(
                    color: color_1,
                    fontFamily: 'Inter',
                    height: 1.1,
                    fontWeight: FontWeight.w900,
                    fontSize: 40),
              ),
            ),
            Container(
              margin: EdgeInsets.all(20),
              // margin: EdgeInsets.all(screenWidth * 0.03),
              child: Text(
                'We dive into the next evolution of the web that claims to put the power of the platforms back into the handes of the people. But is it really fulfilling its promise?',
                style: TextStyle(
                    fontFamily: 'Inter', fontSize: 17, color: color_1),
              ),
            ),
            Container(
              color: color_4,
              margin: EdgeInsets.all(15),
              padding: EdgeInsets.symmetric(horizontal: 30, vertical: 8),
              child: Text(
                'Read more'.toUpperCase(),
                style: TextStyle(
                  color: color_2,
                  fontFamily: 'Inter',
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
            ),
            Container(
              color: color_1,
              margin: EdgeInsets.all(20),
              padding: EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'New'.toUpperCase(),
                    style: TextStyle(
                        color: color_5,
                        fontFamily: 'Inter',
                        fontSize: 30,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 10),
                  RichText(
                    text: TextSpan(
                      text: 'Hydogen VS Electic Cars\n',
                      style: TextStyle(
                          color: color_2,
                          fontSize: 17,
                          fontWeight: FontWeight.w900,
                          fontFamily: 'Inter',
                          height: 1.5),
                      children: [
                        TextSpan(
                          text:
                              'Will hydrogen-fueled cars ever catch up to EVs',
                          style: TextStyle(
                            color: color_2,
                            fontSize: 14,
                            fontFamily: 'Inter',
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 10),
                  Divider(),
                  SizedBox(height: 10),
                  RichText(
                    text: TextSpan(
                      text: 'The dowonsides of AI Artistry\n',
                      style: TextStyle(
                          color: color_2,
                          fontSize: 17,
                          fontWeight: FontWeight.w900,
                          fontFamily: 'Inter',
                          height: 1.5),
                      children: [
                        TextSpan(
                          text:
                              'What are the possible adverse effects of on-demand Ai image generation?',
                          style: TextStyle(
                            color: color_2,
                            fontSize: 14,
                            fontFamily: 'Inter',
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 10),
                  Divider(),
                  SizedBox(height: 10),
                  RichText(
                    text: TextSpan(
                      text: 'Is VC Funding Drying Up\n',
                      style: TextStyle(
                          color: color_2,
                          fontSize: 17,
                          fontWeight: FontWeight.w900,
                          fontFamily: 'Inter',
                          height: 1.5),
                      children: [
                        TextSpan(
                          text:
                              'Private funding by VC firms is down 50% YOY. We take a look at what that means',
                          style: TextStyle(
                            color: color_2,
                            fontSize: 14,
                            fontFamily: 'Inter',
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            contenue('image-retro.jpg', '01', 'Reviving Retro PCs',
                'What happens when old PCs\nare given modern upgrades?'),
            contenue('image-gaming.jpg', '02', 'Top 10 Laptops of 2022',
                'Our best picks for various\nneeds and budgets.'),
            contenue('image-clavier.jpg', '01', 'The Growth of Gaming',
                'How the pandemic has\nsparked fresh opportunities'),
          ],
        ),
      ),
      //   },
      // ),
    );
  }

  Widget contenue(
      String image, String index, String title, String description) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            height: 130,
            width: 90,
            child: Image.asset(
              'assets/images/$image',
              fit: BoxFit.cover,
            ),
          ),
          Container(
            margin: EdgeInsets.only(right: 0, left: 20),
            padding: EdgeInsets.only(
              bottom: 20,
            ),
            child: RichText(
              text: TextSpan(
                text: '$index\n',
                style: TextStyle(
                  color: Color.fromARGB(255, 154, 139, 168),
                  fontSize: 40,
                  fontWeight: FontWeight.w900,
                  fontFamily: 'Inter',
                  height: 1.8,
                ),
                children: [
                  TextSpan(
                    text: '$title\n',
                    style: TextStyle(
                      color: color_1,
                      fontSize: 17,
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w900,
                      height: 1.8,
                    ),
                  ),
                  TextSpan(
                    text: '$description',
                    style: TextStyle(
                      color: color_1,
                      fontSize: 14,
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.normal,
                      height: 1.8,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
