import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class currency extends StatefulWidget {
  const currency({super.key});

  @override
  State<currency> createState() {
    return _cureencystate();
  }
}

class _cureencystate extends State<currency> {
  late double result = 0;
  final TextEditingController textEditingController = TextEditingController();
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("first converter ", style: TextStyle(fontSize: 50)),
          elevation: 10,
          backgroundColor: Color.fromARGB(255, 43, 43, 92),
          centerTitle: true,
          actions: [Icon(Icons.account_tree)],
        ),

        backgroundColor: Color.fromARGB(255, 153, 153, 216),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                "currency converter  ",
                style: TextStyle(
                  fontSize: 30,
                  color: Color.fromARGB(248, 9, 9, 184),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 50, right: 50),

                child: SizedBox(
                  width: 250.0,
                  child: TextField(
                    controller: textEditingController,
                    keyboardType: TextInputType.number,

                    decoration: InputDecoration(
                      label: Text(
                        "convert here ",
                        style: TextStyle(
                          fontSize: 20,
                          color: Color.fromARGB(255, 1, 1, 20),
                        ),
                      ),

                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                      ),
                      helper: Text("textField"),
                      filled: true,
                      fillColor: Color.fromARGB(209, 160, 41, 41),
                    ),
                  ),
                ),
              ),

              TextButton(
                onPressed: () {
                  print(textEditingController.text);

                  setState(() {
                    double resul = double.parse(textEditingController.text);
                    result = resul * 85;
                  });
                },
                style: ButtonStyle(
                  elevation: WidgetStatePropertyAll(100),
                  backgroundColor: WidgetStatePropertyAll(Colors.black87),
                  foregroundColor: WidgetStatePropertyAll(Colors.brown),
                  // shape: WidgetStatePropertyAll(OvalBorder()),
                  fixedSize: WidgetStatePropertyAll(Size(double.infinity, 50)),
                ),

                child: Text("click here ", style: TextStyle(fontSize: 30)),
              ),

              Text(
                result.toString() + "  INR",
                style: TextStyle(
                  fontSize: 100,
                  color: Color.fromARGB(158, 224, 15, 15),
                ),
              ),
            ],
          ),
        ),
      ),
    );

    throw UnimplementedError();
  }
}
