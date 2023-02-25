import 'package:flutter/material.dart';
import 'package:hoja_tx_app_2/providers/providers.dart';
import 'package:hoja_tx_app_2/screen/pages.dart';
import 'package:hoja_tx_app_2/widgets/widgets.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('HOJA TX'),
      ),
      body: const _HomeScreen(),
      bottomNavigationBar: const CustomNavigationBar(),
    );
  }
}

class _HomeScreen extends StatelessWidget {
  const _HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final uiProvider = Provider.of<UIProvider>(context);

    final currentIndex = uiProvider.bnbIndex;
    
    switch (currentIndex) {
      case 0:
        return const EntryCareersScreen();
      case 1:
        return const ExpensesScreen();
      case 2:
        return const BalanceScreen();
      case 3:
        return const SettingScreen();
      default:
        return const EntryCareersScreen();
    }
  }
}
