import'package:flutter/material.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:milliadedriver/SignUpScreens/DetailsScreen3.dart';


    class DetailsScreen2 extends StatefulWidget {
      @override
      _DetailsScreen2State createState() => _DetailsScreen2State();
    }

    class _DetailsScreen2State extends State<DetailsScreen2> {
      final _formkey = GlobalKey<FormState>();
      final TextEditingController carrBrandController = TextEditingController();
      final TextEditingController carModelController = new TextEditingController();
      final TextEditingController colorMController = new TextEditingController();
      final TextEditingController plateCarController = new TextEditingController();
      final TextEditingController yearController = new TextEditingController();
      final TextEditingController uploodController = new TextEditingController();
      @override
      Widget build(BuildContext context) {
        final carBrandfield = TextFormField(
            autofocus: false,
            controller: carrBrandController,
            keyboardType: TextInputType.text,
            onSaved: (value) {
              carrBrandController.text = value!;
            },
            textInputAction: TextInputAction.next,
            decoration: InputDecoration(
                fillColor: Colors.grey.shade200,filled: true,

                contentPadding: EdgeInsets.fromLTRB(20, 10, 30, 10),
                hintText: 'E.g. Toyota, TVS, Honda',
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide.none
                )

            ));
        final carModelfield = TextFormField(
          autofocus: false,
          controller: carModelController,
          keyboardType:TextInputType.name,

          validator: (value) {
            RegExp regex = new RegExp(r'^.{1,}$');
            if (value!.isEmpty) {
              return ('Car model is required!');
            }
            if (!regex.hasMatch(value)) {
              return ('Please enter Car model');
            }
            return (null);
          },
          onSaved:( value){carModelController.text=value!;},
          textInputAction: TextInputAction.next,
          decoration: InputDecoration(

              fillColor: Colors.grey.shade200,filled: true,
              contentPadding: EdgeInsets.fromLTRB(20, 10, 30, 10),
              hintText: 'E.g. Corolla, Camry',
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide.none
              )
          ),
        );
        final colorMfield = TextFormField(

          autofocus: false,
          controller: colorMController,
          keyboardType:TextInputType.name,

          validator: (value) {
            RegExp regex = new RegExp(r'^.{1,}$');
            if (value!.isEmpty) {
              return ('Car color is required!');
            }
            if (!regex.hasMatch(value)) {
              return ('Please enter Car color');
            }
            return (null);
          },
          onSaved:( value){colorMController.text=value!;},
          textInputAction: TextInputAction.next,
          decoration: InputDecoration(
              fillColor: Colors.grey.shade200,filled: true,
              contentPadding: EdgeInsets.fromLTRB(20, 10, 30, 10),
              hintText: 'Enter Car colour',
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide.none
              )
          ),
        );
        final plateCarfield = TextFormField(

          autofocus: false,
          controller: plateCarController,
          keyboardType:TextInputType.number,
          validator: (value) {
            if (value!.isEmpty) {
              return ('Please enter number plate');
            }
            if (!RegExp("^[a-zA-Z0-9+-_.]+@[a-zA-Z0-9.-]+.[a-z]").hasMatch(value)) {
              return ('Please enter a valid number plate');
            }
            return (null);
          },
          onSaved:( value){plateCarController.text=value!;},
          textInputAction: TextInputAction.next,
          decoration: InputDecoration(
              fillColor: Colors.grey.shade200,filled: true,
              contentPadding: EdgeInsets.fromLTRB(20, 10, 30, 10),
              hintText: 'Enter number plate ',
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: BorderSide.none,
              )
          ),
        );
        final yearfield = TextFormField(

          autofocus: false,
          controller: plateCarController,
          keyboardType:TextInputType.number,
          validator: (value) {
            if (value!.isEmpty) {
              return ('Please enter number plate');
            }
            if (!RegExp("^[a-zA-Z0-9+-_.]+@[a-zA-Z0-9.-]+.[a-z]").hasMatch(value)) {
              return ('Please enter a valid number plate');
            }
            return (null);
          },
          onSaved:( value){plateCarController.text=value!;},
          textInputAction: TextInputAction.next,
          decoration: InputDecoration(
              fillColor: Colors.grey.shade200,filled: true,
              contentPadding: EdgeInsets.fromLTRB(20, 10, 30, 10),
              hintText: 'Enter number plate ',
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: BorderSide.none,
              )
          ),
        );
        final signUpButton = Material(
          elevation: 2,
          borderRadius: BorderRadius.circular(23),
          color: Colors.black,
          child: MaterialButton(

            minWidth: MediaQuery.of(context).size.width,
            padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
            onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>DetailsScreen3()));
            },
            child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Continue',
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
        final uploadButton = Material(
          borderRadius: BorderRadius.circular(10),
          color: Colors.grey.shade200,
          child: MaterialButton(

            minWidth: MediaQuery.of(context).size.width,
            padding: EdgeInsets.fromLTRB(20, 20, 20, 20),
            onPressed: (){
            },
            child: Column(mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [

                IconButton(onPressed: (){},
                    icon: Icon(Icons.unarchive,
                      color: Colors.black,)),
                Text('Upload Driver\'s License',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,

                  ),

                ),
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
                                        Text('Step 2',
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
                                              child: Text('Car Brand',
                                                style: TextStyle(
                                                    fontSize: 25
                                                ),),
                                            ),
                                            carBrandfield
                                          ],
                                        ),
                                        Column(crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Padding(
                                              padding: const EdgeInsets.only(top: 20,bottom: 10),
                                              child: Text('Car Model',
                                                style: TextStyle(
                                                    fontSize: 25
                                                ),
                                              ),
                                            ),
                                            carModelfield
                                          ],
                                        ),
                                        Column(crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Padding(
                                              padding: const EdgeInsets.only(top: 20,bottom: 10),
                                              child: Text('Colour',
                                                style: TextStyle(
                                                    fontSize: 25
                                                ),
                                              ),
                                            ),
                                            colorMfield
                                          ],
                                        ),
                                        Column(crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Padding(
                                              padding: const EdgeInsets.only(top: 20,bottom: 10),
                                              child: Text(' Number plate',
                                                style: TextStyle(
                                                    fontSize: 25
                                                ),),
                                            ),
                                            plateCarfield
                                          ],
                                        ),
                                        Column(crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Padding(
                                              padding: const EdgeInsets.only(top: 20,bottom: 10),
                                              child: Text('Year',
                                                style: TextStyle(
                                                    fontSize: 25
                                                ),),
                                            ),
                                            yearfield
                                          ],
                                        ),

                                        Column(crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Padding(
                                              padding: const EdgeInsets.only(top: 10,bottom: 5),
                                              child: Text('Driver\'s License',
                                                style: TextStyle(
                                                    fontSize: 20
                                                ),),
                                            ),
                                            DottedBorder(
                                              strokeWidth: 1,
                                                dashPattern: [10],
                                                child:uploadButton ),
                                          ],
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(left: 20.0,right: 20,top: 30),
                                          child: signUpButton,
                                        )
                                      ],
                                    ),
                                  ),
                                ),



                              ]),
                        );
                      } else
                        return Form(
                          key:_formkey,
                          child: Column(crossAxisAlignment: CrossAxisAlignment.start,

                              children: [
                                Expanded(
                                  child: Container(
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
                                          Text('Step 2',
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
                                              child: Text('Car Brand',
                                                style: TextStyle(
                                                    fontSize: 25
                                                ),),
                                            ),
                                            carBrandfield
                                          ],
                                        ),
                                        Column(crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Padding(
                                              padding: const EdgeInsets.only(top: 20,bottom: 10),
                                              child: Text('Car Model',
                                                style: TextStyle(
                                                    fontSize: 25
                                                ),
                                              ),
                                            ),
                                            carModelfield
                                          ],
                                        ),
                                        Column(crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Padding(
                                              padding: const EdgeInsets.only(top: 20,bottom: 10),
                                              child: Text('Colour',
                                                style: TextStyle(
                                                    fontSize: 25
                                                ),
                                              ),
                                            ),
                                            colorMfield
                                          ],
                                        ),
                                        Column(crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Padding(
                                              padding: const EdgeInsets.only(top: 20,bottom: 10),
                                              child: Text(' Number plate',
                                                style: TextStyle(
                                                    fontSize: 25
                                                ),),
                                            ),
                                            plateCarfield
                                          ],
                                        ),
                                        Column(crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Padding(
                                              padding: const EdgeInsets.only(top: 20,bottom: 10),
                                              child: Text('Year',
                                                style: TextStyle(
                                                    fontSize: 25
                                                ),),
                                            ),
                                            yearfield
                                          ],
                                        ),

                                        Column(crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Padding(
                                              padding: const EdgeInsets.only(top: 10,bottom: 5),
                                              child: Text('Driver\'s License',
                                                style: TextStyle(
                                                    fontSize: 20
                                                ),),
                                            ),
                                            DottedBorder(
                                                strokeWidth: 1,
                                                dashPattern: [10],
                                                child:uploadButton ),
                                          ],
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(left: 20.0,right: 20,top: 30),
                                          child: signUpButton,
                                        )
                                      ],
                                    ),
                                  ),
                                ),



                              ]),
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