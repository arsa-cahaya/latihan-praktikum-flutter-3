import 'package:flutter/material.dart';

void main() {
  runApp(TwitterApp());
}

class TwitterApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Stack(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Container(
                  constraints: BoxConstraints.expand(
                    height: 200,
                  ),
                  color: Colors.white,
                  child: Image.network(
                    'image/upn_background.jpg',
                    fit: BoxFit.cover,
                  ),
                ),
                Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(
                          left: 24,
                          right: 20,
                          top: 70,
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'UPN Veteran Jawa Timur',
                              style: TextStyle(
                                fontSize: 22,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(height: 1), // Tambahkan spasi vertikal
                            SizedBox(height: 3), // Tambahkan spasi vertikal
                            RichText(
                              text: TextSpan(
                                style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.grey,
                                ),
                                children: [
                                  TextSpan(
                                    text: '@upnvit_official\n\n',
                                  ),
                                  TextSpan(
                                      text:
                                          'AKUN RESMI UPN "VETERAN" JAWA TIMUR Dikelola oleh Humas UPN "Veteran" Jawa Timur Kampus Bela Negara\n\n',
                                      style: TextStyle(
                                        color: Colors.black,
                                      )),
                                  TextSpan(
                                    text: 'Translate bio',
                                    style: TextStyle(
                                      fontSize: 15,
                                      color: Colors.blue, // Warna teks biru
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Positioned(
              left: 30,
              top: 150,
              child: ClipOval(
                child: Container(
                  width: 110,
                  height: 110,
                  color: Colors.white, // Warna abu
                  child: Image.network(
                    'image/upn_logo.jpg',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            Positioned(
              top: 10,
              left: 10,
              child: ClipOval(
                child: Container(
                  width: 40,
                  height: 40,
                  color: Colors.black,
                  child: IconButton(
                    icon: Icon(Icons.arrow_back, color: Colors.white),
                    onPressed: () {},
                  ),
                ),
              ),
            ),
            Positioned(
              top: 210,
              right: 20,
              child: ElevatedButton(
                onPressed: () {},
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(
                    Colors.black,
                  ),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                ),
                child: Padding(
                  padding: EdgeInsets.symmetric(
                    vertical: 6,
                    horizontal: 6,
                  ),
                  child: Text(
                    'Follow',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
