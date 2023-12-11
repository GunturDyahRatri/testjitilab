import 'package:flutter/material.dart';
import 'package:testjitilab/pages/home_page.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.max,
          children: [
            Padding(
                padding: EdgeInsets.only(
                  top: 80,
                ),
                child: Center(
                  child: Text(
                    'TEST JITILAB',
                    style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 36,
                        color: Color.fromRGBO(57, 115, 172, 1)),
                  ),
                )),
            Padding(
              padding: EdgeInsets.only(
                top: 20,
              ),
              child: Center(
                child: SizedBox(
                    height: 100.0,
                    width: 200.0,
                    // child: Image.asset('assets/images/ic_logo.png')
                    ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                top: 10,
              ),
              child: SizedBox(
                  height: 400,
                  // width: 600,
                  // child: Image.asset('assets/images/ic_splas.png')
                  ),
            ),
            Container(
              height: 419,
              width: 600,
              decoration: BoxDecoration(
                  color: Color.fromRGBO(217, 230, 242, 1),
                  borderRadius:
                      BorderRadius.only(topRight: Radius.circular(120.0))),
              child: Column(children: [
                Padding(
                    padding: EdgeInsets.only(top: 66, left: 20),
                    child: Text(
                      'Welcome to the Apps!',
                      style: TextStyle(
                        fontSize: 26,
                        fontWeight: FontWeight.w600,
                        color: Color.fromRGBO(57, 115, 172, 1),
                      ),
                    )),
                Padding(
                  padding: EdgeInsets.only(top: 30.0, left: 20.0),
                  child: SizedBox(
                      height: 66.0,
                      width: 370,
                      child: Text(
                        'ERM (Enterprise Risk Management) adalah Aplikasi Mobile yang digunakan untuk View Dashboard dan Approval.',
                        style: TextStyle(
                          fontSize: 20,
                          color: Color.fromRGBO(57, 115, 172, 1),
                        ),
                      )),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 50, left: 25, right: 25),
                  child: InkWell(
                    onTap: (() {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: ((context) => HomePage())));
                    }),
                    child: Container(
                      padding: EdgeInsets.symmetric(
                        vertical: 30,
                      ),
                      width: double.infinity,
                      child: Text(
                        'Get Started',
                        style: TextStyle(
                            fontWeight: FontWeight.w700,
                            fontSize: 30,
                            color: Colors.white),
                        textAlign: TextAlign.center,
                      ),
                      decoration: BoxDecoration(
                          color: Color.fromRGBO(57, 115, 172, 1),
                          borderRadius: BorderRadius.circular(20.0)),
                    ),
                  ),
                ),
              ]),
            ),
          ],
        ));
  }
}
