import 'package:flutter/material.dart';

void main() {
  runApp(const GojekApp());
}

class GojekApp extends StatelessWidget {
  const GojekApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Goyek",
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Goyek",
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
              )),
          backgroundColor: Colors.blue,
        ),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Your Favorites",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                    ),
                    ElevatedButton(
                      onPressed: () {},
                      style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all<Color>(Colors.white),
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30),
                            side: BorderSide(
                              color: Colors.blue,
                              width: 2,
                            ),
                          ),
                        ),
                        minimumSize: MaterialStateProperty.all<Size>(
                          Size(85, 45),
                        ),
                      ),
                      child: Text(
                        "Edit",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.blue,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 500,
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 0),
                      Row(
                        children: [
                          _buildItem("GoRide", 'image/goride.jpg'),
                          _buildItem("GoCar", 'image/gocar.jpg'),
                          _buildItem("GoFood", 'image/gofood.jpg'),
                          _buildItem("GoSend", 'image/gosend.jpg'),
                        ],
                      ),
                      Row(
                        children: [
                          _buildItem("GoMart", 'image/gomart.jpg'),
                          _buildItem("GoPulsa", 'image/gopulsa.jpg'),
                          _buildItem("Check In", 'image/gocheckin.jpg'),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildItem(String itemName, String imageUrl) {
    return Container(
      margin: EdgeInsets.only(right: 16),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 8.0),
            child: Image.network(
              imageUrl,
              width: 100,
            ),
          ),
          Text(
            itemName,
            style: TextStyle(
              fontSize: 16,
            ),
          ),
        ],
      ),
    );
  }
}
