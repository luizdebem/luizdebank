import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:luizdebank/models/Holder/AccountInfo.dart';
import 'package:luizdebank/models/Holder/CreditCardInfo.dart';
import 'package:luizdebank/models/Holder/Holder.dart';
import 'package:luizdebank/services/HolderService.dart';
import 'package:provider/provider.dart';

class SetMoneyDialog extends StatefulWidget {
  const SetMoneyDialog({Key key}) : super(key: key);

  @override
  _SetMoneyDialogState createState() => _SetMoneyDialogState();
}

class _SetMoneyDialogState extends State<SetMoneyDialog> {
  final _formKey = GlobalKey<FormBuilderState>();

  @override
  Widget build(BuildContext context) {
    return Consumer<HolderService>(
      builder: (context, holderService, child) => AlertDialog(
        content: Container(
          height: 380,
          child: Center(
            child: Theme(
              data: ThemeData(
                inputDecorationTheme: InputDecorationTheme(
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Theme.of(context).primaryColor,
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Theme.of(context).primaryColor,
                    ),
                  ),
                  errorBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Theme.of(context).errorColor,
                    ),
                  ),
                  border: OutlineInputBorder(),
                ),
              ),
              child: SingleChildScrollView(
                child: FormBuilder(
                  key: _formKey,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Insira o seu nome",
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      FormBuilderTextField(
                        name: "fullName",
                        keyboardType: TextInputType.name,
                        decoration: InputDecoration(
                          hintText: "Nome completo",
                        ),
                      ),
                      SizedBox(height: 22),
                      Text(
                        "Insira o valor total em sua conta",
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      FormBuilderTextField(
                        name: "accountTotal",
                        keyboardType: TextInputType.numberWithOptions(
                          decimal: true,
                          signed: false,
                        ),
                        decoration: InputDecoration(
                          hintText: "R\$",
                        ),
                      ),
                      SizedBox(height: 22),
                      Text(
                        "Insira o valor da sua fatura atual",
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      FormBuilderTextField(
                        name: "currentInvoice",
                        keyboardType: TextInputType.numberWithOptions(
                          decimal: true,
                          signed: false,
                        ),
                        decoration: InputDecoration(
                          hintText: "R\$",
                        ),
                      ),
                      SizedBox(height: 22),
                      Text(
                        "Insira o valor do seu limite disponível",
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      FormBuilderTextField(
                        name: "availableLimit",
                        keyboardType: TextInputType.numberWithOptions(
                          decimal: true,
                          signed: false,
                        ),
                        decoration: InputDecoration(
                          hintText: "R\$",
                        ),
                      ),
                      SizedBox(height: 22),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
        actions: [
          TextButton(
            child: Text("CANCELAR"),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
          TextButton(
            child: Text("SALVAR"),
            onPressed: () {
              _formKey.currentState.saveAndValidate();
              Map formValue = _formKey.currentState.value;
              Holder oldHolder = holderService.holder;
              Holder newHolder = Holder(
                accountInfo: AccountInfo(
                  total: formValue["accountTotal"] != null
                      ? double.parse(formValue["accountTotal"])
                      : oldHolder.accountInfo.total,
                ),
                creditCardInfo: CreditCardInfo(
                  availableLimit: formValue["availableLimit"] != null
                      ? double.parse(formValue["availableLimit"])
                      : oldHolder.creditCardInfo.availableLimit,
                  currentInvoice: formValue["currentInvoice"] != null
                      ? double.parse(formValue["currentInvoice"])
                      : oldHolder.creditCardInfo.currentInvoice,
                ),
                fullName: formValue["fullName"] ?? oldHolder.fullName,
              );
              holderService.setHolder(newHolder);
              Navigator.of(context).pop();
            },
          ),
        ],
      ),
    );
  }
}
