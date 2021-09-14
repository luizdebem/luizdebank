import 'package:flutter/material.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Theme.of(context).primaryColor,
      width: double.infinity,
      padding: EdgeInsets.symmetric(horizontal: 22.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(
                padding: EdgeInsets.zero,
                constraints: BoxConstraints(),
                icon: Icon(
                  Icons.person_outlined,
                  size: 28,
                  color: Colors.white,
                ),
                onPressed: () {},
              ),
              Row(
                children: [
                  IconButton(
                    icon: Icon(
                      Icons.visibility_outlined,
                      size: 28,
                      color: Colors.white,
                    ),
                    onPressed: () {},
                  ),
                  IconButton(
                    icon: Icon(
                      Icons.help_outline,
                      size: 28,
                      color: Colors.white,
                    ),
                    onPressed: () {},
                  ),
                  IconButton(
                    padding: EdgeInsets.fromLTRB(8, 8, 0, 8),
                    constraints: BoxConstraints(),
                    icon: Icon(
                      Icons.forward_to_inbox_outlined,
                      size: 28,
                      color: Colors.white,
                    ),
                    onPressed: () {},
                  ),
                ],
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 22.0),
            child: Text(
              "Olá, Luiz Guilherme",
              style: TextStyle(
                color: Colors.white,
                fontSize: 18,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
