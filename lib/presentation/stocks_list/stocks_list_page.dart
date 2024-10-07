import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:stocks_price_tracker/presentation/stocks_list/bloc/stocks_list_bloc.dart';
import 'package:stocks_price_tracker/presentation/stocks_list/widget/stock_list_item.dart';
import 'package:visibility_detector/visibility_detector.dart';

class StocksListPage extends StatelessWidget {
  const StocksListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Stocks'),
      ),
      body: SafeArea(
        child: BlocBuilder<StocksListBloc, StocksListState>(
          builder: (context, state) {
            return state.map(
              loading: (_) => const Center(child: CircularProgressIndicator()),
              error: (_) => const Text('Error'),
              content: (state) {
                return ListView.separated(
                  padding: const EdgeInsets.all(16),
                  itemCount: state.filteredStocks.length,
                  separatorBuilder: (context, index) =>
                      const SizedBox(height: 8),
                  itemBuilder: (context, index) => VisibilityDetector(
                    key: Key('stock-list-item-$index'),
                    onVisibilityChanged: (visibilityInfo) {
                      print(
                          'index $index is ${visibilityInfo.visibleFraction > 0 ? 'visible' : 'not visible'}');
                    },
                    child: StockListItem(
                      model: state.filteredStocks[index],
                    ),
                  ),
                );
              },
            );
          },
        ),
      ),
    );
  }
}
