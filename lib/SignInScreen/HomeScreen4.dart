import 'package:flutter/material.dart';
import 'package:milliadedriver/SidebarScreen/Account1.dart';

class HomeScreen4 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final closeButton = Material(
      elevation: 2,
      borderRadius: BorderRadius.circular(10),
      color: Colors.black,
      child: MaterialButton(

        minWidth: MediaQuery.of(context).size.width,
        padding: EdgeInsets.fromLTRB(20, 20, 20, 20),
        onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder: (context)=>AccountScreen1()));
        },
        child: Text('Close',
          textAlign: TextAlign.center,
          style: TextStyle(
              color: Colors.white,
              fontSize: 20,
              fontWeight: FontWeight.bold
          ),

        ),
      ),
    );
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
                    return Center(
                      child: Column(

                          children: [ Padding(
                            padding: const EdgeInsets.only(top: 250.0,left: 40,right: 40,bottom: 20),
                            child: CircleAvatar(
                              radius: 60,
                              backgroundColor: Colors.grey,
                            ),
                          ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text('Account Suspended',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 30
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 8.0,right: 70,left: 80),
                              child: Text('You have been blocked from accessing this platform. '
                                  'Kindly visit our office with your car.',
                                style: TextStyle(
                                    fontSize: 20
                                ),),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 40.0,top: 210,right: 40),
                              child: closeButton,
                            )



                          ]),
                    );
                  } else {
                    return Column(

                        children: [ Padding(
                          padding: const EdgeInsets.only(top: 40.0,left: 40,right: 40,bottom: 20),
                          child: CircleAvatar(
                            radius: 60,
                            backgroundColor: Colors.grey,
                          ),
                        ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text('Account Suspended',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 30
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 8.0,right: 100,left: 90),
                            child: Text('You have been blocked from accessing this platform.'
                                ' Kindly visit our office with your car.',
                              style: TextStyle(
                                  fontSize: 20
                              ),),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 40.0,top: 90,right: 40),
                            child: closeButton,
                          )



                        ]);

                  }
                }),
              ),
            ),
          );
        }),
      ),
    );
  }
}
