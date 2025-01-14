import 'package:flutter/material.dart';

class IngredientItem extends StatelessWidget {
  final String title;
  final String grams;
  final String percentage;
  final percentageColor;

  final double borderRadius = 12.0;

  const IngredientItem({
    super.key,
    required this.title,
    required this.grams,
    required this.percentage,
    required this.percentageColor,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Container(
        height: 100,
        width: 60,
        decoration: BoxDecoration(
            color: Colors.white70,
            borderRadius: BorderRadius.circular(30),
            border: Border.all(
              color: Colors.black54,
            )),
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              // name
              Text(
                title,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 10.0,
                  color: Colors.grey[700],
                ),
              ),
              const SizedBox(
                height: 4,
              ),
              // grams
              Text(
                grams,
                style: TextStyle(
                  fontStyle: FontStyle.italic,
                  fontSize: 8.0,
                  color: Colors.grey[500],
                ),
              ),
              const SizedBox(
                height: 4,
              ),
              // percentage
              Container(
                height: 40,
                width: 40,
                decoration: BoxDecoration(
                    color: percentageColor,
                    borderRadius: BorderRadius.circular(50)),
                child: Center(
                  child: Text(
                    percentage,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 12.0,
                      color: Colors.grey[600],
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
