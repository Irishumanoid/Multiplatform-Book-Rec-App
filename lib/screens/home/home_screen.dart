import 'package:flutter/material.dart';

import '../../model/book.dart';
import 'components/book_card.dart';
import 'components/secondary_book_card.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(bottom: 50),
        child: SafeArea(
          bottom: false,
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 40),
                Padding(
                  padding: const EdgeInsets.all(20),
                  child: Text(
                    "Recents",
                    style: Theme.of(context).textTheme.headlineMedium!.copyWith(
                        color: Colors.black, fontWeight: FontWeight.bold),
                  ),
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: books
                        .map(
                          (book) => Padding(
                            padding: const EdgeInsets.only(left: 20),
                            child: BookCard(
                              title: book.title,
                              iconSrc: book.iconSrc,
                              color: book.color,
                            ),
                          ),
                        )
                        .toList(),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(20),
                  child: Text(
                    "All Recommendations",
                    style: Theme.of(context).textTheme.headlineSmall!.copyWith(
                        color: Colors.black, fontWeight: FontWeight.bold),
                  ),
                ),
                ...recentBooks.map((book) => Padding(
                      padding:
                          const EdgeInsets.only(left: 20, right: 20, bottom: 20),
                      child: SecondaryBookCard(
                        title: book.title,
                        subtitle: book.subtitle,
                        iconsSrc: book.iconSrc,
                        colorl: book.color,
                      ),
                    )),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
