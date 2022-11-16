import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_providerr/ii_counter/ii_counter_model.dart';
import 'package:provider/provider.dart';
import 'package:flutter/material.dart';

class IIRead extends StatelessWidget {
  const IIRead({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    print('read');
    return Container(
      width: 100,
      height: 100,
      child: Column(
        children: <Widget>[
          Text(context.read<IICounterModel>().num.toString()),
          Text(context.read<IICounterModel>().num2.toString()),
        ],
      ),
    );
  }
}
