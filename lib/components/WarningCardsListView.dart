import 'package:flutter/material.dart';

class WarningCardsListView extends StatelessWidget {
  WarningCardsListView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<RichText> labels = [
      RichText(
        text: TextSpan(
          text: 'Você tem até ',
          style: TextStyle(
            color: Colors.black,
            fontSize: 12,
            fontWeight: FontWeight.w300,
            height: 1.4,
          ),
          children: <TextSpan>[
            TextSpan(
              text: 'R\$ 25.000,00',
              style: TextStyle(
                color: Theme.of(context).primaryColor,
                fontSize: 12,
              ),
            ),
            TextSpan(text: ' disponíveis para empréstimo.'),
          ],
        ),
      ),
      RichText(
        text: TextSpan(
          text: 'Não parcelou e se arrependeu? ',
          style: TextStyle(
            color: Theme.of(context).primaryColor,
            fontWeight: FontWeight.w300,
            fontSize: 12,
            height: 1.4,
          ),
          children: <TextSpan>[
            TextSpan(
              text: 'Parcele suas compras no app.',
              style: TextStyle(
                color: Colors.black,
                fontSize: 12,
                fontWeight: FontWeight.w300,
              ),
            ),
          ],
        ),
      ),
      RichText(
        text: TextSpan(
          text: 'Salve seus amigos da burocracia. ',
          style: TextStyle(
            color: Colors.black,
            fontSize: 12,
            height: 1.4,
            fontWeight: FontWeight.w300,
          ),
          children: <TextSpan>[
            TextSpan(
              text: 'Faça um convite para o Nubank.',
              style: TextStyle(
                color: Theme.of(context).primaryColor,
                fontWeight: FontWeight.w300,
                fontSize: 12,
              ),
            ),
          ],
        ),
      ),
    ];

    return Container(
      height: 70,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        padding: EdgeInsets.symmetric(horizontal: 22.0),
        itemCount: labels.length,
        itemBuilder: (BuildContext context, int index) {
          return Container(
            width: 290,
            child: MaterialButton(
              padding: EdgeInsets.only(
                left: 22.0,
                right: 70,
                bottom: 10.0,
              ),
              color: Colors.grey[200],
              elevation: 0.0,
              highlightElevation: 0.0,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
              onPressed: () {},
              child: labels[index],
            ),
          );
        },
        separatorBuilder: (BuildContext context, int itemIndex) {
          return SizedBox(width: 12);
        },
      ),
    );
  }
}
