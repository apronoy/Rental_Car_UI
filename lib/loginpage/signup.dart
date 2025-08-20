import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rentcar/homepage/homepage.dart';

class signup extends StatefulWidget {
  const signup({super.key});

  @override
  State<signup> createState() => _signupState();
}

class _signupState extends State<signup> {
  bool isp = true;
  var pass = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            headvalue(),
            body(),
          ],
        ),
      ),
    );
  }

  Widget headvalue() {
    return Center(
      child: Column(
        children: [
          Container(
              margin: EdgeInsets.only(top: 30),
              width: 200,
              child: Image.asset('assets/images/SignUp.png')),
          const SizedBox(
            height: 30,
          ),
          const Text(
            ' Sign Up',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
          ),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Text('Create a beautiful relationship with us '),
          )
        ],
      ),
    );
  }

  Widget body() {
    return Container(
      margin: const EdgeInsets.only(top: 30),
      child: Column(
        children: [
          Column(
            children: [
              Container(
                alignment: const Alignment(-0.7, 0.0),
                padding: const EdgeInsets.all(8.0),
                child: const Text(
                  'Username',
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(
                  width: 300,
                  child: TextField(
                    decoration: const InputDecoration(
                        border: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.white)),
                        hintText: 'Enter Username',
                        hintStyle: TextStyle(color: Colors.black38)),
                    onTap: () {},
                  )),
              const SizedBox(
                height: 10,
              ),
              Container(
                alignment: const Alignment(-0.76, 0.0),
                padding: const EdgeInsets.all(8.0),
                child: const Text(
                  'Email',
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(
                  width: 300,
                  child: TextField(
                    decoration: const InputDecoration(
                        border: OutlineInputBorder(borderSide: BorderSide()),
                        hintText: 'Enter Email',
                        hintStyle: TextStyle(color: Colors.black38)),
                    onTap: () {},
                  )),
              const SizedBox(
                height: 10,
              ),
              Container(
                alignment: const Alignment(-0.7, 0.0),
                padding: const EdgeInsets.all(8.0),
                child: const Text(
                  'Password',
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(
                width: 300,
                child: TextField(
                  controller: pass,
                  obscureText: isp,
                  decoration: InputDecoration(
                      border:
                          const OutlineInputBorder(borderSide: BorderSide()),
                      hintText: 'Enter Password',
                      suffixIcon: visivilitybtn(),
                      hintStyle: const TextStyle(color: Colors.black38)),
                  onTap: () {},
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              Container(
                width: 200,
                decoration: BoxDecoration(
                    border: Border.all(),
                    color: const Color.fromARGB(255, 42, 163, 211),
                    borderRadius: BorderRadius.circular(10)),
                child: TextButton(
                    onPressed: () {
                      Get.to(()=>const homedecor());
                    },
                    child: const Text(
                      'SignUp',
                      style: TextStyle(fontSize: 30, color: Colors.white),
                    )),
              )
            ],
          )
        ],
      ),
    );
  }

  Widget visivilitybtn() {
    return IconButton(
      onPressed: () {
        setState(() {
          isp = !isp;
        });
      },
      icon: isp == true
          ? const Icon(Icons.visibility_off)
          : const Icon(Icons.visibility),
      color: Colors.grey,
    );
  }
}
