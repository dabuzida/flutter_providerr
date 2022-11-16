import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_providerr/ii_counter/ii_counter_model.dart';
import 'package:provider/provider.dart';

class IIWatch extends StatelessWidget {
  const IIWatch({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    print('watch');
    return Container(
      width: 100,
      height: 100,
      child: Column(
        children: <Widget>[
          Text(context.watch<IICounterModel>().num.toString()),
          Text(context.watch<IICounterModel>().num2.toString()),
        ],
      ),
    );
  }
}
