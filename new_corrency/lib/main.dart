import 'package:flutter/material.dart';
import 'package:new_corrency/anothor_code.dart';

void main() {
  runApp(myapp());
}

class myapp extends StatefulWidget {
  const myapp({super.key});
  @override
  State createState() => ourapp();
}

class ourapp extends State {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    return currency();
    throw UnimplementedError();
  }
}
