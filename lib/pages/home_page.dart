import 'package:flutter/material.dart';
import 'package:moda_app/pages/detail_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with TickerProviderStateMixin {
  late TabController _tabController;
  @override
  void initState() {
    //
    super.initState();
    _tabController = TabController(length: 4, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    String appNameTitle = 'Discovery';
    String fontPath = 'assets/fonts/fonts.ttf';
    return Scaffold(
      bottomNavigationBar: Material(
        child: TabBar(
          controller: _tabController,
          tabs: const [
            Tab(
              icon: Icon(
                Icons.more,
                color: Colors.grey,
                size: 22,
              ),
            ),
            Tab(
              icon: Icon(
                Icons.play_arrow,
                color: Colors.grey,
                size: 22,
              ),
            ),
            Tab(
              icon: Icon(
                Icons.navigation,
                color: Colors.grey,
                size: 22,
              ),
            ),
            Tab(
              icon: Icon(
                Icons.supervised_user_circle,
                color: Colors.grey,
                size: 22,
              ),
            ),
          ],
        ),
      ),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: Text(
          appNameTitle,
          style: TextStyle(
            color: Colors.black,
            fontFamily: fontPath,
            fontSize: 24,
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 16.0),
            child: IconButton(
              icon: const Icon(
                Icons.photo_camera,
                color: Colors.black,
              ),
              onPressed: () {},
            ),
          ),
        ],
      ),
      body: ListView(
        padding: const EdgeInsets.only(top: 10),
        children: [
          SizedBox(
            //color: Colors.blue.shade300,
            height: 140,
            width: double.infinity,
            child: ListView(
              //itemExtent: 96,
              padding: const EdgeInsets.all(19),
              scrollDirection: Axis.horizontal,
              children: [
                listItem('assets/images/model1.jpeg',
                    'assets/images/chanellogo.jpg'),
                const SizedBox(
                  width: 30,
                ),
                listItem(
                    'assets/images/model2.jpeg', 'assets/images/chloelogo.png'),
                const SizedBox(
                  width: 30,
                ),
                listItem('assets/images/model3.jpeg',
                    'assets/images/louisvuitton.jpg'),
                const SizedBox(
                  width: 30,
                ),
                listItem('assets/images/model1.jpeg',
                    'assets/images/chanellogo.jpg'),
                const SizedBox(
                  width: 30,
                ),
                listItem('assets/images/model1.jpeg',
                    'assets/images/chanellogo.jpg'),
                const SizedBox(
                  width: 30,
                ),
                listItem(
                    'assets/images/model2.jpeg', 'assets/images/chloelogo.png'),
                const SizedBox(
                  width: 30,
                ),
                listItem('assets/images/model3.jpeg',
                    'assets/images/louisvuitton.jpg'),
                const SizedBox(
                  width: 30,
                ),
                listItem('assets/images/model1.jpeg',
                    'assets/images/chanellogo.jpg'),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Material(
              elevation: 4,
              borderRadius: BorderRadius.circular(16),
              //color: Colors.blue.shade300,
              child: Container(
                padding: const EdgeInsets.all(16),
                height: 540,
                width: double.infinity,
                child: Column(
                  children: [
                    Row(
                      children: [
                        Container(
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                            shape: BoxShape.rectangle,
                            borderRadius: BorderRadius.circular(20),
                            image: const DecorationImage(
                              image: AssetImage('assets/images/model1.jpeg'),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        SizedBox(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              Text(
                                'Daisy',
                                style: TextStyle(
                                    fontFamily: 'MoonFont',
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16),
                              ),
                              Text(
                                '34 mins ago',
                                style: TextStyle(
                                    fontFamily: 'MoonFont',
                                    fontWeight: FontWeight.bold,
                                    fontSize: 10,
                                    color: Colors.blueGrey),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width - 186,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: const [
                              Icon(
                                Icons.more_vert,
                                color: Colors.blueGrey,
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const Text(
                      'This official website features a ribbed knit zipper jacket that is and stylissh. It looks very temparament and is recommend to friends.',
                      style: TextStyle(
                        fontFamily: 'MoonFont',
                        color: Colors.blueGrey,
                        fontWeight: FontWeight.w200,
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    SizedBox(
                      width: double.infinity,
                      height: 250,
                      //color: Colors.blue,
                      child: Row(children: [
                        InkWell(
                          onTap: () {
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (context) => DetailPage(
                                    img: 'assets/images/modelgrid1.jpeg'),
                              ),
                            );
                          },
                          child: Hero(
                            tag: 'assets/images/modelgrid1.jpeg',
                            child: Container(
                              width: MediaQuery.of(context).size.width / 2 - 40,
                              height: 250,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8),
                                image: const DecorationImage(
                                    image: AssetImage(
                                        'assets/images/modelgrid1.jpeg'),
                                    fit: BoxFit.cover),
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        Column(
                          children: [
                            InkWell(
                              onTap: () {
                                Navigator.of(context).push(
                                  MaterialPageRoute(
                                    builder: (context) => DetailPage(
                                        img: 'assets/images/modelgrid2.jpeg'),
                                  ),
                                );
                              },
                              child: Hero(
                                tag: 'assets/images/modelgrid2.jpeg',
                                child: Container(
                                  width: MediaQuery.of(context).size.width / 2 -
                                      29,
                                  height: 120,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(8),
                                    image: const DecorationImage(
                                        image: AssetImage(
                                            'assets/images/modelgrid2.jpeg'),
                                        fit: BoxFit.cover),
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            InkWell(
                              onTap: () {
                                Navigator.of(context).push(
                                  MaterialPageRoute(
                                    builder: (context) => DetailPage(
                                        img: 'assets/images/modelgrid3.jpeg'),
                                  ),
                                );
                              },
                              child: Hero(
                                tag: 'assets/images/modelgrid3.jpeg',
                                child: Container(
                                  width: MediaQuery.of(context).size.width / 2 - 29,
                                  height: 120,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(8),
                                    image: const DecorationImage(
                                        image: AssetImage(
                                            'assets/images/modelgrid3.jpeg'),
                                        fit: BoxFit.cover),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ]),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: [
                        Container(
                          width: 140,
                          height: 25,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(4),
                            color: Colors.brown.withOpacity(0.2),
                          ),
                          child: Center(
                            child: Text(
                              '# Louis vuitton',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.brown.withOpacity(0.5),
                                fontFamily: 'MoonFont',
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        Container(
                          width: 70,
                          height: 25,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(4),
                            color: Colors.brown.withOpacity(0.2),
                          ),
                          child: Center(
                            child: Text(
                              '# Chloe',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.brown.withOpacity(0.4),
                                fontFamily: 'MoonFont',
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const Divider(),
                    Row(
                      children: [
                        Icon(
                          Icons.reply_sharp,
                          size: 32,
                          color: Colors.brown.withOpacity(0.2),
                        ),
                        const SizedBox(
                          width: 3,
                        ),
                        Text(
                          '1.7k',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.brown.withOpacity(0.7),
                            fontFamily: 'MoonFont',
                          ),
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                        Icon(
                          Icons.message,
                          size: 32,
                          color: Colors.brown.withOpacity(0.2),
                        ),
                        const SizedBox(
                          width: 3,
                        ),
                        Text(
                          '325',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.brown.withOpacity(0.7),
                            fontFamily: 'MoonFont',
                          ),
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width - 220,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              const Icon(
                                Icons.favorite,
                                size: 32,
                                color: Colors.red,
                              ),
                              const SizedBox(
                                width: 3,
                              ),
                              Text(
                                '2.3k',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Colors.brown.withOpacity(0.7),
                                  fontFamily: 'MoonFont',
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget listItem(String imagePath, String logoPath) {
    return Column(
      children: [
        Stack(
          children: [
            Container(
              width: 75,
              height: 75,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(40),
                image: DecorationImage(
                    image: AssetImage(imagePath), fit: BoxFit.cover),
              ),
            ),
            Positioned(
              top: 50,
              left: 50,
              child: Container(
                width: 25,
                height: 25,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  image: DecorationImage(
                    image: AssetImage(logoPath),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 6,
        ),
        Container(
          width: 60,
          height: 20,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            color: Colors.brown.shade400,
          ),
          child: const Text(
            'Follow',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.white,
              fontFamily: 'MoonFont',
            ),
          ),
        ),
      ],
    );
  }
}
