import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:rive_animation/screens/recommender/recommender.dart';

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
                Align(
                  alignment: Alignment.topRight,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 20, right: 15),
                    child: ElevatedButton.icon(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const Recommender(),
                          )
                        );
                      }, 
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color.fromARGB(255, 60, 149, 217),
                        minimumSize: const Size(200, 60),
                        shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(15))
                        )
                      ),
                      icon: const Icon(
                        CupertinoIcons.plus_circled,
                        color: Color.fromARGB(255, 255, 255, 255),
                      ),
                      label: const Text('New recommendation'),
                      ),
                  ),
                ),
                const SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.all(10),
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
