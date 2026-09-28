import 'package:flutter/material.dart';
import '../models/bookModels.dart';

class DetailPage extends StatelessWidget {
  final BookModel bookModel; 
  
  const DetailPage({super.key, required this.bookModel});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(bookModel.title, style: const TextStyle(color: Colors.white)),
        backgroundColor: Colors.deepPurple,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start, 
            children: [
              Center(
                child: Image.network(
                  bookModel.imageUrl,
                  height: 250, 
                  fit: BoxFit.cover,
                ),
              ),
              const SizedBox(height: 16),
              
              Text(
                bookModel.title,
                style: const TextStyle(fontSize: 22, fontWeight: FontWeight.bold, color: Colors.deepPurple),
              ),
              const SizedBox(height: 8),
              
              Text(
                "Penulis: ${bookModel.author}",
                style: const TextStyle(fontSize: 16, fontStyle: FontStyle.italic),
              ),
              const SizedBox(height: 16),

              Text("Tahun Rilis: ${bookModel.year}"),
              const SizedBox(height: 8),
              
              Text("Genre: ${bookModel.genre}"),
              const SizedBox(height: 8),
              
              Text("Penerbit: ${bookModel.publisher}"),
              const SizedBox(height: 8),
              
              Text("Jumlah Halaman: ${bookModel.pages}"),
              const SizedBox(height: 8),
              
              Text("Rating: ${bookModel.rating} / 5.0"),
              const SizedBox(height: 8),
              
              Text("Link Buku: ${bookModel.bookUrl}", style: const TextStyle(color: Colors.deepPurple)),
              const SizedBox(height: 16),

              const Text(
                "Deskripsi:",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
              ),
              const SizedBox(height: 8),
              
              Text(bookModel.description),
              const SizedBox(height: 24),
            ],
          ),
        ),
      ),
    );
  }
}