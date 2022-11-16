import 'package:flutter/material.dart';
import 'package:flutter_providerr/ii_counter/ii_counter_model.dart';
import 'package:provider/provider.dart';

class IISelect extends StatelessWidget {
  const IISelect({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    print('select');
    return Container(
      width: 100,
      height: 100,
      child: Column(
        children: <Widget>[
          Text(''),
          // Text(context.select<IICounterModel, int>((IICounterModel provider) => provider.num).toString()),
          Text(context.select<IICounterModel, int>((IICounterModel provider) => provider.num2).toString()),
          Text(context.select<IICounterModel, int>((IICounterModel provider) => provider.num3).toString()),
          // Text(context.select<IICounterModel, IICounterModel>((IICounterModel provider) => provider).num.toString()),
          // Text(context.select<IICounterModel, IICounterModel>((IICounterModel provider) => provider).num2.toString()),
          // Text(context.select<IICounterModel, IICounterModel>((IICounterModel provider) => provider).num3.toString()),
        ],
      ),
    );
  }
}
