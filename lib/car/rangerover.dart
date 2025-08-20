import 'package:flutter/material.dart';

class rangerover extends StatefulWidget {
  const rangerover({super.key});

  @override
  State<rangerover> createState() => _rangeroverState();
}

class _rangeroverState extends State<rangerover> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Padding(
          padding: const EdgeInsets.all(2),
          child: Text(
            'Range-Rover ',
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            rangerovercar("RangeRover R1", '60L', 'Four', '77000/Day',
                'assets/images/rangerover/rangerover.png'),
            rangerovercar("RangeRover R2", '65L', 'Four', '75000/Day',
                'assets/images/rangerover/rangerover2.png'),
            rangerovercar("RangeRover R3", '70L', 'Four', '70000/Day',
                'assets/images/rangerover/rangerover3.png'),
            rangerovercar("RangeRover R4", '75L', 'Four', '77000/Day',
                'assets/images/rangerover/rangerover4.png'),
            rangerovercar("RangeRover R5", '70L', 'Four', '68000/Day',
                'assets/images/rangerover/rangerover5.png'),
            rangerovercar("RangeRover R6", '60L', 'Four', '70000/Day',
                'assets/images/rangerover/rangerover6.png'),
            rangerovercar("RangeRover R7", '60L', 'Four', '71000/Day',
                'assets/images/rangerover/rangerover7.png'),
           ],
        ),
      ),
    );
  }

  Widget rangerovercar(var name, oil, cepa, price, image) {
    return Container(
      margin: EdgeInsets.all(10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: const Color.fromARGB(255, 238, 235, 235),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          // This is cart-section
          Container(
            margin: EdgeInsets.only(top: 10),
            alignment: Alignment(.95, 0.0),
            height: 40,
            child: InkWell(
              child: Image.asset('assets/icons/heart.png'),
              onTap: () {},
            ),
          ),
          // This is car picture section

          Container(
            height: 200,
            child: Image.asset(image),
            margin: EdgeInsets.all(2),
          ),
          // This is title section
          Container(
            margin: EdgeInsets.all(10),
            child: Container(
              margin: EdgeInsets.only(top: 10, bottom: 10, left: 10),
              alignment: Alignment(-1.0, 0.0),
              child: Text(
                name,
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
            ),
          ),
          // This is capability section
          Container(
            margin: EdgeInsets.only(left: 20, bottom: 15),
            child: Row(
              children: [
                // GearType
                SizedBox(
                    height: 30, child: Image.asset('assets/icons/manual.png')),
                SizedBox(
                  width: 5,
                ),
                Text(
                  'Manual',
                  style: TextStyle(fontSize: 15),
                ),

                SizedBox(
                  width: 25,
                ),
                // Seat-capacity
                Padding(
                  padding: const EdgeInsets.all(3.0),
                  child: Text(
                    cepa,
                    style: TextStyle(
                        fontSize: 15,
                        color: const Color.fromARGB(255, 0, 0, 0)),
                  ),
                ),
                SizedBox(
                  height: 25,
                  child: Image.asset('assets/icons/seat.png'),
                ),
                SizedBox(
                  width: 25,
                ),

                // Fual
                SizedBox(
                  height: 33,
                  child: Image.asset('assets/icons/fuel.png'),
                ),
                Text(
                  'Petrol',
                  style: TextStyle(fontSize: 15),
                )
              ],
            ),
          ),
// This is price part

          Row(
            children: [
              Container(
                margin: EdgeInsets.all(10),
                alignment: Alignment(-.95, 0.0),
                child: Text(
                  price,
                  style: TextStyle(
                      fontSize: 27,
                      fontWeight: FontWeight.bold,
                      color: const Color.fromARGB(213, 0, 0, 0)),
                ),
              ),
              SizedBox(
                width: 70,
              ),
              Row(
                children: [
                  Container(
                    height: 40,
                    child: Image.asset('assets/icons/fuel1.png'),
                  ),
                  Padding(
                    padding: EdgeInsets.all(5),
                    child: Text(
                      oil,
                      style: TextStyle(
                          fontSize: 25,
                          color: const Color.fromARGB(214, 0, 0, 0)),
                    ),
                  )
                ],
              )
            ],
          ),
          // This is price and rent section
          Container(
            child: Row(
              children: [
                SizedBox(
                  width: 50,
                ),
                Container(
                  margin: EdgeInsets.all(10),
                  child: Row(
                    children: [
                      ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.black),
                          onPressed: () {},
                          child: Text(
                            'Rent',
                            style: TextStyle(fontSize: 15, color: Colors.white),
                          )),
                      SizedBox(
                        width: 30,
                      ),
                      ElevatedButton(
                          onPressed: () {},
                          child: Text(
                            'Details',
                            style: TextStyle(fontSize: 15, color: Colors.black),
                          )),
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
