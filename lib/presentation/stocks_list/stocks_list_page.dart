import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:stocks_price_tracker/presentation/stocks_list/bloc/stocks_list_bloc.dart';
import 'package:stocks_price_tracker/presentation/stocks_list/widget/stock_list_item.dart';
import 'package:visibility_detector/visibility_detector.dart';

class StocksListPage extends StatelessWidget {
  const StocksListPage({super.key});

  @override
  Widget build(BuildContext context) {
    final bloc = context.read<StocksListBloc>();

    return Scaffold(
      appBar: AppBar(
        title: const Text('Stocks'),
      ),
      body: SafeArea(
        child: BlocBuilder<StocksListBloc, StocksListState>(
          builder: (context, state) {
            return state.map(
              loading: (_) => const Center(child: CircularProgressIndicator()),
              error: (state) => _Error(description: state.error),
              content: (state) => _Content(bloc: bloc, state: state),
            );
          },
        ),
      ),
    );
  }
}

class _Error extends StatelessWidget {
  const _Error({
    required this.description,
  });

  final String description;

  @override
  Widget build(BuildContext context) {
    return Center(child: Text(description));
  }
}

class _Content extends StatelessWidget {
  const _Content({
    required this.bloc,
    required this.state,
  });

  final StocksListBloc bloc;
  final StocksListContentState state;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 16, left: 16, right: 16),
          child: SearchBar(
            hintText: 'Search stock',
            onChanged: (value) => bloc.add(StocksListEvent.search(value)),
          ),
        ),
        Expanded(
          child: ListView.separated(
            padding: const EdgeInsets.all(16),
            itemCount: state.filteredStocks.length,
            separatorBuilder: (context, index) => const SizedBox(height: 8),
            itemBuilder: (context, index) {
              final item = state.filteredStocks[index];
              return VisibilityDetector(
                key: Key('stock-list-item-$index'),
                onVisibilityChanged: (visibilityInfo) {
                  if (visibilityInfo.visibleFraction > 0) {
                    bloc.add(StocksListEvent.subscribe(item.symbol));
                  } else {
                    bloc.add(StocksListEvent.unsubscribe(item.symbol));
                  }
                },
                child: StockListItem(
                  model: item,
                  price: state.getStockPrice(item.symbol),
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
