import 'package:flutter/material.dart';

class LabeledIconButton extends StatelessWidget {
  final IconData icon;
  final String label;
  const LabeledIconButton({
    Key key,
    @required this.icon,
    @required this.label,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 70,
      child: Column(
        children: [
          TextButton(
            child: Icon(icon, color: Colors.black),
            style: TextButton.styleFrom(
              backgroundColor: Colors.grey[200],
              shape: CircleBorder(),
              minimumSize: Size(100, 100),
            ),
            onPressed: () {},
          ),
          Text(
            label,
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 11, fontWeight: FontWeight.w600),
          ),
        ],
      ),
    );
  }
}
