import 'package:flutter/material.dart';
import 'package:flutter_providerr/i_counter/i_counter_model.dart';
import 'package:flutter_providerr/i_counter/i_counter_screen.dart';
import 'package:flutter_providerr/ii_counter/ii_counter_model.dart';
import 'package:flutter_providerr/ii_counter/ii_counter_screen.dart';
import 'package:flutter_providerr/iii_counter/iii_counter_model.dart';
import 'package:flutter_providerr/iii_counter/iii_counter_screen.dart';
import 'package:provider/provider.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // i-counter
    // return ChangeNotifierProvider<ICounterModel>(
    //   create: (_) => ICounterModel(),
    //   child: const MaterialApp(
    //     title: 'Provider',
    //     home: ICounterScreen(),
    //     // home: CounterScreen(),
    //   ),
    // );

    // ii-counter
    // return ChangeNotifierProvider<IICounterModel>(
    //   create: (_) => IICounterModel(),
    //   child: const MaterialApp(
    //     title: 'Provider',
    //     home: IICounterScreen(),
    //     // home: CounterScreen(),
    //   ),
    // );

    // iii-counter
    return ChangeNotifierProvider<IIICounterModel>(
      create: (_) => IIICounterModel(),
      child: const MaterialApp(
        title: 'Provider',
        home: IIICounterScreen(),
        // home: CounterScreen(),
      ),
    );
  }
}
