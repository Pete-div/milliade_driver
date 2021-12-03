import 'package:flutter/material.dart';
import 'package:dotted_border/dotted_border.dart';

class AccountScreen1 extends StatefulWidget {
  @override
  _AccountScreen1State createState() => _AccountScreen1State();
}

class _AccountScreen1State extends State<AccountScreen1> {


  @override
  final _formkey = GlobalKey<FormState>();
  final TextEditingController dateOfBirthController = TextEditingController();
  final TextEditingController firstNameController = new TextEditingController();
  final TextEditingController lastNameController = new TextEditingController();
  final TextEditingController emailController = new TextEditingController();
  final TextEditingController passwordController = new TextEditingController();
  final TextEditingController numbController = new TextEditingController();
  final TextEditingController carBrandController = new TextEditingController();
  final TextEditingController carModelController = new TextEditingController();
  final TextEditingController colourController = new TextEditingController();
  final TextEditingController plateNumbController = new TextEditingController();
  final TextEditingController yearController = new TextEditingController();
  final TextEditingController accoutHolderController = new TextEditingController();
  final TextEditingController accountNumbController = new TextEditingController();
  final TextEditingController bankNameController = new TextEditingController();
  @override
  Widget build(BuildContext context) {
    final dateOfBirtController = TextFormField(
        autofocus: false,
        controller: dateOfBirthController,
        keyboardType: TextInputType.streetAddress,
        onSaved: (value) {
          dateOfBirthController.text = value!;
        },
        textInputAction: TextInputAction.next,
        decoration: InputDecoration(

            fillColor: Colors.grey.shade200,filled: true,
            contentPadding: EdgeInsets.fromLTRB(20, 10, 30, 10),
            hintText: '19th of August, 1972',
            hintStyle: TextStyle(color: Colors.black,
                fontSize: 25),

            labelText: ' Date of  birth',
            labelStyle: TextStyle(color: Colors.black54,
                fontSize: 20),


            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.white10)
            ),
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

          fillColor: Colors.grey.shade200,filled: true,
          contentPadding: EdgeInsets.fromLTRB(20, 10, 30, 10),
          hintText: 'Martin',
          hintStyle: TextStyle(color: Colors.black,
          fontSize: 25),

          labelText: ' First name',
          labelStyle: TextStyle(color: Colors.black54,
          fontSize: 20),
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide.none
          )
      ),
    );
    final lastNamefield = TextFormField(

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
          fillColor: Colors.grey.shade200,filled: true,
          contentPadding: EdgeInsets.fromLTRB(20, 10, 30, 10),
          hintText: 'Tayo',
          hintStyle: TextStyle(color: Colors.black,
              fontSize: 25),

          labelText: ' last name',
          labelStyle: TextStyle(color: Colors.black54,
              fontSize: 25),
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide.none
          )
      ),
    );
    final numbfield = TextFormField(

      autofocus: false,
      controller: numbController,
      keyboardType:TextInputType.number,
      validator: (value) {
        if (value!.isEmpty) {
          return ('Please enter your phone number');
        }
        if (!RegExp("^[a-zA-Z0-9+-_.]+@[a-zA-Z0-9.-]+.[a-z]").hasMatch(value)) {
          return ('Please enter a valid phone number');
        }
        return (null);
      },
      onSaved:( value){numbController.text=value!;},
      textInputAction: TextInputAction.next,
      decoration: InputDecoration(
          fillColor: Colors.grey.shade200,filled: true,
          contentPadding: EdgeInsets.fromLTRB(20, 10, 30, 10),
          hintText: '+2348134654678',
          hintStyle: TextStyle(color: Colors.black,
              fontSize: 25),

          labelText: ' Phone (Verified)',
          labelStyle: TextStyle(color: Colors.black54,
              fontSize: 20),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide.none,
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
          fillColor: Colors.grey.shade200,filled: true,
          contentPadding: EdgeInsets.fromLTRB(20, 10, 30, 10),
          hintText: 'tayomartins@gmail.com',
          hintStyle: TextStyle(color: Colors.black,
              fontSize: 25),

          labelText: 'Email (Unverified)',
          labelStyle: TextStyle(color: Colors.black54,
              fontSize: 20),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide.none,
          )
      ),
    );
    final carBrandfield = TextFormField(

      autofocus: false,
      controller: carBrandController,
      keyboardType:TextInputType.multiline,
      validator: (value) {
        if (value!.isEmpty) {
          return ('Please enter the Car brand');
        }
        if (!RegExp("^[a-zA-Z0-9+-_.]+@[a-zA-Z0-9.-]+.[a-z]").hasMatch(value)) {
          return ('Please enter a valid Car Brand');
        }
        return (null);
      },
      onSaved:( value){carBrandController.text=value!;},
      textInputAction: TextInputAction.next,
      decoration: InputDecoration(
          fillColor: Colors.grey.shade200,filled: true,
          contentPadding: EdgeInsets.fromLTRB(20, 10, 30, 10),
          hintText: 'Martins',
          hintStyle: TextStyle(color: Colors.black,
              fontSize: 25),

          labelText: ' Car Brand',
          labelStyle: TextStyle(color: Colors.black54,
              fontSize: 20),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide.none,
          )
      ),
    );
    final carModelfield = TextFormField(

      autofocus: false,
      controller: carModelController,
      keyboardType:TextInputType.multiline,
      validator: (value) {
        if (value!.isEmpty) {
          return ('Please enter valid Car Model');
        }
        if (!RegExp("^[a-zA-Z0-9+-_.]+@[a-zA-Z0-9.-]+.[a-z]").hasMatch(value)) {
          return ('Please enter a valid Car model');
        }
        return (null);
      },
      onSaved:( value){carModelController.text=value!;},
      textInputAction: TextInputAction.next,
      decoration: InputDecoration(
          fillColor: Colors.grey.shade200,filled: true,
          contentPadding: EdgeInsets.fromLTRB(20, 10, 30, 10),
          hintText: 'Tayo',
          hintStyle: TextStyle(color: Colors.black,
              fontSize: 25),

          labelText: 'Car Model',
          labelStyle: TextStyle(color: Colors.black54,
              fontSize: 20),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide.none,
          )
      ),
    );
    final colourfield = TextFormField(

      autofocus: false,
      controller: colourController,
      keyboardType:TextInputType.multiline,
      validator: (value) {
        if (value!.isEmpty) {
          return ('Please enter your phone number');
        }
        if (!RegExp("^[a-zA-Z0-9+-_.]+@[a-zA-Z0-9.-]+.[a-z]").hasMatch(value)) {
          return ('Please enter a valid phone number');
        }
        return (null);
      },
      onSaved:( value){colourController.text=value!;},
      textInputAction: TextInputAction.next,
      decoration: InputDecoration(
          fillColor: Colors.grey.shade200,filled: true,
          contentPadding: EdgeInsets.fromLTRB(20, 10, 30, 10),
          hintText: '+2348134654678',
          hintStyle: TextStyle(color: Colors.black,
              fontSize: 25),

          labelText: ' Phone (Verified)',
          labelStyle: TextStyle(color: Colors.black54,
              fontSize: 20),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide.none,
          )
      ),
    );
    final platefield = TextFormField(

      autofocus: false,
      controller: plateNumbController,
      keyboardType:TextInputType.multiline,
      validator: (value) {
        if (value!.isEmpty) {
          return ('Please enter your phone number');
        }
        if (!RegExp("^[a-zA-Z0-9+-_.]+@[a-zA-Z0-9.-]+.[a-z]").hasMatch(value)) {
          return ('Please enter a valid phone number');
        }
        return (null);
      },
      onSaved:( value){plateNumbController.text=value!;},
      textInputAction: TextInputAction.next,
      decoration: InputDecoration(
          fillColor: Colors.grey.shade200,filled: true,
          contentPadding: EdgeInsets.fromLTRB(20, 10, 30, 10),
          hintText: '+2348134654678',
          hintStyle: TextStyle(color: Colors.black,
              fontSize: 25),

          labelText: ' Phone (Verified)',
          labelStyle: TextStyle(color: Colors.black54,
              fontSize: 20),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide.none,
          )
      ),
    );
    final yearfield = TextFormField(

      autofocus: false,
      controller: yearController,
      keyboardType:TextInputType.number,
      validator: (value) {
        if (value!.isEmpty) {
          return ('Please enter your phone number');
        }
        if (!RegExp("^[a-zA-Z0-9+-_.]+@[a-zA-Z0-9.-]+.[a-z]").hasMatch(value)) {
          return ('Please enter a valid phone number');
        }
        return (null);
      },
      onSaved:( value){yearController.text=value!;},
      textInputAction: TextInputAction.next,
      decoration: InputDecoration(
          fillColor: Colors.grey.shade200,filled: true,
          contentPadding: EdgeInsets.fromLTRB(20, 10, 30, 10),
          hintText: '19th of August, 1972',
          hintStyle: TextStyle(color: Colors.black,
              fontSize: 25),

          labelText: ' year',
          labelStyle: TextStyle(color: Colors.black54,
              fontSize: 20),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide.none,
          )
      ),
    );
    final accountHolderfield = TextFormField(

      autofocus: false,
      controller:accoutHolderController,
      keyboardType:TextInputType.name,
      validator: (value) {
        if (value!.isEmpty) {
          return ('Please enter your phone number');
        }
        if (!RegExp("^[a-zA-Z0-9+-_.]+@[a-zA-Z0-9.-]+.[a-z]").hasMatch(value)) {
          return ('Please enter a valid phone number');
        }
        return (null);
      },
      onSaved:( value){accoutHolderController.text=value!;},
      textInputAction: TextInputAction.next,
      decoration: InputDecoration(
          fillColor: Colors.grey.shade200,filled: true,
          contentPadding: EdgeInsets.fromLTRB(20, 10, 30, 10),
          hintText: 'Salako',
          hintStyle: TextStyle(color: Colors.black,
              fontSize: 25),

          labelText: ' Account name',
          labelStyle: TextStyle(color: Colors.black54,
              fontSize: 20),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide.none,
          )
      ),
    );
    final accountNumbfield = TextFormField(

      autofocus: false,
      controller: accountNumbController,
      keyboardType:TextInputType.number,
      validator: (value) {
        if (value!.isEmpty) {
          return ('Please enter your phone number');
        }
        if (!RegExp("^[a-zA-Z0-9+-_.]+@[a-zA-Z0-9.-]+.[a-z]").hasMatch(value)) {
          return ('Please enter a valid phone number');
        }
        return (null);
      },
      onSaved:( value){accountNumbController.text=value!;},
      textInputAction: TextInputAction.next,
      decoration: InputDecoration(
          fillColor: Colors.grey.shade200,filled: true,
          contentPadding: EdgeInsets.fromLTRB(20, 10, 30, 10),
          hintText: '0000481346548',
          hintStyle: TextStyle(color: Colors.black,
              fontSize: 25),

          labelText: ' Acount number',
          labelStyle: TextStyle(color: Colors.black54,
              fontSize: 20),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide.none,
          )
      ),
    );
    final bankNamefield = TextFormField(

      autofocus: false,
      controller: bankNameController,
      keyboardType:TextInputType.text,
      validator: (value) {
        if (value!.isEmpty) {
          return ('Please enter your bank name');
        }
        if (!RegExp("^[a-zA-Z0-9+-_.]+@[a-zA-Z0-9.-]+.[a-z]").hasMatch(value)) {
          return ('Please enter a valid bank name');
        }
        return (null);
      },
      onSaved:( value){bankNameController.text=value!;},
      textInputAction: TextInputAction.next,
      decoration: InputDecoration(
          fillColor: Colors.grey.shade200,filled: true,
          contentPadding: EdgeInsets.fromLTRB(20, 10, 30, 10),
          hintText: '+2348134654678',
          hintStyle: TextStyle(color: Colors.black,
              fontSize: 25),

          labelText: ' Phone (Verified)',
          labelStyle: TextStyle(color: Colors.black54,
              fontSize: 20),
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

    final uploadButton2 = Material(
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
                              width: 600,
                              height: 60,
                              color: Colors.black,
                              child: Padding(
                                padding: const EdgeInsets.only(top:16),
                                child: Padding(
                                  padding: const EdgeInsets.only(right: 80,left: 20),
                                  child: Text(' Account',
                                      style:TextStyle(
                                          fontSize: 30,
                                          color: Colors.white
                                      )),
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
                                    Column(
                                      children: [
                                        Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text('Personal Details'),
                                            IconButton(onPressed: (){},
                                                icon: Icon(Icons.arrow_drop_down))
                                          ],
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(top: 10,bottom: 10),
                                          child: firstNamefield,
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(top: 10,bottom: 10),
                                          child: lastNamefield,
                                        ),
                                        Padding(
                                          padding: const  EdgeInsets.only(top: 10,bottom: 10),
                                          child: numbfield,
                                        ),
                                        Padding(
                                          padding: const  EdgeInsets.only(top: 10,bottom: 10),
                                          child: emailfield,
                                        ),
                                        Padding(
                                          padding: const  EdgeInsets.only(top: 10,bottom: 10),
                                          child: dateOfBirtController,
                                        ),

                                      ],
                                    ),
                                    Column(
                                      children: [
                                        Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text('Vehicle Details',
                                            style: TextStyle(
                                              fontSize: 30
                                            ),),
                                            IconButton(onPressed: (){},
                                                icon: Icon(Icons.arrow_drop_down))
                                          ],
                                        ),
                                      Padding(
                                        padding: const  EdgeInsets.only(top: 10,bottom: 10),
                                        child: carBrandfield,
                                      ),
                                        Padding(
                                          padding: const  EdgeInsets.only(top: 10,bottom: 10),
                                          child: carModelfield,
                                        ),
                                        Padding(
                                          padding: const  EdgeInsets.only(top: 10,bottom: 10),
                                          child: colourfield,
                                        ),
                                        Padding(
                                          padding: const  EdgeInsets.only(top: 10,bottom: 10),
                                          child: platefield,
                                        ),
                                        Padding(
                                          padding: const  EdgeInsets.only(top: 10,bottom: 10),
                                          child: yearfield,
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

                                      ],
                                    ),
                                    Column(
                                      children: [
                                        Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text('Payment Details',
                                              style: TextStyle(
                                                  fontSize: 30
                                              ),),
                                            IconButton(onPressed: (){},
                                                icon: Icon(Icons.arrow_drop_down))
                                          ],
                                        ),
                                        Padding(
                                          padding: const  EdgeInsets.only(top: 10,bottom: 10),
                                          child: accountHolderfield
                                        ),
                                        Padding(
                                          padding: const  EdgeInsets.only(top: 10,bottom: 10),
                                          child: accountNumbfield,
                                        ),
                                        Padding(
                                          padding: const  EdgeInsets.only(top: 10,bottom: 10),
                                          child: bankNamefield,
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


                                      ],
                                    ),


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
                                  child: Padding(
                                    padding: const EdgeInsets.only(right: 80),
                                    child: Text('Personal Details',
                                        style:TextStyle(
                                            fontSize: 30,
                                            color: Colors.white
                                        )),
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
                                        Row(
                                          children: [
                                            Padding(
                                              padding: const EdgeInsets.only(top: 20,bottom: 10),
                                              child: Text('Personal Details',
                                                style: TextStyle(
                                                    fontSize: 25
                                                ),
                                              ),
                                            ),
                                            IconButton(onPressed: (){},
                                                icon: Icon(Icons.arrow_drop_down))
                                          ],
                                        ),
                                        firstNamefield
                                      ],
                                    ),

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