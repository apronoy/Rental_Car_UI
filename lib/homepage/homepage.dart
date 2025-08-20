import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rentcar/allcarbrands/brands.dart';
import 'package:rentcar/availablecar/availablecar.dart';
import 'package:rentcar/car/audi.dart';
import 'package:rentcar/car/bmw.dart';
import 'package:rentcar/car/dodge.dart';
import 'package:rentcar/car/ferrari.dart';
import 'package:rentcar/car/lamborgini.dart';
import 'package:rentcar/car/marcedes.dart';
import 'package:rentcar/car/mustang.dart';
import 'package:rentcar/car/porsche.dart';
import 'package:rentcar/car/rangerover.dart';
import 'package:rentcar/car/rollsroyce.dart';
import 'package:rentcar/car/shelby.dart';
import 'package:rentcar/car/tata.dart';
import 'package:rentcar/loginpage/signup.dart';
import 'package:rentcar/notification/noti.dart';
import 'package:rentcar/searchPage/searchpage.dart';

class homedecor extends StatefulWidget {
  const homedecor({super.key});

  @override
  State<homedecor> createState() => _homedecorState();
}

class _homedecorState extends State<homedecor> {
  var name = 'Pronoy';
  var location = 'Feni , Bangladesh';
  final scaffoldkey = GlobalKey<ScaffoldState>();
  final SearchController controller = SearchController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: InkWell(
            onTap: () {},
            child: Column(
              children: [
               const Padding(padding: EdgeInsets.all(5)),
                Text(
                  '$name',
                  style:const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              const  SizedBox(
                  height: 1,
                ),
                Text('$location',
                    style: const TextStyle(fontSize: 15, fontWeight: FontWeight.bold))
              ],
            )),
        actions: [
        const  Padding(padding: EdgeInsets.all(20)),

          // This is for notification section

          IconButton(
              onPressed: () {
                Get.to(notification());
                print('this is notification ');
              },
              icon: SizedBox(
                  height: 30,
                  child: Image.asset('assets/icons/notification.png'))),
         const SizedBox(
            width: 5,
          ),
        const  SizedBox(
            width: 5,
          ),
          // This section for profile  section

          IconButton(
            onPressed: () {
              scaffoldkey.currentState!.openEndDrawer();
            },
            icon: Image.asset('assets/icons/profile.png'),
          ),
         const SizedBox(
            width: 10,
          )
        ],
      ),

      // drawer section stated from here ....

      key: scaffoldkey,
      endDrawer: Drawer(
          child: ListView(
        children: [
          InkWell(
            child: const UserAccountsDrawerHeader(
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/images/mustang/shelby500.jpg'),
                      fit: BoxFit.cover)),
              accountName: Text(
                'Pronoy Sarkar',
                style: TextStyle(
                    fontSize: 20,
                    color: const Color.fromARGB(255, 255, 255, 255)),
              ),
              accountEmail: Text(''),
              currentAccountPicture: CircleAvatar(
                  child: CircleAvatar(
                radius: 50,
                backgroundImage:
                    AssetImage('assets/images/mustang/mustang13.png'),
              )),
            ),
            onTap: () {
              Get.to(signup());
            },
          ),
          ListTile(
            title: const Text('Booked History'),
            leading: SizedBox(
              height: 30,
              child: Image.asset('assets/icons/history.png'),
            ),
            onTap: () {},
          ),
          ListTile(
            title: Text('Booked Car'),
            leading: SizedBox(
              height: 30,
              child: Image.asset('assets/icons/check-mark.png'),
            ),
            onTap: () {},
          ),
          ListTile(
            title: const Text('Transactions'),
            leading: SizedBox(
              height: 30,
              child: Image.asset('assets/icons/credit-card.png'),
            ),
            onTap: () {},
          ),
          ListTile(
            title: const Text('Logout'),
            leading: SizedBox(
              height: 30,
              child: Image.asset('assets/icons/logout.png'),
            ),
            onTap: () {},
          ),
        ],
      )),

      // Drawer ends from here

      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [designs()],
        ),
      ),
    );
  }

  Widget designs() {
    return Column(
      children: [srchbar(), carbandname(), carbrand(), bestcar()],
    );
  }

