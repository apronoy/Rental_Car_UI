import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rentcar/searchPage/searchclass.dart';

class searchpage extends StatefulWidget {
  const searchpage({super.key});

  @override
  State<searchpage> createState() => _searchpageState();
}

class _searchpageState extends State<searchpage> {
  var controler = TextEditingController();
  List<searchcar> mycars = allcars;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.only(top: 50, left: 10, right: 10),
            child: TextField(
              controller: controler,
              decoration: InputDecoration(
                  prefixIcon: Icon(
                    Icons.search,
                    color: const Color.fromARGB(122, 0, 0, 0),
                  ),
                  hintText: ' Discover your car ',
                  hintStyle:
                      TextStyle(color: const Color.fromARGB(122, 0, 0, 0)),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(17),
                      borderSide: BorderSide(color: Colors.teal))),
              onChanged: searchcars,
            ),
          ),
          Expanded(
              child: ListView.builder(
                  itemCount: mycars.length,
                  itemBuilder: (context, index) {
                    final myallcar = mycars[index];
                    return Container(
                      padding: const EdgeInsets.all(10.0),
                      child: ListTile(
                        leading: Image.asset(
                          myallcar.image,
                          fit: BoxFit.cover,
                          height: 90,
                          width: 90,
                        ),
                        title: Text(myallcar.title),
                        onTap: () => Get.to(searchclass(showcars: myallcar)),
                      ),
                    );
                  }))
        ],
      ),
    );
  }

  void searchcars(String value) {
    final suggest = allcars.where((searchcar) {
      final cartitle = searchcar.title.toLowerCase();
      final input = value.toLowerCase();
      return cartitle.contains(input);
    }).toList();
    setState(() {
      mycars = suggest;
    });
  }
}

class searchcar {
  final String title;
  final String image;

  const searchcar({
    required this.title,
    required this.image,
  });
}

const allcars = [
  searchcar(title: 'Bmw X1', image: 'assets/images/bmw/bmw1.png'),
  searchcar(
      title: 'Mustang GT 522', image: 'assets/images/mustang/mustang13.png'),
  searchcar(title: 'Audi r8', image: 'assets/images/audi/audi.png'),
  searchcar(title: 'Bugatti', image: 'assets/images/bugatti/bugatti.png'),
  searchcar(title: 'Ferrari', image: 'assets/images/ferrari/ferrari.png'),
  searchcar(title: 'Ford', image: 'assets/images/ford/ford.png'),
  searchcar(
      title: 'Lamborgini', image: 'assets/images/lamborgini/lamborgini.png'),
  searchcar(title: 'Mahindra', image: 'assets/images/mahindra/mahindra.png'),
  searchcar(title: 'Mercedes', image: 'assets/images/marcedes/mercedes9.png'),
  searchcar(title: 'Porsche', image: 'assets/images/porsche/porsche.png'),
  searchcar(
      title: 'RangeRover', image: 'assets/images/rangerover/rangerover.png'),
  searchcar(
      title: 'RollsRoyce', image: 'assets/images/rollsroyce/rollsroyce2.png'),
  searchcar(title: 'Tata', image: 'assets/images/tata/tata.png'),
];
