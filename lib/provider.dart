import 'package:flutter/cupertino.dart';

class Mathprovider extends ChangeNotifier {
  String fastnumberdata = "0";
  String secoundnumberdata = "0";

  int totalnumber = 0;

  fastnumber(String a) {
    fastnumberdata = a;
    notifyListeners();
  }

  secoundnumber(String b) {
    secoundnumberdata = b;
    notifyListeners();
  }

  mathsolve() {
    totalnumber = int.parse(fastnumberdata) + int.parse(secoundnumberdata);
    print(totalnumber);
    notifyListeners();
  }
}
