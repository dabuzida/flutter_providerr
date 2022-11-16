import 'package:flutter/material.dart';
import 'package:flutter_providerr/iii_counter/iii_counter_model.dart';
import 'package:flutter_providerr/iii_counter/iii_read_watch_select.dart';
import 'package:provider/provider.dart';

class IIICounterScreen extends StatefulWidget {
  const IIICounterScreen({Key? key}) : super(key: key);

  @override
  State<IIICounterScreen> createState() => _SSCounterScreenState();
}

class _SSCounterScreenState extends State<IIICounterScreen> {
  @override
  Widget build(BuildContext context) {
    // 이게 있으면, 어떤 버튼이든 증감 하면, 위젯을 listen이므로 리빌드 되면서 이하 위젯들 모두
    // 리빌드 되서 read는 set state전에 변화가 없어야 하는데 변화가 생기므로 주석치고 해야함
    // context.watch<IIICounterModel>().testNum = 3;
    // int x = context.watch<IIICounterModel>().getTestNum;
    // print(x);

    context.read<IIICounterModel>().testNum = 343;
    int y = context.read<IIICounterModel>().getTestNum;
    print(y);
    return Scaffold(
      appBar: AppBar(
        title: const Text("Provider: iii - Counter"),
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
              IIIReadWatchSelect(),
              Divider(),
              SizedBox(height: 20),
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
                            context.read<IIICounterModel>().decreaseNum();
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
                            context.read<IIICounterModel>().increaseNum();
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
                            context.read<IIICounterModel>().decreaseNum2();
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
                            context.read<IIICounterModel>().increaseNum2();
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
                        child: Center(child: Text('number, number2 >>')),
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
                            context.read<IIICounterModel>().decreaseAll();
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
                            context.read<IIICounterModel>().increaseAll();
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
