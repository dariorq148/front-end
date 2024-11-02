import 'package:flutter/material.dart';

import '../Responsive/Responsive__Size.dart';

class Profile__Page extends StatefulWidget {
  const Profile__Page({super.key});

  @override
  State<Profile__Page> createState() => _Profile__PageState();
}

class _Profile__PageState extends State<Profile__Page> {
  @override
  Widget build(BuildContext context) {
    final responsive = Responsive(context);
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Profile',
          style: TextStyle(fontSize: responsive.responsiveFontSize(20)),
        ),
      ),
      body: SafeArea(
        bottom: true,
        top: true,
        left: true,
        right: true,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //container superior
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  //foto container
                  Flexible(
                    child: Container(
                      //foto
                      child: Padding(
                        padding: EdgeInsets.all(responsive.responsiveWidth(8)),
                        child: Container(
                          width: responsive.responsiveWidth(100),
                          height: responsive.responsiveHeight(100),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(180),
                              color: Colors.black),
                        ),
                      ),
                      padding: EdgeInsets.all(responsive.responsiveWidth(2)),
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.black12),
                      ),
                    ),
                  ),
                  //nombre usuario
                  Flexible(
                    child: Container(
                      width: responsive.responsiveWidth(200),
                      height: responsive.responsiveHeight(100),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 15),
                            child: Text('Dario Ramos Quispe',
                              textAlign: TextAlign.center,
                              style: TextStyle(fontSize: responsive.responsiveFontSize(20)),),
                          ), Text('data')],
                      ),
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.black)),
                    ),
                  ),
                  Flexible(
                    child: Container(
                        width: responsive.responsiveWidth(100),
                        height: responsive.responsiveHeight(100),
                        child: Center(
                          child: IconButton(
                              onPressed: () {}, icon: Icon(Icons.edit)),
                        ),
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.black))),
                  )
                ],
              ),
              SizedBox(
                height: responsive.responsiveHeight(20),
              ),
              Divider(),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 25),
                child: Text(
                  'My Account',
                  style: TextStyle(fontSize: responsive.responsiveFontSize(20),fontWeight: FontWeight.w600),
                  textAlign: TextAlign.justify,
                ),
              ),
              SizedBox(
                height: 20,
              ),

              Padding(
                padding: EdgeInsets.only(left: 25, right: 25),
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 25, vertical: 25),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      GestureDetector(
                        onTap: () {},
                        child: ListTile(
                          leading: Icon(Icons.add_location_alt),
                          title: Text(
                            'Location',
                            textAlign: TextAlign.center,
                          ),
                          trailing: Icon(Icons.arrow_forward_ios_rounded),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {},
                        child: ListTile(
                          leading: Icon(Icons.paypal_outlined),
                          title: Text(
                            'Payment',
                            textAlign: TextAlign.center,
                          ),
                          trailing: Icon(Icons.arrow_forward_ios_rounded),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {},
                        child: ListTile(
                          leading: Icon(Icons.handshake),
                          title: Text(
                            'Others',
                            textAlign: TextAlign.center,
                          ),
                          trailing: Icon(Icons.arrow_forward_ios_rounded),
                        ),
                      ),
                      GestureDetector(
                          onTap: () {
                            print('help center');
                          },
                          child: ListTile(
                            leading: Icon(Icons.add_call),
                            title: Text(
                              'Help Center',
                              textAlign: TextAlign.center,
                            ),
                            trailing: Icon(Icons.arrow_forward_ios_rounded),
                          ))
                    ],
                  ),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      border: Border.all(color: Colors.black26)),
                ),
              ),

              Padding(
                padding:
                const EdgeInsets.symmetric(horizontal: 25, vertical: 150),
                child: Container(
                  width: double.maxFinite,
                  height: responsive.responsiveHeight(50),
                  child: TextButton(
                    onPressed: () {},
                    child: Text(
                      'Logout',
                      style: TextStyle(
                          letterSpacing: 5,
                          fontWeight: FontWeight.bold,
                          fontSize: 20),
                    ),
                    style: ButtonStyle(
                        shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                          side: BorderSide(
                            color: Colors.black,
                            width: 1,
                          ),
                          borderRadius: BorderRadius.circular(8),
                        ))),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
