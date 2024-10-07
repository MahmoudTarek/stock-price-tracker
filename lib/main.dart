import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:stocks_price_tracker/di/di.dart';
import 'package:stocks_price_tracker/presentation/stocks_list/bloc/stocks_list_bloc.dart';
import 'package:stocks_price_tracker/presentation/stocks_list/stocks_list_page.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  configureDependencies();

  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (_) => getIt<StocksListBloc>(),
        ),
      ],
      child: MaterialApp(
        title: 'Stocks Price Tracker',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.green),
          useMaterial3: true,
        ),
        home: const StocksListPage(),
      ),
    );
  }
}
