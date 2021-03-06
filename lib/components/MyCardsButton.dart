import 'package:flutter/material.dart';

class MyCardsButton extends StatelessWidget {
  const MyCardsButton({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 22.0),
      child: MaterialButton(
        padding: EdgeInsets.symmetric(horizontal: 22, vertical: 16),
        elevation: 0.0,
        color: Colors.grey[200],
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
        child: Row(
          children: [
            Icon(Icons.payments_outlined),
            SizedBox(width: 18),
            Text(
              "Meus cartões",
              style: TextStyle(fontSize: 12),
            ),
          ],
        ),
        onPressed: () {},
      ),
    );
  }
}
