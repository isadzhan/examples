import 'package:flutter/material.dart';

class BookDetailPage extends StatelessWidget {
  final String bookId;
  static const String route = "/book";

  const BookDetailPage({super.key, required this.bookId});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Book Details - ID $bookId"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Book ID: $bookId",
              style: const TextStyle(fontSize: 24),
            ),
            const SizedBox(height: 20),
            Text(
              "Here will be more details about the book.",
              style: const TextStyle(fontSize: 16),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () => Navigator.pop(context),
              child: const Text("Go Back"),
            ),
          ],
        ),
      ),
    );
  }
}
