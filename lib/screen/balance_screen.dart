import 'dart:math';

import 'package:flutter/material.dart';
import 'package:hoja_tx_app_2/widgets/widgets.dart';

class BalanceScreen extends StatefulWidget {
  const BalanceScreen({Key? key}) : super(key: key);

  @override
  State<BalanceScreen> createState() => _BalanceScreenState();
}

class _BalanceScreenState extends State<BalanceScreen> {
  final _scrollController = ScrollController();
  double _offset = 0;

  void _listener() {
    setState(() {
      _offset = _scrollController.offset / 100;
      print(_max);
    });
  }

  @override
  void initState() {
    _scrollController.addListener(_listener);
    _max;
    super.initState();
  }

  @override
  void dispose() {
    _scrollController.removeListener(_listener);
    _scrollController.dispose();
    super.dispose();
  }

  double get _max => max(90 - _offset * 90, 0.0);

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 60, 93, 62),
          leading: const Icon(Icons.balance_outlined),
          title: const Text('Balance'),
          centerTitle: true,
        ),
      body: CustomScrollView(
        controller: _scrollController,
        slivers: [
          SliverAppBar(
            elevation: 0,
            expandedHeight: 120.0,
            flexibleSpace: FlexibleSpaceBar(
              background: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Text(
                    '5000€',
                    style: TextStyle(
                      fontSize: 30.0,
                    ),
                  ),
                  Text(
                    'Balance',
                    style: TextStyle(
                      fontSize: 14.0,
                    ),
                  )
                ],
              ),
            ),
          ),
          SliverList(
            delegate: SliverChildListDelegate(
              [
                Stack(
                  children: [
                    const BackSheet(),
                    Padding(
                      padding: EdgeInsets.only(top: _max),
                      child: const FrontSheet(),
                    ),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
