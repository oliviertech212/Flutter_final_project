import 'package:flutter/material.dart';

class MyOtpPage extends StatefulWidget {
  const MyOtpPage({super.key});

  @override
  State<MyOtpPage> createState() => _MyOtpPageState();
}

class _MyOtpPageState extends State<MyOtpPage> {
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
                'OTP Verification',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 5),
              Text(
                'Enter the code ',
                style: TextStyle(
                    color: Color.fromRGBO(202, 202, 202, 1.0), fontSize: 20),
              ),
              SizedBox(height: 5),
              Text(
                'from sms',
                style: TextStyle(
                    color: Color.fromRGBO(202, 202, 202, 1.0), fontSize: 20),
              ),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('01:30',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 30,
                          fontWeight: FontWeight.bold)),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: List.generate(
                  4,
                  (index) => Container(
                    width: 50,
                    height: 50,
                    child: TextField(
                      keyboardType: TextInputType.number,
                      maxLength: 1,
                      decoration: InputDecoration(
                        counterText: "",
                        filled: true,
                        fillColor: Colors.white,
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5),
                          borderSide: BorderSide(
                            color: Color.fromARGB(255, 3, 7, 20),
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5),
                          borderSide: BorderSide(
                            color: Color.fromARGB(255, 3, 7, 20),
                          ),
                        ),
                      ),
                      style: TextStyle(
                        fontSize: 24,
                        color: Color.fromARGB(255, 3, 7, 20),
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              ),
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
                        const Text(
                          'Submit',
                          style: TextStyle(
                            fontSize: 24,
                            color: Colors.white,
                            fontWeight: FontWeight.w200,
                          ),
                        ),
                      ],
                    )),
              ),
              SizedBox(height: 40),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Didn’t receive the code?  ",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/recover');
                    },
                    child: Text(
                      " Resend.",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Color.fromARGB(255, 3, 7, 20)),
                    ),
                  )
                ],
              )
            ]),
          ),
        ));
  }
}