// This is search bar section

  Widget srchbar() {
    return Container(
      margin: const EdgeInsets.only(top: 30, right: 15, left: 15),
      child: InkWell(
        child: Container(
            height: 60,
            width: double.infinity,
            padding:const EdgeInsets.all(10),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                border: Border.all(color: const Color.fromARGB(29, 0, 0, 0))),
            child: const Row(
              children: [
                Icon(
                  Icons.search,
                  color: const Color.fromARGB(132, 0, 0, 0),
                ),
                Align(
                  alignment: Alignment(-1.0, 0.0),
                  child: Text(
                    ' Search your car ',
                    style: TextStyle(
                        fontSize: 20,
                        color: const Color.fromARGB(120, 0, 0, 0)),
                  ),
                ),
              ],
            )),
        onTap: () {
          Get.to( const searchpage());
        },
      ),
    );
  }
  // Search section ends here

  Widget carbandname() {
    return Container(
      margin: const EdgeInsets.only(top: 50, left: 20, bottom: 15),
      alignment: Alignment.centerLeft,
      child:const Text(
        'Car brands ',
        style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.bold,
            color:   Color.fromARGB(164, 0, 0, 0)),
      ),
    );
  }

  // carbrand start from here
  Widget carbrand() {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Container(
        padding:const EdgeInsets.all(5),
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: InkWell(
                child: SizedBox(
                    height: 60,
                    width: 60,
                    child: Image.asset('assets/images/carslogo/bmw.png')),
                onTap: () {
                  Get.to(const bmw());
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: InkWell(
                child: SizedBox(
                    height: 60,
                    width: 60,
                    child:
                        Image.asset('assets/images/carslogo/rollsroyce.png')),
                onTap: () {
                  Get.to(const rollsroyce());
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: InkWell(
                child: SizedBox(
                    height: 60,
                    width: 60,
                    child: Image.asset('assets/images/carslogo/audi.png')),
                onTap: () {
                  Get.to(const audi());
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: InkWell(
                child: Container(
                    height: 60,
                    width: 60,
                    decoration:
                        BoxDecoration(borderRadius: BorderRadius.circular(10)),
                    child: Image.asset('assets/images/carslogo/porsche.png')),
                onTap: () {
                  Get.to( const porsche());
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: InkWell(
                child: SizedBox(
                    height: 60,
                    width: 60,
                    child: Image.asset('assets/images/carslogo/mustang.png')),
                onTap: () {
                  Get.to(const mustang());
                },
              ),
            ),
            Padding(
              padding:const EdgeInsets.all(10.0),
              child: InkWell(
                child: SizedBox(
                    height: 60,
                    width: 60,
                    child: Image.asset('assets/images/carslogo/marcedes.png')),
                onTap: () {
                  Get.to(const marcedes());
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: InkWell(
                child: SizedBox(
                    height: 60,
                    width: 60,
                    child: Image.asset('assets/images/carslogo/ferrari.png')),
                onTap: () {
                  Get.to(const ferrari());
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: InkWell(
                child: SizedBox(
                    height: 60,
                    width: 60,
                    child:
                        Image.asset('assets/images/carslogo/rangerover.png')),
                onTap: () {
                  Get.to(const rangerover());
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: InkWell(
                child: SizedBox(
                    height: 60,
                    width: 60,
                    child: Image.asset('assets/images/carslogo/shelby.png')),
                onTap: () {
                  Get.to( const shelby());
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: InkWell(
                child: SizedBox(
                    height: 60,
                    width: 60,
                    child:
                        Image.asset('assets/images/carslogo/lamborgini.png')),
                onTap: () {
                  Get.to(const lamborgini());
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: InkWell(
                child: SizedBox(
                    height: 60,
                    width: 60,
                    child: Image.asset('assets/images/carslogo/tata.png')),
                onTap: () {
                  Get.to( const tata());
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: InkWell(
                child: SizedBox(
                    height: 60,
                    width: 60,
                    child: Image.asset('assets/images/carslogo/dodge.png')),
                onTap: () {
                  Get.to(const dodge());
                },
              ),
            ),
            Padding(
              padding:const EdgeInsets.all(10),
              child: IconButton(
                onPressed: () {
                  Get.to(const brands());
                },
                icon:const Icon(Icons.arrow_forward),
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget bestcar() {
    return Column(
      children: [
        bestcartitle(),
        availablecarlist(),
      ],
    );
  }

  Widget bestcartitle() {
    return Container(
      alignment: Alignment.centerLeft,
      margin: EdgeInsets.only(top: 20, left: 20, bottom: 10),
      child: const Text(
        'Best Collection  ',
        style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.bold,
            color:  Color.fromARGB(164, 0, 0, 0)),
      ),
    );
  }

  Widget availablecarlist() {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          cartpage('Dodge Spider', '55000TK/Day', '5',
              'assets/images/dodge/dodge.png', '3,5'),
         const SizedBox(
            width: 15,
          ),
          cartpage('Bmw X1', '55000TK/Day', '4.5',
              'assets/images/bmw/bmw1.png', '4'),
         const SizedBox(
            width: 15,
          ),
          cartpage('Mustang Gt', '56000TK/Day', '4.2',
              'assets/images/mustang/mustang12.png', '4.3'),
        const  SizedBox(
            width: 15,
          ),
          cartpage('Porsche 911', '57000TK/Day', '4.9',
              'assets/images/porsche/porsche2.png', '4.4'),
        const  SizedBox(
            width: 15,
          ),
          cartpage('Audi r8', '53000TK/Day', '4.5',
              'assets/images/audi/audi2.png', '5'),
        const  SizedBox(
            width: 15,
          ),
          cartpage('RangeRover', '50000TK/Day', '4.2',
              'assets/images/rangerover/rangerover.png', '5.4'),
        const  SizedBox(
            width: 15,
          ),
          cartpage('Porsche 77 ', '60000TK/Day', '4.9',
              'assets/images/porsche/porsche3.png', '3.8'),
         const SizedBox(
            width: 15,
          ),
          cartpage('Mazda ', '45000TK/Day', '4.5',
              'assets/images/mazda/mazda2.png', '6.5'),
        const  SizedBox(
            width: 15,
          ),
          cartpage('Ferrari f90', '52000TK/Day', '4.3',
              'assets/images/ferrari/ferrari.png', '5.4'),
        const  SizedBox(
            width: 15,
          ),
          nextpage()
        ],
      ),
    );
  }

  Widget cartpage(var name, price, rating, image, topspeed) {
    // bool isp = true;

    return Container(
      child: Container(
        margin: EdgeInsets.only(left: 15, bottom: 20, top: 30),
        height: 250,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: const Color.fromARGB(184, 241, 238, 238)),
        child: Column(
          children: [
            // available rating and cart part start here ....
            Container(
                child: Row(
              children: [
                // available section start here
                Container(
                  margin: EdgeInsets.only(top: 5, left: 10),
                  alignment: Alignment(0.0, 0.0),
                  child: Text(
                    'Available',
                    style: TextStyle(
                        fontSize: 17,
                        color: Colors.green,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                // available section ends here
                SizedBox(
                  width: 50,
                ),
                // Rating section here
                Container(
                  height: 20,
                  child: Row(
                    children: [
                      Image.asset(
                        'assets/icons/star.png',
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        rating,
                        style: TextStyle(fontSize: 15),
                      )
                    ],
                  ),
                ),
                //  Rating section ends here
                SizedBox(
                  width: 80,
                ),
                // cart section here
                Container(
                  margin: EdgeInsets.only(top: 15, right: 15),
                  height: 30,
                  child:
                      // IconButton(
                      //   onPressed: () {
                      //     setState(() {
                      //       isp = !isp;
                      //     });
                      //   },
                      //   icon: isp == true ? Icon(Icons.visibility_off)
                      //       : Icon(Icons.visibility),
                      //   color: Colors.amber[400],
                      // )
                      InkWell(
                    child: Image.asset('assets/icons/heart.png'),
                    onTap: () {},
                  ),
                )
                // cart section ends here
              ],
            )),

            // available rating and cart part ends here ...

            Container(
              // inkwell start from here
              child: InkWell(
                child: Column(
                  children: [
                    // car picture section start here ...
                    Container(
                      height: 120,
                      child: Image.asset(image),
                    ),
                    // car picture section ends here

                    // car name and rentprice start here
                    Container(
                        child: Row(
                      children: [
                        Container(
                          margin: EdgeInsets.only(left: 10),
                          child: Text(
                            name,
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 25),
                          ),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 10, right: 10),
                          child: Text(
                            price,
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 20),
                          ),
                        ),
                      ],
                    )),
                    // car name and rentprice end here

                    // gear type and top speed start here

                    Container(
                      child: Row(
                        children: [
                          // manual section start here

                          Container(
                            margin: EdgeInsets.only(top: 20, left: 13),
                            height: 18,
                            child: Row(
                              children: [
                                Image.asset('assets/icons/manual.png'),
                                Text(
                                  ' Manual',
                                  style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold),
                                )
                              ],
                            ),
                          ),
                          // manual section ends here
                          SizedBox(
                            width: 20,
                          ),
                          // diesel section start here
                          Container(
                            margin: EdgeInsets.only(top: 20, left: 10),
                            height: 18,
                            child: Row(
                              children: [
                                Image.asset('assets/icons/fuel.png'),
                                Text(
                                  ' Diesel',
                                  style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold),
                                )
                              ],
                            ),
                          ),
                          // diesel section ends here
                          SizedBox(
                            width: 20,
                          ),
                          // top-speed section start here
                          Container(
                            margin:
                                EdgeInsets.only(top: 20, left: 10, right: 10),
                            height: 18,
                            child: Row(
                              children: [
                                Image.asset('assets/icons/speedmeter.png'),
                                Text(
                                  ' 0-100/${topspeed}s',
                                  style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold),
                                )
                              ],
                            ),
                          ),
                          // top-speed section ends here
                        ],
                      ),
                    )
                  ],
                ),
                onTap: () {
                  Get.to(availablecar());
                },
              ),
              // inkwell ends here
            ),

            // gear type and top speed end here
          ],
        ),
      ),
    );
  }

  Widget nextpage() {
    return Container(
      margin:const EdgeInsets.all(20),
      child: IconButton(
          onPressed: () {
            Get.to(const availablecar());
          },
          icon:const Icon(Icons.arrow_forward)),
    );
  }

 }
