import 'package:flutter/material.dart';
import 'package:flutter_providerr/i_counter/i_counter_model.dart';
import 'package:provider/provider.dart';

class ICounterScreen extends StatelessWidget {
  const ICounterScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    print('build');
    return Scaffold(
      appBar: AppBar(
        title: const Text("Provider: i - Counter"),
        backgroundColor: Colors.teal,
        foregroundColor: Colors.white,
        centerTitle: true,
        elevation: 0,
      ),
      body: Container(
        color: Colors.teal.shade100,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              SizedBox(
                width: 300,
                child: Row(
                  children: const <Widget>[
                    Expanded(child: SizedBox()),
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
                      child: Column(
                        children: <Widget>[
                          Text('num'),
                          Text('num2'),
                        ],
                      ),
                    ),
                    Expanded(child: _displayRead(context)),
                    Expanded(child: _displayWatch(context)),
                    Expanded(child: _displaySelect(context)),
                  ],
                ),
              ),
              const Divider(),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  _controlNum(context),
                  const SizedBox(width: 30),
                  _controlNum2(context),
                  const SizedBox(width: 30),
                  _controlAll(context),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _displayRead(BuildContext context) {
    print('read');
    return Column(
      children: <Widget>[
        Text(context.read<ICounterModel>().num.toString()),
        Text(context.read<ICounterModel>().num2.toString()),
      ],
    );
  }

  Widget _displayWatch(BuildContext context) {
    print('watch');
    return Column(
      children: <Widget>[
        Text(context.watch<ICounterModel>().num.toString()),
        Text(context.watch<ICounterModel>().num2.toString()),
      ],
    );
  }

  Widget _displaySelect(BuildContext context) {
    print('select');
    return Column(
      children: <Widget>[
        Text(context.select<ICounterModel, int>((ICounterModel provider) => provider.num).toString()),
        Text(context.select<ICounterModel, int>((ICounterModel provider) => provider.num2).toString()),
      ],
    );
  }

  Widget _controlNum(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Container(
          width: 100,
          height: 100,
          color: Colors.grey.shade300,
          child: Center(child: Text('number')),
        ),
        Container(
          width: 50,
          height: 100,
          color: Colors.red.shade100,
          child: TextButton(
            child: const Text(
              '감소',
              style: TextStyle(fontSize: 30),
            ),
            onPressed: () {
              context.read<ICounterModel>().decreaseNum();
            },
          ),
        ),
        Container(
          width: 50,
          height: 100,
          color: Colors.indigo.shade700,
          child: TextButton(
            child: const Text(
              '증가',
              style: TextStyle(fontSize: 30),
            ),
            onPressed: () {
              context.read<ICounterModel>().increaseNum();
            },
          ),
        ),
      ],
    );
  }

  Widget _controlNum2(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Container(
          width: 100,
          height: 100,
          color: Colors.grey.shade300,
          child: Center(child: Text('number2')),
        ),
        Container(
          width: 50,
          height: 100,
          color: Colors.red.shade100,
          child: TextButton(
            child: const Text(
              '감소',
              style: TextStyle(fontSize: 30),
            ),
            onPressed: () {
              context.read<ICounterModel>().decreaseNum2();
            },
          ),
        ),
        Container(
          width: 50,
          height: 100,
          color: Colors.indigo.shade700,
          child: TextButton(
            child: const Text(
              '증가',
              style: TextStyle(fontSize: 30),
            ),
            onPressed: () {
              context.read<ICounterModel>().increaseNum2();
            },
          ),
        ),
      ],
    );
  }

  Widget _controlAll(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Container(
          width: 100,
          height: 100,
          color: Colors.grey.shade300,
          child: Center(child: Text('number\nnumber2')),
        ),
        Container(
          width: 50,
          height: 100,
          color: Colors.red.shade100,
          child: TextButton(
            child: const Text(
              '감소',
              style: TextStyle(fontSize: 30),
            ),
            onPressed: () {
              context.read<ICounterModel>().decreaseAll();
            },
          ),
        ),
        Container(
          width: 50,
          height: 100,
          color: Colors.indigo.shade700,
          child: TextButton(
            child: const Text(
              '증가',
              style: TextStyle(fontSize: 30),
            ),
            onPressed: () {
              context.read<ICounterModel>().increaseAll();
            },
          ),
        ),
      ],
    );
  }
}
