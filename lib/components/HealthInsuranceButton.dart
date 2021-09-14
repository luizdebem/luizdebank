import 'package:flutter/material.dart';

class HealthInsuranceButton extends StatelessWidget {
  const HealthInsuranceButton({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Icon(Icons.favorite_outline_outlined),
        SizedBox(height: 8),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Seguro de vida",
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
            Icon(Icons.keyboard_arrow_right),
          ],
        ),
        SizedBox(height: 15),
        Text(
          "Conheça Nubank Vida: um seguro simples e que cabe no bolso.",
          style: TextStyle(
            color: Colors.grey[600],
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}
