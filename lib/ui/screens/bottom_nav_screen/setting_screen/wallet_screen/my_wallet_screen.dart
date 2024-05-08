import 'package:flutter/material.dart';

import '../../../../component/wallet_container.dart';

class MyWalletScreen extends StatefulWidget {
  const MyWalletScreen({super.key});

  @override
  State<MyWalletScreen> createState() => _MyWalletScreenState();
}

class _MyWalletScreenState extends State<MyWalletScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
      appBar: AppBar(
      backgroundColor: Colors.black,     title: Text('Wallet', style:TextStyle(

      ) ,),
      ),
          backgroundColor: Colors.black,
          body: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [

                  Container(
                    height: 112,
                    width: 358,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.topRight,
                        end: Alignment.topLeft,
                        colors: [
                          Colors.pink.withOpacity(0.1),
                          Colors.orange.withOpacity(0.1),
                        ],
                      ),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text('Good Job',
                                style: TextStyle(
                                    fontSize: 30,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.white)),
                            Text(
                              'Current Balance',
                              style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600,
                                  color: Color(0xff848484)),
                            )
                          ],
                        ),
                        Text(
                          '257',
                          style: TextStyle(
                              fontSize: 40,
                              fontWeight: FontWeight.w600,
                              color: Colors.white),
                        )
                      ],
                    ),
                  ),
                  SizedBox(height: 32),

                  ListTile(
                  leading: Icon(Icons.ac_unit),
                  title: Text('Abc',style: TextStyle(color: Colors.white),),
                  trailing: Icon(Icons.apple),
                   shape: RoundedRectangleBorder(


    side: BorderSide(color: Colors.teal, width: 1),
    borderRadius: BorderRadius.circular(5),
  ),
                  )
                  // Align(
                  //   alignment: Alignment.bottomLeft,
                  //   child: Text(
                  //     'Withdrawing Methods',
                  //     style: TextStyle(
                  //         fontSize: 16,
                  //         fontWeight: FontWeight.w500,
                  //         color: Colors.white),
                  //   ),
                  // ),
                  // SizedBox(height: 24,),
                  // CustomContainer(
                  // leadingIcon: Icons.circle,
                  // title: 'Direct transfer to',
                  // trailingIcon: Icons.apple,
                  // ),
                  // SizedBox(height: 16,),
                  // CustomContainer(
                  // leadingIcon: Icons.circle,
                  // title: 'Direct transfer to',
                  // trailingIcon: Icons.apple,
                  // ),
                  // SizedBox(height: 16,),
                  // CustomContainer(
                  // leadingIcon: Icons.circle,
                  // title: 'Direct transfer to',
                  // trailingIcon: Icons.apple,
                  // ),
                ],
              ),
            ),
          )),
    );
  }
}
