import 'package:flutter/material.dart';
import 'package:milliadedriver/SignInScreen/HomeScreen4.dart';


class HomeScreen3 extends StatefulWidget {
  @override
  _HomeScreen3State createState() => _HomeScreen3State();
}

class _HomeScreen3State extends State<HomeScreen3> {
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
    );

    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          elevation: 0,

          leading: IconButton(
            onPressed: (){},

            icon: Icon(Icons.arrow_back,
              color: Colors.white,
            ),
          ),
        ),
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
                              height: 40,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Padding(
                                  padding:
                                  const EdgeInsets.only(left: 10, bottom: 10),
                                  child: Text(
                                    'Enter the 6-digit code sent to ',
                                    style: TextStyle(
                                        fontSize: 30,
                                        fontWeight: FontWeight.w300),
                                  ),
                                ),
                                Padding(
                                  padding:
                                  const EdgeInsets.only(left: 10, bottom: 10),
                                  child: Text(
                                    '+2348134654678',
                                    style: TextStyle(fontSize: 25),
                                  ),
                                ),
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                child: Expanded(child: numbeController),
                              ),
                            ),
                            SizedBox(
                              height: 450,
                            ),
                            Column(crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(left: 20.0),
                                  child: Text('Resend code in 15',
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
                                                    HomeScreen4()));
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
                                            'Verify Code',
                                            style: TextStyle(
                                                fontSize: 25, color: Colors.white),
                                          ),
                                          IconButton(onPressed: (){
                                            Navigator.push(context, MaterialPageRoute(builder: (context)=>HomeScreen4()));
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
                  } else
                    return Column(
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
                                  'Enter the 6-digit code sent to ',
                                  style: TextStyle(
                                      fontSize: 30,
                                      fontWeight: FontWeight.w300),
                                ),
                              ),
                              Padding(
                                padding:
                                const EdgeInsets.only(left: 10, bottom: 10),
                                child: Text(
                                  '+2348134654678',
                                  style: TextStyle(fontSize: 25),
                                ),
                              ),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              child: Expanded(child: numbeController),
                            ),
                          ),
                          SizedBox(
                            height: 40,
                          ),
                          Center(
                            child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(left: 20.0),
                                  child: Text('Resend code in 15',
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
                                                    HomeScreen4()));
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
                                            'Verify Code',
                                            style: TextStyle(
                                                fontSize: 25, color: Colors.white),
                                          ),
                                          IconButton(onPressed: (){
                                            Navigator.push(context, MaterialPageRoute(builder: (context)=>HomeScreen4()));
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
                        ]);
                }),
              ),
            ),
          );
        }),
      ),
    );
  }
}
