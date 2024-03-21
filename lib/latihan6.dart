import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final List<Map<String, dynamic>> data = [
      {
        "nama": "Arsa",
        "hobi": ["Membaca", "Berenang", "Bermain game"],
        "foto": "https://picsum.photos/id/9/367/267"
      },
      {
        "nama": "Nabila",
        "hobi": ["Menonton film", "Bersepeda", "Memasak"],
        "foto": "https://picsum.photos/id/21/367/267"
      },
      {
        "nama": "Ransi",
        "hobi": ["Mendengarkan musik", "Menulis", "Berlayar"],
        "foto": "https://picsum.photos/id/50/367/267"
      },
    ];

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Biodata Mahasiswa Sistem Informasi"),
        ),
        body: ListView.builder(
          itemCount: data.length,
          itemBuilder: (context, index) {
            return Card(
              child: ListTile(
                leading: CircleAvatar(
                  backgroundImage: NetworkImage(data[index]["foto"]),
                ),
                title: Text(data[index]["nama"]),
                subtitle: Text(data[index]["hobi"].join(", "),
                    style: TextStyle(color: Colors.grey[600])),
              ),
            );
          },
        ),
      ),
    );
  }
}
