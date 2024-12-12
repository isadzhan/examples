import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'home_page.dart';
import 'book_detail_page.dart';

final router = GoRouter(
  initialLocation: "/",
  routes: [
    GoRoute(
      path: "/",
      builder: (context, state) => const HomePage(),
    ),
    GoRoute(
      path: "/book/:id",
      builder: (context, state) {
        final String id = state.pathParameters['id']!;
        return BookDetailPage(bookId: id);
      },
    ),
  ],
);
