import 'package:flutter/material.dart';

class ItemTileWidget extends StatelessWidget {
  const ItemTileWidget({
    super.key,
    required this.itemName,
    required this.itemCode,
    required this.stock,
    required this.rayon,
    required this.coucheStock,
    required this.dlc,
  });

  final String itemName;
  final int itemCode;
  final int stock;
  final String rayon;
  final int coucheStock;
  final DateTime dlc;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Row(
        children: [
          Column(
            children: [Placeholder()],
          ),
          Column(
            children: [
              Container(
                child: Text(itemName),
              ),
              Row(
                children: [
                  Text(itemCode.toString()),
                  Text(stock.toString()),
                ],
              ),
                Text(rayon),
              Row(
                children: [
                  Text('Couche de stock :'),
                  Text(coucheStock.toString()),
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
