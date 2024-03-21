import 'package:flutter/material.dart';

void main() {
  runApp(const SatuSehatApp());
}

class SatuSehatApp extends StatelessWidget {
  const SatuSehatApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Penuhi Lindungi",
      debugShowCheckedModeBanner: false, // Remove debug banner
      home: Scaffold(
        body: Stack(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: MediaQuery.of(context).size.width,
                  color: Colors.blue,
                  padding: EdgeInsets.all(12),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Entering a Public Space",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 25,
                              color: Colors.white,
                            ),
                          ),
                          SizedBox(height: 8),
                          Text(
                            "Stay alert to stay safe",
                            style: TextStyle(
                              fontSize: 20,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(width: 0), // Spacer
                      Container(
                        padding: EdgeInsets.all(0),
                        child: Image.network(
                          'image/handphone.png',
                          height: 150,
                          width: 150,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 0),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 0),
                  height: 80,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        child: Row(
                          children: [
                            Icon(Icons.keyboard_arrow_down,
                                color: Colors.black),
                            SizedBox(width: 8),
                            Text(
                              "Check in Preference",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                                color: Colors.black,
                              ),
                            ),
                          ],
                        ),
                        padding: EdgeInsets.all(12),
                      ),
                      ElevatedButton.icon(
                        onPressed: () {},
                        icon: Icon(Icons.qr_code_sharp, color: Colors.blue),
                        label: Text("Check-In",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.blue)),
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.blue[50],
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          padding: EdgeInsets.symmetric(horizontal: 10),
                        ),
                      ),
                    ],
                  ),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.2),
                        spreadRadius: 2,
                        blurRadius: 5,
                        offset: Offset(0, 3),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 30),
                SizedBox(
                  height: 300,
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          _buildItem(
                            itemName: "Covid19 Vaccine",
                            imageUrl: 'image/vaccine-logo.png',
                          ),
                          _buildItem(
                            itemName: "Covid19 Test Result",
                            imageUrl: 'image/result-logo.png',
                          ),
                          _buildItem(
                            itemName: "EHAC",
                            imageUrl: 'image/ehac.png',
                          ),
                        ],
                      ),
                      SizedBox(height: 8),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          _buildItem(
                            itemName: "Aturan perjalanan",
                            imageUrl: 'image/koper.png',
                          ),
                          _buildItem(
                            itemName: "Teledokter",
                            imageUrl: 'image/teledoctor.png',
                          ),
                          _buildItem(
                            itemName: "Pelayanan Kesehatan",
                            imageUrl: 'image/pelayanan.png',
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Positioned(
              top: 3,
              right: 2,
              child: ClipOval(
                child: Container(
                  width: 70, // Atur lebar container
                  height: 70, // Atur tinggi container
                  child: IconButton(
                    iconSize: 40, // Besar ikon
                    icon: Icon(Icons.info,
                        color: Colors.white), // Warna ikon putih
                    onPressed: () {
                      // Action when info icon is pressed
                    },
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget _buildItem({required String itemName, required String imageUrl}) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 0, horizontal: 0),
      child: Column(
        children: [
          Image.network(
            imageUrl,
            height: 100,
            width: 100,
          ),
          SizedBox(height: 8),
          Text(
            itemName,
            style: TextStyle(
              fontSize: 15,
            ),
          ),
        ],
      ),
    );
  }
}
