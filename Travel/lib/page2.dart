import 'package:flutter/material.dart';
import 'explore.dart'; // Ensure explore.dart is in the correct directory

class Page2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Details(),
      routes: {
        '/explore': (context) => Explore(),
      },
    );
  }
}

class Details extends StatefulWidget {
  @override
  _DetailsState createState() => _DetailsState();
}

class _DetailsState extends State<Details> {
  bool isExpanded = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Image.asset(
                  'images/pexels-pixabay-302769.jpg',
                  fit: BoxFit.fill,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        isExpanded
                            ? 'Coeur des Alpes is a luxurious, family-run boutique hotel situated in the picturesque village of Zermatt, known for its stunning views of the Matterhorn. The hotel offers a unique blend of modern design and Alpine charm, featuring beautifully appointed rooms and suites, some with private balconies and hot tubs. Guests can enjoy a range of amenities including a spa with an indoor pool, sauna, and massage services. The hotel\'s intimate atmosphere and personalized service make it a perfect retreat for those seeking both relaxation and adventure in the Swiss Alps.'
                            : '',
                        style: TextStyle(
                          fontSize: 16, // Change the font size here
                          fontFamily: 'Arial', // Change the font family here
                        ),
                        maxLines: isExpanded ? null : 2,
                      ),
                      SizedBox(height: 8),
                      Text(
                        isExpanded
                            ? 'Coeur des Alpes is a luxurious, family-run boutique hotel situated in the picturesque village of Zermatt, known for its stunning views of the Matterhorn. The hotel offers a unique blend of modern design and Alpine charm, featuring beautifully appointed rooms and suites, some with private balconies and hot tubs. Guests can enjoy a range of amenities including a spa with an indoor pool, sauna, and massage services. The hotel\'s intimate atmosphere and personalized service make it a perfect retreat for those seeking both relaxation and adventure in the Swiss Alps.'
                            : 'Coeur des Alpes is a luxurious, family-run boutique hotel situated in the picturesque village of Zermatt, known for its stunning views of the Matterhorn.',
                        style: TextStyle(
                          fontSize: 16, // Change the font size here
                          fontFamily: 'Arial', // Change the font family here
                        ),
                        maxLines: isExpanded ? null : 2,
                      ),
                      SizedBox(height: 8),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            isExpanded = !isExpanded;
                          });
                        },
                        child: Text(
                          isExpanded ? 'Read less' : 'Read more',
                          style: TextStyle(
                            color: Colors.blue,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 20),
                Column(
                  children: [
                    Image.asset(
                      'images/Info.png',
                      fit: BoxFit.fill,
                    ),
                    SizedBox(height: 10),
                    Padding(
                      padding:
                          const EdgeInsets.only(left: 30, right: 20, top: 30),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Price',
                                    style: TextStyle(
                                      fontSize: 10,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Text(
                                    '\$400',
                                    style: TextStyle(
                                      fontSize: 20,
                                      color: Color(0xff07c904),
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                              Container(
                                width: 220, // Adjusted width to avoid overflow
                                height: 60,
                                child: ElevatedButton(
                                  onPressed: () {
                                    // Define the action when the button is pressed
                                  },
                                  style: ElevatedButton.styleFrom(
                                    primary: Colors.blue,
                                  ),
                                  child: Row(
                                    children: [
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(left: 36),
                                        child: Text(
                                          'Book Now',
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Icon(
                                        Icons.arrow_forward,
                                        color: Colors.white,
                                        size:
                                            24, // Increased the size of the arrow icon
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
          Positioned(
            top: 10,
            left: 10,
            child: GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, '/explore');
              },
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                ),
                padding: EdgeInsets.all(10),
                child: Icon(
                  Icons.arrow_back,
                  color: Colors.black,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
