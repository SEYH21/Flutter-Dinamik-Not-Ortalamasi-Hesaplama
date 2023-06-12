import 'package:flutter/material.dart';

import '../constants/app_constans.dart';
import '../helper/data_helper.dart';

class KrediDropdownWidget extends StatefulWidget {
  final Function onKrediSecildi;
  const KrediDropdownWidget({required this.onKrediSecildi, super.key});

  @override
  State<KrediDropdownWidget> createState() => _KrediDropdownWidgetState();
}

class _KrediDropdownWidgetState extends State<KrediDropdownWidget> {
  double secilenKrediDegeri = 1;
  @override
  Widget build(BuildContext context) {
    return Container(
        alignment: Alignment.center,
        padding: Sabitler.dropDownPadding,
        decoration: BoxDecoration(
            color: Sabitler.anaRenk.shade100.withOpacity(0.5),
            borderRadius: Sabitler.borderRadius),
        child: DropdownButton<double>(
          elevation: 16,
          iconEnabledColor: Sabitler.anaRenk,
          value: secilenKrediDegeri,
          onChanged: (deger) {
            setState(() {
              secilenKrediDegeri = deger!;
              widget.onKrediSecildi(deger);
            });
          },
          underline: Container(),
          items: DataHelper.tumDerslerinKredileri(),
        ));
  }
}
