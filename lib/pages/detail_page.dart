import 'package:flutter/material.dart';

class DetailPage extends StatefulWidget {
  late String img;
  DetailPage({required this.img, Key? key}) : super(key: key);

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Hero(
            tag: widget.img,
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(widget.img), fit: BoxFit.cover)),
            ),
          ),
          Positioned(
            left: 15,
            right: 15,
            bottom: 15,
            child: Material(
              borderRadius: BorderRadius.circular(10),
              elevation: 4,
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Container(
                    height: 200,
                    width: MediaQuery.of(context).size.width - 30,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Container(
                              height: 120,
                              width: 100,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                border: Border.all(color: Colors.grey),
                                image: const DecorationImage(
                                    image:
                                        AssetImage('assets/images/dress.jpg'),
                                    fit: BoxFit.contain),
                              ),
                            ),
                            const SizedBox(
                              width: 8,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text(
                                  'LAMINATED',
                                  style: TextStyle(
                                      fontSize: 22,
                                      fontFamily: 'MoonFont',
                                      fontWeight: FontWeight.bold),
                                ),
                                const SizedBox(
                                  height: 5,
                                ),
                                const Text(
                                  'Louis Vouitton',
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontFamily: 'MoonFont',
                                      color: Colors.grey),
                                ),
                                const SizedBox(
                                  height: 16,
                                ),
                                SizedBox(
                                  width:
                                      MediaQuery.of(context).size.width - 170,
                                  height: 30,
                                  child: const Text(
                                    'One button V-neck sling long-sleeved waist female stitching dress',
                                    style: TextStyle(
                                        fontSize: 12,
                                        fontFamily: 'MoonFont',
                                        color: Colors.grey),
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                        const SizedBox(
                          height: 16,
                        ),
                        const Divider(),
                        const SizedBox(
                          height: 16,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              '\$6500',
                              style: TextStyle(
                                  fontSize: 20,
                                  color:
                                      Colors.yellow.shade900.withOpacity(0.5)),
                            ),
                            const Icon(Icons.arrow_forward_ios),
                          ],
                        )
                      ],
                    )),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
