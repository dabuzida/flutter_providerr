import 'package:flutter/material.dart';
import 'package:flutter_providerr/iii_counter/iii_counter_model.dart';
import 'package:provider/provider.dart';

class IIIReadWatchSelect extends StatelessWidget {
  const IIIReadWatchSelect({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    print('readwatchselect');
    return Column(
      children: [
        Container(
          width: 400,
          child: Row(
            children: [
              Expanded(child: Text('', textAlign: TextAlign.center)),
              Expanded(child: Text('read', textAlign: TextAlign.center)),
              Expanded(child: Text('watch', textAlign: TextAlign.center)),
              Expanded(child: Text('select', textAlign: TextAlign.center)),
            ],
          ),
        ),
        Container(
          width: 400,
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
              Expanded(child: IIIRead()),
              Expanded(child: IIIWatch()),
              Expanded(child: IIISelct()),
            ],
          ),
        ),
      ],
    );
  }
}

class IIIRead extends StatelessWidget {
  const IIIRead({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    print('read');
    return Column(
      children: <Widget>[
        Text(context.read<IIICounterModel>().num.toString()),
        Text(context.read<IIICounterModel>().num2.toString()),
      ],
    );
  }
}

class IIIWatch extends StatelessWidget {
  const IIIWatch({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    print('watch');
    return Column(
      children: <Widget>[
        Text(context.watch<IIICounterModel>().num.toString()),
        Text(context.watch<IIICounterModel>().num2.toString()),
      ],
    );
  }
}

class IIISelct extends StatelessWidget {
  const IIISelct({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    print('select');
    // final _read = context.select<SSCounterModel>();

    return Column(
      children: <Widget>[
        Text(context.select<IIICounterModel, int>((IIICounterModel provider) => provider.num).toString()),
        Text(context.select<IIICounterModel, int>((IIICounterModel provider) => provider.num2).toString()),
        // Text(context.select<SSCounterModel, SSCounterModel>((SSCounterModel provider) => provider).number2.toString()),
      ],
    );
  }
}
