import 'package:flutter/material.dart' show Color;

class Book {
  final String title, subtitle, description, iconSrc;
  final Color color;

  Book({
    required this.title,
    this.subtitle = "book",
    this.description = "View your recent recommendation",
    this.iconSrc = "assets/icons/book_stack.svg",
    this.color = const Color(0xFF7553F6),
  });
}

final List<Book> books = [
  Book(
    title: "The Great Gatsby",
  ),
  Book(
    title: "Inherent Vice",
    color: const Color(0xFF80A4FF),
  ),
];

final List<Book> recentBooks = [
  Book(
    title: "Novel 1", 
    subtitle: "10 minutes",
  ),
  Book(
    title: "Novel 2",
    subtitle: "15 minutes",
    color: const Color(0xFF9CC5FF),
  ),
  Book(
    title: "Novel 3",
    subtitle: "15 minutes",
    ),
  Book(
    title: "Novel 4",
    subtitle: "15 minutes",
    color: const Color(0xFF9CC5FF),
  ),
];
