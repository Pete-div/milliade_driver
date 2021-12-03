import 'package:flutter/material.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:milliadedriver/SignUpScreens/SubmitScreen.dart';

class DetailsScreen3 extends StatefulWidget {
  @override
  _DetailsScreen3State createState() => _DetailsScreen3State();
}

class _DetailsScreen3State extends State<DetailsScreen3> {
  final _formkey = GlobalKey<FormState>();
  final TextEditingController accountNameController = TextEditingController();
  final TextEditingController accountNumberController = new TextEditingController();
  final TextEditingController bankNamerController = new TextEditingController();
  final TextEditingController uploodController = new TextEditingController();
  @override
  Widget build(BuildContext context) {

    final accountNamefield = TextFormField(
      autofocus: false,
      controller: accountNumberController,
      keyboardType:TextInputType.name,

      validator: (value) {
        RegExp regex = new RegExp(r'^.{1,}$');
        if (value!.isEmpty) {
          return ('Bank account holder name is required!');
        }
        if (!regex.hasMatch(value)) {
          return ('Please enter bank account aolder Name');
        }
        return (null);
      },
      onSaved:( value){accountNumberController.text=value!;},
      textInputAction: TextInputAction.next,
      decoration: InputDecoration(

          fillColor: Colors.grey.shade200,filled: true,
          contentPadding: EdgeInsets.fromLTRB(20, 10, 30, 10),
          hintText: 'Enter bank account holder Name',
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide.none
          )
      ),
    );
    final accountNumberfield = TextFormField(

      autofocus: false,
      controller: accountNameController,
      keyboardType:TextInputType.name,

      validator: (value) {
        RegExp regex = new RegExp(r'^.{1,}$');
        if (value!.isEmpty) {
          return ('Bank account number is required!');
        }
        if (!regex.hasMatch(value)) {
          return ('Please enter bank account number');
        }
        return (null);
      },
      onSaved:( value){accountNameController.text=value!;},
      textInputAction: TextInputAction.next,
      decoration: InputDecoration(
          fillColor: Colors.grey.shade200,filled: true,
          contentPadding: EdgeInsets.fromLTRB(20, 10, 30, 10),
          hintText: 'Enter bank account number',
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide.none
          )
      ),
    );
    final bankNamefield = TextFormField(

      autofocus: false,
      controller: bankNamerController,
      keyboardType:TextInputType.number,
      onSaved:( value){bankNamerController.text=value!;},
      textInputAction: TextInputAction.next,
      decoration: InputDecoration(
          fillColor: Colors.grey.shade200,filled: true,
          contentPadding: EdgeInsets.fromLTRB(20, 10, 30, 10),
          hintText: 'Select bank ',
          suffixIcon: Icon(Icons.arrow_drop_down),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide.none,
          )
      ),
    );
    final uploadButton = Material(
      borderRadius: BorderRadius.circular(10),
      color: Colors.grey.shade200,
      child: MaterialButton(

        minWidth: MediaQuery.of(context).size.width,
        padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
        onPressed: (){
        },
        child: Column(mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [

            IconButton(onPressed: (){},
                icon: Icon(Icons.unarchive,
                  color: Colors.black,)),
            Text('Upload an identity Card',
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.w400

              ),

            ),
          ],
        ),
      ),
    );
    final signUpButton = Material(
      elevation: 5,
      borderRadius: BorderRadius.circular(23),
      color: Colors.black,
      child: MaterialButton(

        minWidth: MediaQuery.of(context).size.width,
        padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
        onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder: (context)=>SubmitScreen()));
        },
        child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Submit Details',
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold
              ),

            ),
            IconButton(onPressed: (){},
                icon: Icon(Icons.arrow_forward_ios,
                  color: Colors.white,))
          ],
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
                    return Form(
                      key: _formkey,
                      child: Column(crossAxisAlignment: CrossAxisAlignment.start,

                          children: [
                            Container(
                              height: 70,
                              color: Colors.black,
                              child: Padding(
                                padding: const EdgeInsets.only(top:16),
                                child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    IconButton(icon: Icon(Icons.arrow_back,
                                      color: Colors.white,),
                                      onPressed: (){},
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(right: 80),
                                      child: Text('Personal Details',
                                          style:TextStyle(
                                              fontSize: 30,
                                              color: Colors.white
                                          )),
                                    ),
                                    Text('Step 3',
                                      style: TextStyle(
                                          fontSize: 20,
                                          color: Colors.white
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(16.0),
                              child: Container(
                                child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Column(crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.only(top: 20,bottom: 10),
                                          child: Text('Bank account holder name',
                                            style: TextStyle(
                                                fontSize: 25
                                            ),
                                          ),
                                        ),
                                        accountNamefield
                                      ],
                                    ),
                                    Column(crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.only(top: 20,bottom: 10),
                                          child: Text('Bank account number',
                                            style: TextStyle(
                                                fontSize: 25
                                            ),
                                          ),
                                        ),
                                        accountNumberfield
                                      ],
                                    ),
                                    Column(crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.only(top: 20,bottom: 10),
                                          child: Text(' Bank name',
                                            style: TextStyle(
                                                fontSize: 25
                                            ),),
                                        ),
                                        bankNamefield
                                      ],
                                    ),

                                    Column(crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.only(top: 10,bottom: 5),
                                          child: Text('BVN / NATIONAL I.D / VOTER’S CARD',
                                            style: TextStyle(
                                                fontSize: 20,

                                            ),),
                                        ),
                                        DottedBorder(
                                            strokeWidth: 1,
                                            dashPattern: [10],
                                            child:uploadButton ),
                                      ],
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 20.0,right: 20,top: 200),
                                      child: signUpButton,
                                    )
                                  ],
                                ),
                              ),
                            ),



                          ]),
                    );
                  } else {
                    return Form(
                      key:_formkey,
                      child: Column(mainAxisAlignment: MainAxisAlignment.start,

                          children: [
                            Expanded(
                              child: Container(

                                height: 50,
                                color: Colors.black,
                                child: Padding(
                                  padding: const EdgeInsets.only(top:2),
                                  child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      IconButton(icon: Icon(Icons.arrow_back,
                                        color: Colors.white,),
                                        onPressed: (){},
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(right: 80),
                                        child: Text('Personal Details',
                                            style:TextStyle(
                                                fontSize: 30,
                                                color: Colors.white
                                            )),
                                      ),
                                      Text('Step 3',
                                        style: TextStyle(
                                            fontSize: 20,
                                            color: Colors.white
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(16.0),
                              child: Container(
                                child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Column(crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.only(top: 20,bottom: 10),
                                          child: Text('Bank account holder name',
                                            style: TextStyle(
                                                fontSize: 25
                                            ),
                                          ),
                                        ),
                                        accountNamefield
                                      ],
                                    ),
                                    Column(crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.only(top: 20,bottom: 10),
                                          child: Text('Bank account number',
                                            style: TextStyle(
                                                fontSize: 25
                                            ),
                                          ),
                                        ),
                                        accountNumberfield
                                      ],
                                    ),
                                    Column(crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.only(top: 20,bottom: 10),
                                          child: Text(' Bank name',
                                            style: TextStyle(
                                                fontSize: 25
                                            ),),
                                        ),
                                        bankNamefield
                                      ],
                                    ),

                                    Column(crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.only(top: 10,bottom: 5),
                                          child: Text('BVN / NATIONAL I.D / VOTER’S CARD',
                                            style: TextStyle(
                                              fontSize: 20,

                                            ),),
                                        ),
                                        DottedBorder(
                                            strokeWidth: 1,
                                            dashPattern: [10],
                                            child:uploadButton ),
                                      ],
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 20.0,right: 20,top: 100),
                                      child: signUpButton,
                                    )
                                  ],
                                ),
                              ),
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