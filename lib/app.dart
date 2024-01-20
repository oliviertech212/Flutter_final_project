import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xFFDA5E48),
        body: Padding(
          padding: EdgeInsets.all(18.0),
          child: SingleChildScrollView(
            child:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
              SizedBox(height: 100),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Tech',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 30,
                        fontWeight: FontWeight.bold),
                  ),
                  Text('Me',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 30,
                          fontWeight: FontWeight.bold)),
                ],
              ),
              SizedBox(height: 10),
              Text(
                'Accelerating Tech with confidence',
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
              SizedBox(height: 5),
              Text(
                'East Africa’s Biggest ',
                style: TextStyle(
                    color: Color.fromRGBO(202, 202, 202, 1.0), fontSize: 20),
              ),
              SizedBox(height: 5),
              Text(
                'Tech Con Hub',
                style: TextStyle(
                    color: Color.fromRGBO(202, 202, 202, 1.0), fontSize: 20),
              ),
              SizedBox(height: 40),
              Container(
                  color: Colors.white,
                  width: double.infinity,
                  height: 250,
                  child: Row(children: [])),
              SizedBox(height: 40),
              Container(
                width: double.infinity,
                child: TextButton(
                    style: TextButton.styleFrom(
                        backgroundColor: Color.fromARGB(255, 3, 7, 20),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5),
                        ),
                        padding: EdgeInsets.all(20)),
                    onPressed: () {
                      Navigator.pushNamed(context, '/login');
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.arrow_right_alt_sharp,
                            color: Colors.white,
                          ),
                        ),
                        const Text(
                          'Join Now',
                          style: TextStyle(
                            fontSize: 24,
                            color: Colors.white,
                            fontWeight: FontWeight.w200,
                          ),
                        ),
                      ],
                    )),
              ),
            ]),
          ),
        ));
  }
}
