import 'package:ecommers/buy.dart';
import 'package:ecommers/carousel.dart';
import 'package:flutter/material.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 44, left: 24, right: 24),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                        color: Color(0xffFBD06A),
                        borderRadius: BorderRadius.circular(15)),
                    child: Center(
                      child: Image.asset(
                        'assets/menu.png',
                        height: 30,
                      ),
                    ),
                  ),
                  Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                        color: Color(0xffFBD06A),
                        borderRadius: BorderRadius.circular(15)),
                    child: Center(
                      child: Image.asset(
                        'assets/bag.png',
                        height: 30,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              const Padding(
                padding: EdgeInsets.only(right: 200),
                child: Text(
                  'Let"s find \n Your Gadget!',
                  textAlign: TextAlign.start,
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 26,
                      fontWeight: FontWeight.w600),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(15))),
                    hintText: 'Search',
                    hintStyle: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                    ),
                    prefixIcon: Icon(
                      Icons.search,
                      color: Colors.black54,
                    )),
              ),
              // carousel(),
              // Flexible(
              //   child:
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text(
                    "Choose Brand",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 21,
                        fontWeight: FontWeight.w600),
                  ),
                  Text(
                    "See All",
                    style: TextStyle(
                      fontSize: 19,
                    ),
                  ),
                ],
              ),

              SizedBox(
                height: 120,
                child: ListView.builder(
                  itemBuilder: (context, index) => Row(
                    children: [
                      Container(
                        height: 400,
                        width: 100,
                        margin: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                            color: Colors.black12,
                            borderRadius: BorderRadius.circular(10)),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            children: [
                              Image.asset(
                                'assets/beats.png',
                                height: 50,
                              ),
                              Text('BEATS')
                            ],
                          ),
                        ),
                      ),
                      Container(
                        height: 400,
                        width: 100,
                        margin: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                            color: Colors.black12,
                            borderRadius: BorderRadius.circular(10)),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            children: [
                              Image.asset(
                                'assets/sony.png',
                                height: 50,
                              ),
                              Text('SONY')
                            ],
                          ),
                        ),
                      ),
                      Container(
                        height: 400,
                        width: 100,
                        margin: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                            color: Colors.black12,
                            borderRadius: BorderRadius.circular(10)),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            children: [
                              Image.asset(
                                'assets/asus.png',
                                height: 50,
                              ),
                              Text('ASUS')
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  itemCount: 4,
                  scrollDirection: Axis.horizontal,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text(
                    "Popular",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 21,
                        fontWeight: FontWeight.w600),
                  ),
                  Text(
                    "Discount",
                    style: TextStyle(
                      fontSize: 19,
                    ),
                  ),
                  Text(
                    "Exclusive",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 21,
                    ),
                  ),
                ],
              ),

              Padding(
                padding: const EdgeInsets.all(18.0),
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Buy()));
                  },
                  child: GridView.builder(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                              mainAxisSpacing: 12,
                              crossAxisCount: 2,
                              crossAxisSpacing: 12.0,
                              mainAxisExtent: 150),
                      itemCount: 10,
                      itemBuilder: (_, index) {
                        return Container(
                          decoration: BoxDecoration(
                            color: Colors.black12,
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              children: [
                                Image.asset(
                                  'assets/Daco_259582.png',
                                  height: 80,
                                ),
                                const Padding(
                                  padding: EdgeInsets.only(top: 10, right: 80),
                                  child: Text(
                                    "ASUS",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 21,
                                        fontWeight: FontWeight.w600),
                                  ),
                                ),
                                const Padding(
                                  padding: EdgeInsets.only(right: 80),
                                  child: Text(
                                    "PKR 1500",
                                    style: TextStyle(
                                      fontSize: 12,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        );
                      }),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
