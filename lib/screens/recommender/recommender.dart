import 'package:flutter/material.dart';
import 'package:rive_animation/screens/recommender/components/type_slider.dart';

class Recommender extends StatefulWidget {
  const Recommender({super.key});

  @override
  State<Recommender> createState() => _RecommenderState();
}

class _RecommenderState extends State<Recommender> {
  int sliderOneVal = 0; 
  int sliderTwoVal = 0; 
  int sliderThreeVal = 0; 
  int sliderFourVal = 0; 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(40),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    "Book Rec Preferences",
                    style: Theme.of(context).textTheme.headlineMedium!.copyWith(
                        color: Colors.black, fontWeight: FontWeight.bold),
                  ),
                  Text("Fill in the following details to get your customized book suggestions",
                    style: Theme.of(context).textTheme.headlineSmall!.copyWith(fontSize: 14),
                  ),
                ],
              ),
            ),
            TypeSlider(
              leftLabel: "fiction", 
              rightLabel: "nonfiction", 
              onChanged: (value) {
                setState(() {
                  sliderOneVal = value.floor();
                });
              },
            ),
            TypeSlider(
              leftLabel: "historical", 
              rightLabel: "contemporary",
              onChanged: (value) {
                setState(() {
                  sliderTwoVal = value.floor();
                });
              },
            ),
            TypeSlider(
              leftLabel: "slow-paced", 
              rightLabel: "fast-paced",
              onChanged: (value) {
                setState(() {
                  sliderThreeVal = value.floor();
                });
              },
            ),
            TypeSlider(
              leftLabel: "dark", 
              rightLabel: "light",
              onChanged: (value) {
                setState(() {
                  sliderFourVal = value.floor();
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}
