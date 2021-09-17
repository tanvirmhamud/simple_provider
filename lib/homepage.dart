import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:simple_provider/provider.dart';

class SimpleProvider extends StatefulWidget {
  const SimpleProvider({Key? key}) : super(key: key);

  @override
  _SimpleProviderState createState() => _SimpleProviderState();
}

class _SimpleProviderState extends State<SimpleProvider> {
  @override
  Widget build(BuildContext context) {
    final mathdata = Provider.of<Mathprovider>(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text("Simple provider"),
      ),
      body: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: Container(
                  margin: const EdgeInsets.all(10),
                  child: TextFormField(
                    initialValue: "0",
                    onChanged: (value) {
                      mathdata.fastnumber(value);
                      mathdata.mathsolve();
                    },
                    keyboardType: TextInputType.number,
                    decoration:
                        const InputDecoration(border: OutlineInputBorder()),
                  ),
                ),
              ),
              const Text("+"),
              Expanded(
                child: Container(
                  margin: const EdgeInsets.all(10),
                  child: TextFormField(
                    initialValue: "0",
                    onChanged: (value) {
                      mathdata.secoundnumber(value);
                      mathdata.mathsolve();
                      
                    },
                    keyboardType: TextInputType.number,
                    decoration:
                        const InputDecoration(border: OutlineInputBorder()),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Text("${mathdata.totalnumber}"),
        ],
      ),
    );
  }
}
