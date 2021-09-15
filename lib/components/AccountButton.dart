import 'package:flutter/material.dart';

class AccountButton extends StatelessWidget {
  const AccountButton({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(22.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Conta",
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
              Icon(Icons.keyboard_arrow_right),
            ],
          ),
          SizedBox(height: 18),
          Text(
            "R\$ 1.721.369,32",
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
              fontSize: 25,
              letterSpacing: -2.0,
            ),
          ),
        ],
      ),
    );
  }
}
