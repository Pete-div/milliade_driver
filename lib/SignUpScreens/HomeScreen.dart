import 'package:flutter/material.dart';
import 'package:milliadedriver/SignUpScreens/RegistrationScreen1.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: LayoutBuilder(builder: (context, constraints) {
          double screenWidth = MediaQuery.of(context).size.width;
          print("ScreenWidth: $screenWidth");
          return ConstrainedBox(
            constraints: BoxConstraints(minHeight: constraints.maxHeight),
            child: SingleChildScrollView(
              child: IntrinsicHeight(
                child: Builder(builder: (context) {
                  if (screenWidth < 460) {
                    return Column(children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(top: 100),
                        child: Text(
                          'Let\'s get started',
                          style: TextStyle(fontSize: 40),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 90.0),
                        child: SizedBox(
                          height: 300,
                          width: 400,
                          child: Image.asset(
                            'images/ww.png',
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Container(
                        width: 300,
                        height: 170,
                        child: Padding(
                          padding: const EdgeInsets.only(top: 100.0),
                          child: TextButton(
                            onPressed: () {
                              Navigator.push(context, MaterialPageRoute(builder: (context)=>Registration1()));
                            },
                            style: ButtonStyle(
                                backgroundColor:
                                    MaterialStateProperty.all(Colors.black),
                                shape: MaterialStateProperty.all<
                                        RoundedRectangleBorder>(
                                    RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10),
                                ))),
                            child: Text(
                              'Open User App',
                              style:
                                  TextStyle(fontSize: 25, color: Colors.white),
                            ),
                          ),
                        ),
                      ),
                      Container(
                        width: 300,
                        height: 80,
                        child: Padding(
                          padding: const EdgeInsets.only(top: 10.0),
                          child: TextButton(
                            onPressed: () {},
                            style: ButtonStyle(
                                backgroundColor:
                                    MaterialStateProperty.all(Colors.white),
                                shape: MaterialStateProperty.all<
                                        RoundedRectangleBorder>(
                                    RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(10),
                                        side: BorderSide(color: Colors.grey)))),
                            child: Text(
                              'Open Drive/Rider App',
                              style:
                                  TextStyle(fontSize: 25, color: Colors.black),
                            ),
                          ),
                        ),
                      )
                    ]);
                  } else
                    return Row(
                      children: <Widget>[
                        Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 50,left: 150),
                              child: Text(
                                'Let\'s get started',
                                style: TextStyle(fontSize: 40),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 10.0,left: 20),
                              child: SizedBox(
                                height: 300,
                                width: 400,
                                child: Image.asset(
                                  'images/ww.png',
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ],
                        ),

                        Column(
                          children: [
                            SizedBox(
                              height: 100,
                            ),
                            Container(
                              width: 300,
                              height: 170,
                              child: Padding(
                                padding: const EdgeInsets.only(top: 100.0,left: 30),
                                child: TextButton(
                                  onPressed: () {
                                    Navigator.push(context, MaterialPageRoute(builder: (context)=>Registration1()));
                                  },
                                  style: ButtonStyle(
                                      backgroundColor:
                                      MaterialStateProperty.all(Colors.black),
                                      shape: MaterialStateProperty.all<
                                          RoundedRectangleBorder>(
                                          RoundedRectangleBorder(
                                            borderRadius: BorderRadius.circular(10),
                                          ))),
                                  child: Text(
                                    'Open User App',
                                    style:
                                    TextStyle(fontSize: 25, color: Colors.white),
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              width: 300,
                              height: 80,
                              child: Padding(
                                padding: const EdgeInsets.only(top: 10.0,left: 30),
                                child: TextButton(
                                  onPressed: () {},
                                  style: ButtonStyle(
                                      backgroundColor:
                                      MaterialStateProperty.all(Colors.white),
                                      shape: MaterialStateProperty.all<
                                          RoundedRectangleBorder>(
                                          RoundedRectangleBorder(
                                              borderRadius: BorderRadius.circular(10),
                                              side: BorderSide(color: Colors.grey)))),
                                  child: Text(
                                    'Open Drive/Rider App',
                                    style:
                                    TextStyle(fontSize: 25, color: Colors.black),
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),

                      ],
                    );
                }),
              ),
            ),
          );
        }),
      ),
    );
  }
}
