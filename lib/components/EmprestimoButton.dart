import 'package:flutter/material.dart';

class EmprestimoButton extends StatelessWidget {
  const EmprestimoButton({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Icon(Icons.request_quote_outlined),
        SizedBox(height: 8),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Empréstimo",
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
          "Valor disponível de até",
          style: TextStyle(
            color: Colors.grey[600],
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(height: 8),
        Text(
          "R\$ 25.000,00",
          style: TextStyle(
            color: Colors.grey[600],
            fontWeight: FontWeight.bold,
            letterSpacing: -1.5,
          ),
        ),
      ],
    );
  }
}
