import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:milliadedriver/Screens/Registration2.dart';

class Registration1 extends StatefulWidget {
  @override
  _Registration1State createState() => _Registration1State();
}

class _Registration1State extends State<Registration1> {
  final _formkey = GlobalKey<FormState>();
  final TextEditingController numberController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    final numbeController = TextFormField(
      autofocus: false,
      controller: numberController,
      keyboardType: TextInputType.number,
      onSaved: (value) {
        numberController.text = value!;
      },
      textInputAction: TextInputAction.next,
      decoration: InputDecoration(
        contentPadding: EdgeInsets.fromLTRB(10, 20, 0, 10),
        suffixIcon: Icon(Icons.cancel_outlined),
        hintText: '8134654678',
        hintStyle: TextStyle(fontSize: 16),
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
                    return Form(
                      key: _formkey,
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            SizedBox(
                              height: 70,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Padding(
                                  padding:
                                      const EdgeInsets.only(left: 10, bottom: 10),
                                  child: Text(
                                    'Enter your mobile number',
                                    style: TextStyle(
                                        fontSize: 35,
                                        fontWeight: FontWeight.w500),
                                  ),
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.only(left: 10, bottom: 10),
                                  child: Text(
                                    'Verification code will be sent to this mobile number',
                                    style: TextStyle(fontSize: 25),
                                  ),
                                ),
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    SizedBox(
                                      height: 25,
                                      child: Image.asset(
                                        'images/nig.png',
                                        fit: BoxFit.contain,
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 20),
                                      child: Text(
                                        '+234',
                                        style: TextStyle(fontSize: 20),
                                      ),
                                    ),
                                    Expanded(child: numbeController),
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 450,
                            ),
                            Column(crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(left: 20.0),
                                  child: Text('Click next to receive verification code',
                                  style: TextStyle(
                                    fontSize: 20
                                  ),),
                                ),
                                Container(
                                  width: 350,
                                  height: 70,
                                  child: Padding(
                                    padding: const EdgeInsets.only(top: 10.0,left: 16),
                                    child: TextButton(

                                      onPressed: () {
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    Registration1()));
                                      },
                                      style: ButtonStyle(
                                          backgroundColor:
                                              MaterialStateProperty.all(
                                                  Colors.black),
                                          shape: MaterialStateProperty.all<
                                                  RoundedRectangleBorder>(
                                              RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(10),

                                          ))),
                                      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            'Next',
                                            style: TextStyle(
                                                fontSize: 25, color: Colors.white),
                                          ),
                                          IconButton(onPressed: (){
                                            Navigator.push(context, MaterialPageRoute(builder: (context)=>Registration2()));
                                          }, icon:Icon(Icons.arrow_forward_ios,
                                          color: Colors.white,))
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ]),
                    );
                  } else {
                    return Form(
                      key: _formkey,
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: <Widget>[
                            SizedBox(
                              height: 30,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding:
                                  const EdgeInsets.only(left: 30, bottom: 10),
                                  child: Text(
                                    'Enter your mobile number',
                                    style: TextStyle(
                                        fontSize: 35,
                                        fontWeight: FontWeight.w500),
                                  ),
                                ),
                                Padding(
                                  padding:
                                  const EdgeInsets.only(left: 30, bottom: 10),
                                  child: Text(
                                    'Verification code will be sent to this mobile number',
                                    style: TextStyle(fontSize: 25),
                                  ),
                                ),

                                Padding(
                                  padding: const EdgeInsets.all(30.0),
                                  child: Container(
                                    child: Row(
                                      mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                      children: [
                                        SizedBox(
                                          height: 25,
                                          child: Image.asset(
                                            'images/nig.png',
                                            fit: BoxFit.contain,
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(left: 20),
                                          child: Text(
                                            '+234',
                                            style: TextStyle(fontSize: 20),
                                          ),
                                        ),
                                        Expanded(child: numbeController),
                                      ],
                                    ),
                                  ),
                                ),

                                Center(
                                  child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(left: 30.0),
                                        child: Text('Click next to receive verification code',
                                          style: TextStyle(
                                              fontSize: 20
                                          ),),
                                      ),
                                      Container(
                                        width: 350,
                                        height: 70,
                                        child: Padding(
                                          padding: const EdgeInsets.only(top: 10.0,left: 30),
                                          child: TextButton(

                                            onPressed: () {
                                              Navigator.push(
                                                  context,
                                                  MaterialPageRoute(
                                                      builder: (context) =>
                                                          Registration1()));
                                            },
                                            style: ButtonStyle(
                                                backgroundColor:
                                                MaterialStateProperty.all(
                                                    Colors.black),
                                                shape: MaterialStateProperty.all<
                                                    RoundedRectangleBorder>(
                                                    RoundedRectangleBorder(
                                                      borderRadius:
                                                      BorderRadius.circular(10),

                                                    ))),
                                            child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                              children: [
                                                Text(
                                                  'Next',
                                                  style: TextStyle(
                                                      fontSize: 25, color: Colors.white),
                                                ),
                                                IconButton(onPressed: (){
                                                  Navigator.push(context, MaterialPageRoute(builder: (context)=>Registration2()));
                                                }, icon:Icon(Icons.arrow_forward_ios,
                                                  color: Colors.white,))
                                              ],
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),

                              ],
                            ),


                          ]),
                    );
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
