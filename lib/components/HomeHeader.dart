import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:luizdebank/components/SetMoneyDialog.dart';
import 'package:luizdebank/services/HideMoneyService.dart';
import 'package:luizdebank/services/HolderService.dart';
import 'package:provider/provider.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer2<HideMoneyService, HolderService>(
      builder: (context, hiddenService, holderService, child) => Container(
        color: Theme.of(context).primaryColor,
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 14.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Material(
                    color: Colors.transparent,
                    child: IconButton(
                      icon: Icon(
                        Icons.person_outlined,
                        size: 28,
                        color: Colors.white,
                      ),
                      onPressed: () async {
                        await HapticFeedback.heavyImpact();
                        showDialog(
                          context: context,
                          builder: (_) => SetMoneyDialog(),
                        );
                      },
                    ),
                  ),
                  Row(
                    children: [
                      Material(
                        color: Colors.transparent,
                        child: IconButton(
                          icon: Icon(
                            hiddenService.isHidden
                                ? Icons.visibility_outlined
                                : Icons.visibility_off_outlined,
                            size: 28,
                            color: Colors.white,
                          ),
                          onPressed: () async {
                            await HapticFeedback.heavyImpact();
                            hiddenService.toggle();
                          },
                        ),
                      ),
                      Material(
                        color: Colors.transparent,
                        child: IconButton(
                          icon: Icon(
                            Icons.help_outline,
                            size: 28,
                            color: Colors.white,
                          ),
                          onPressed: () async {
                            await HapticFeedback.heavyImpact();
                          },
                        ),
                      ),
                      Material(
                        color: Colors.transparent,
                        child: IconButton(
                          icon: Icon(
                            Icons.forward_to_inbox_outlined,
                            size: 28,
                            color: Colors.white,
                          ),
                          onPressed: () async {
                            await HapticFeedback.heavyImpact();
                          },
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(22.0),
              child: Text(
                "Olá, ${holderService.holder.fullName}",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
