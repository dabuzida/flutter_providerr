import 'package:flutter/material.dart';
import 'package:flutter_providerr/ii_counter/ii_counter_model.dart';
import 'package:flutter_providerr/ii_counter/ii_read.dart';
import 'package:flutter_providerr/ii_counter/ii_select.dart';
import 'package:flutter_providerr/ii_counter/ii_watch.dart';
import 'package:provider/provider.dart';

class IICounterScreen extends StatefulWidget {
  const IICounterScreen({Key? key}) : super(key: key);

  @override
  State<IICounterScreen> createState() => _IICounterScreenState();
}

class _IICounterScreenState extends State<IICounterScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Provider: ii - Counter"),
        backgroundColor: Colors.teal,
        foregroundColor: Colors.white,
        centerTitle: true,
        elevation: 0,
      ),
      body: Container(
        color: Colors.teal.shade100,
        child: Center(
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              SizedBox(height: 100),
              SizedBox(
                width: 300,
                child: Row(
                  children: <Widget>[
                    Expanded(child: Text('', textAlign: TextAlign.center)),
                    Expanded(child: Text('read', textAlign: TextAlign.center)),
                    Expanded(child: Text('watch', textAlign: TextAlign.center)),
                    Expanded(child: Text('select', textAlign: TextAlign.center)),
                  ],
                ),
              ),
              SizedBox(
                width: 300,
                child: Row(
                  children: <Widget>[
                    Expanded(
                      child: Container(
                        height: 100,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text('num'),
                            Text('num2'),
                            Text('num3'),
                          ],
                        ),
                      ),
                    ),
                    Expanded(child: IIRead()),
                    Expanded(child: IIWatch()),
                    Expanded(child: IISelect()),
                  ],
                ),
              ),
              Container(
                color: Colors.yellow,
                child: TextButton(
                  onPressed: () {
                    setState(() {});
                  },
                  child: Text(
                    'set state',
                  ),
                ),
              ),
              Divider(),
              Column(
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Container(
                        width: 200,
                        height: 100,
                        color: Colors.grey.shade300,
                        child: Center(child: Text('number >>')),
                      ),
                      Container(
                        width: 100,
                        height: 100,
                        color: Colors.red.shade100,
                        child: TextButton(
                          child: const Text(
                            '감소',
                            style: TextStyle(fontSize: 30),
                          ),
                          onPressed: () {
                            context.read<IICounterModel>().decreaseNum();
                          },
                        ),
                      ),
                      Container(
                        width: 100,
                        height: 100,
                        color: Colors.indigo.shade700,
                        child: TextButton(
                          child: const Text(
                            '증가',
                            style: TextStyle(fontSize: 30),
                          ),
                          onPressed: () {
                            context.read<IICounterModel>().increaseNum();
                          },
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Container(
                        width: 200,
                        height: 100,
                        color: Colors.grey.shade300,
                        child: Center(child: Text('number2 >>')),
                      ),
                      Container(
                        width: 100,
                        height: 100,
                        color: Colors.red.shade100,
                        child: TextButton(
                          child: const Text(
                            '감소',
                            style: TextStyle(fontSize: 30),
                          ),
                          onPressed: () {
                            context.read<IICounterModel>().decreaseNum2();
                          },
                        ),
                      ),
                      Container(
                        width: 100,
                        height: 100,
                        color: Colors.indigo.shade700,
                        child: TextButton(
                          child: const Text(
                            '증가',
                            style: TextStyle(fontSize: 30),
                          ),
                          onPressed: () {
                            context.read<IICounterModel>().increaseNum2();
                          },
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Container(
                        width: 200,
                        height: 100,
                        color: Colors.grey.shade300,
                        child: Center(child: Text('number3 >>')),
                      ),
                      Container(
                        width: 100,
                        height: 100,
                        color: Colors.red.shade100,
                        child: TextButton(
                          child: const Text(
                            '감소',
                            style: TextStyle(fontSize: 30),
                          ),
                          onPressed: () {
                            context.read<IICounterModel>().decreaseNum3();
                          },
                        ),
                      ),
                      Container(
                        width: 100,
                        height: 100,
                        color: Colors.indigo.shade700,
                        child: TextButton(
                          child: const Text(
                            '증가',
                            style: TextStyle(fontSize: 30),
                          ),
                          onPressed: () {
                            context.read<IICounterModel>().increaseNum3();
                          },
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Container(
                        width: 200,
                        height: 100,
                        color: Colors.grey.shade300,
                        child: Center(child: Text('all >>')),
                      ),
                      Container(
                        width: 100,
                        height: 100,
                        color: Colors.red.shade100,
                        child: TextButton(
                          child: const Text(
                            '감소',
                            style: TextStyle(fontSize: 30),
                          ),
                          onPressed: () {
                            context.read<IICounterModel>().decreaseAll();
                          },
                        ),
                      ),
                      Container(
                        width: 100,
                        height: 100,
                        color: Colors.indigo.shade700,
                        child: TextButton(
                          child: const Text(
                            '증가',
                            style: TextStyle(fontSize: 30),
                          ),
                          onPressed: () {
                            context.read<IICounterModel>().increaseAll();
                          },
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
