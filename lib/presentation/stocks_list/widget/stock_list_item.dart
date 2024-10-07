import 'package:flutter/material.dart';
import 'package:stocks_price_tracker/domain/model/stock_model.dart';

class StockListItem extends StatelessWidget {
  const StockListItem({
    super.key,
    required this.model,
    this.price,
  });

  final StockModel model;
  final double? price;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(model.displaySymbol),
                Text(
                  model.description,
                  style: const TextStyle(fontSize: 12),
                ),
              ],
            ),
          ),
          price == null
              ? const CircularProgressIndicator()
              : Text(r'$' '${price?.toStringAsFixed(4)}'),
        ],
      ),
    );
  }
}
