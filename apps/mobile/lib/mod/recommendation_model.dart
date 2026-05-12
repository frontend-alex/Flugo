import 'package:flutter/animation.dart';

class RecommendationModel {
  String name;
  String imageUrl;
  Color  boxColor;
  String calories;
  String difficulty;
  String duration;

  RecommendationModel({
    required this.name,
    required this.imageUrl,
    required this.boxColor,
    required this.calories,
    required this.difficulty,
    required this.duration,
  });

  static List<RecommendationModel> getRecommendations() {
    List<RecommendationModel> recommendations = [];

    recommendations.add(
      RecommendationModel(
        name: 'Canai Bread',
        imageUrl: 'assets/icons/canai-bread.svg',
        boxColor: Color(0xff92a3fd),
        calories: '200cal',
        difficulty: 'Easy',
        duration: '30min',
      ),
    );

    recommendations.add(
      RecommendationModel(
        name: 'Honey Pancakes',
        imageUrl: 'assets/icons/honey-pancakes.svg',
        boxColor: Color(0xffc58bf2),
        calories: '350cal',
        difficulty: 'Medium',
        duration: '45min',
      ),
    );

    recommendations.add(
      RecommendationModel(
        name: 'Salmon Nigiri',
        imageUrl: 'assets/icons/salmon-nigiri.svg',
        boxColor: Color(0xff92a3fd),
        calories: '250cal',
        difficulty: 'Hard',
        duration: '60min',
      ),
    );

    recommendations.add(
      RecommendationModel(
        name: 'Blueberry Pancakes',
        imageUrl: 'assets/icons/blueberry-pancake.svg',
        boxColor: Color(0xffc58bf2),
        calories: '300cal',
        difficulty: 'Medium',
        duration: '50mins',
      ),
    );

    return recommendations;
  }
}
