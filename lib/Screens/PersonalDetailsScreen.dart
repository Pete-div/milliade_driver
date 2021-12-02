import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:milliadedriver/Screens/DetailsScreen2.dart';

class PersonalDetailsScreen extends StatefulWidget {
  @override
  _PersonalDetailsScreenState createState() => _PersonalDetailsScreenState();
}

class _PersonalDetailsScreenState extends State<PersonalDetailsScreen> {

  final _formkey = GlobalKey<FormState>();
  final TextEditingController numberController = TextEditingController();
  final TextEditingController firstNameController = new TextEditingController();
  final TextEditingController lastNameController = new TextEditingController();
  final TextEditingController emailController = new TextEditingController();
  final TextEditingController passwordController = new TextEditingController();
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
        fillColor: Colors.grey,filled: true,

        contentPadding: EdgeInsets.fromLTRB(20, 10, 30, 10),
        hintText: 'Enter phone Number',
        suffixIcon: Icon(Icons.calendar_today,
        color: Colors.black,),
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide.none
          )

      ));
    final firstNamefield = TextFormField(
      autofocus: false,
      controller: firstNameController,
      keyboardType:TextInputType.name,

      validator: (value) {
        RegExp regex = new RegExp(r'^.{3,}$');
        if (value!.isEmpty) {
          return ('Your First name is required!');
        }
        if (!regex.hasMatch(value)) {
          return ('Please enter your First name(min 3 Characters)');
        }
        return (null);
      },
      onSaved:( value){firstNameController.text=value!;},
      textInputAction: TextInputAction.next,
      decoration: InputDecoration(

          fillColor: Colors.grey,filled: true,
          contentPadding: EdgeInsets.fromLTRB(20, 10, 30, 10),
          hintText: 'Enter first name',
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide.none
          )
      ),
    );
    final secondNamefield = TextFormField(

      autofocus: false,
      controller: lastNameController,
      keyboardType:TextInputType.name,

      validator: (value) {
        RegExp regex = new RegExp(r'^.{6,}$');
        if (value!.isEmpty) {
          return ('Your last name is required!');
        }
        if (!regex.hasMatch(value)) {
          return ('Please enter your First name(min6 Characters)');
        }
        return (null);
      },
      onSaved:( value){lastNameController.text=value!;},
      textInputAction: TextInputAction.next,
      decoration: InputDecoration(
          fillColor: Colors.grey,filled: true,
          contentPadding: EdgeInsets.fromLTRB(20, 10, 30, 10),
          hintText: 'Enter last name',
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide.none
          )
      ),
    );
    final emailfield = TextFormField(

      autofocus: false,
      controller: emailController,
      keyboardType:TextInputType.emailAddress,
      validator: (value) {
        if (value!.isEmpty) {
          return ('Please enter your Email');
        }
        if (!RegExp("^[a-zA-Z0-9+-_.]+@[a-zA-Z0-9.-]+.[a-z]").hasMatch(value)) {
          return ('Please enter a valid email');
        }
        return (null);
      },
      onSaved:( value){emailController.text=value!;},
      textInputAction: TextInputAction.next,
      decoration: InputDecoration(
        fillColor: Colors.grey,filled: true,
          contentPadding: EdgeInsets.fromLTRB(20, 10, 30, 10),
          hintText: 'Enter valid Email ',
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide.none,
          )
      ),
    );
    final signUpButton = Material(
      elevation: 5,
      borderRadius: BorderRadius.circular(23),
      color: Colors.black,
      child: MaterialButton(

        minWidth: MediaQuery.of(context).size.width,
        padding: EdgeInsets.fromLTRB(20, 20, 20, 20),
        onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder: (context)=>DetailsScreen2()));
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
                                    Text('Step 1',
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
                                    Stack(
                                      children: [
                                        CircleAvatar(
                                          radius: 60,
                                          child: Image.asset('images/cl.png',
                                          fit: BoxFit.contain,),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(left: 70,top: 60),
                                          child: IconButton(onPressed: (){},
                                              icon: Icon(Icons.unarchive,
                                              size: 40,
                                              color: Colors.redAccent,)),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(left: 30.0,right: 16,top: 120,bottom: 16),
                                          child: Text('Import photo',
                                          style: TextStyle(
                                            fontSize: 25
                                          ),),
                                        ),
                                      ],
                                    ),
                                   Container(
                                     height: 1,
                                     color: Colors.grey,
                                   ),
                                    Column(crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.only(top: 20,bottom: 10),
                                          child: Text('First Name',
                                          style: TextStyle(
                                            fontSize: 25
                                          ),
                                          ),
                                        ),
                                        firstNamefield
                                      ],
                                    ),
                                    Column(crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.only(top: 20,bottom: 10),
                                          child: Text('Last Name',
                                          style: TextStyle(
                                            fontSize: 25
                                          ),
                                          ),
                                        ),
                                        secondNamefield
                                      ],
                                    ),
                                    Column(crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.only(top: 20,bottom: 10),
                                          child: Text(' Email',
                                          style: TextStyle(
                                            fontSize: 25
                                          ),),
                                        ),
                                        emailfield
                                      ],
                                    ),
                                    Column(crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.only(top: 20,bottom: 10),
                                          child: Text('Phone number',
                                          style: TextStyle(
                                            fontSize: 25
                                          ),),
                                        ),
                                        numbeController
                                      ],
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 30.0,right: 30,top: 80),
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
                                      Text('Step 1',
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
                                    Stack(
                                      children: [
                                        CircleAvatar(
                                          radius: 60,
                                          child: Image.asset('images/cl.png',
                                            fit: BoxFit.contain,),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(left: 70,top: 60),
                                          child: IconButton(onPressed: (){},
                                              icon: Icon(Icons.unarchive,
                                                size: 40,
                                                color: Colors.redAccent,)),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(left: 30.0,right: 16,top: 120,bottom: 16),
                                          child: Text('Import photo',
                                            style: TextStyle(
                                                fontSize: 25
                                            ),),
                                        ),
                                      ],
                                    ),
                                    Container(
                                      height: 1,
                                      color: Colors.grey,
                                    ),
                                    Column(crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.only(top: 20,bottom: 10),
                                          child: Text('First Name',
                                            style: TextStyle(
                                                fontSize: 25
                                            ),
                                          ),
                                        ),
                                        firstNamefield
                                      ],
                                    ),
                                    Column(crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.only(top: 20,bottom: 10),
                                          child: Text('Last Name',
                                            style: TextStyle(
                                                fontSize: 25
                                            ),
                                          ),
                                        ),
                                        secondNamefield
                                      ],
                                    ),
                                    Column(crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.only(top: 20,bottom: 10),
                                          child: Text(' Email',
                                            style: TextStyle(
                                                fontSize: 25
                                            ),),
                                        ),
                                        emailfield
                                      ],
                                    ),
                                    Column(crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.only(top: 20,bottom: 10),
                                          child: Text('Phone number',
                                            style: TextStyle(
                                                fontSize: 25
                                            ),),
                                        ),
                                        numbeController
                                      ],
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 30.0,right: 30,top: 80),
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