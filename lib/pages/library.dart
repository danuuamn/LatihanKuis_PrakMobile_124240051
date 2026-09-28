import 'package:flutter/material.dart';
import 'package:latihan_kuis/pages/login.dart';
import 'details.dart';
import '../models/bookModels.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        title: const Text("Daftar Buku", style: TextStyle(color: Colors.white)),
        actions: [
          ElevatedButton(
            onPressed: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) => LoginPage(),
                ),
              );
            },
            child: const Text("Logout", style: TextStyle(color: Color.fromARGB(255, 255, 55, 55)))
          ),
        ],
      ),
      body: ListView.builder(
        itemCount: bookList.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(bookList[index].title, style: const TextStyle(fontWeight: FontWeight.bold, color: Colors.deepPurple)),
            subtitle: Text(bookList[index].author),
            leading: Image.network(bookList[index].imageUrl),
            trailing: Icon(Icons.arrow_forward_ios, color: Colors.deepPurple),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DetailPage(bookModel: bookList[index]),
                ),
              );
            },
          );
        },
      )
    );
  }
}