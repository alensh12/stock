// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility that Flutter provides. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:stock_calc/main.dart';
import 'package:stock_calc/stock_model.dart';

void main() {
  testWidgets('Counter increments smoke test', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(MyApp());

    // Verify that our counter starts at 0.
    expect(find.text('0'), findsOneWidget);
    expect(find.text('1'), findsNothing);

    // Tap the '+' icon and trigger a frame.
    await tester.tap(find.byIcon(Icons.add));
    await tester.pump();

    // Verify that our counter has incremented.
    expect(find.text('0'), findsNothing);
    expect(find.text('1'), findsOneWidget);

    var data = await StockModel.fromAssetCsv("assets/data/stock_data.csv");
    calculate(data);
  });
}

void calculate(List<StockModel> data) {
  var cost = 0.0;
  var overallCost = 0.0;
  var wacc = 0.0;
  var totalEffectivePurchase = 0.0;
  var totalQuantity = 0;
  var marketValue = 0.0;
  var unrealizedGain = 0.0;
  var capitalGain = 0.0;
  var capitalGainTax = 0.0;
  var realizedGain = 0.0;
  var currentInvestment = 0.0;
  var unrealizedPercent = 0.0;
  for (var stocks in data) {
    var quantity = stocks.quantity;
    var price = stocks.price;
    if (stocks.transactionType == "Secondary" ||
        stocks.transactionType == "IPO") {
      var sebonCommission =
          getCommission(quantity, price, stocks.transactionType);
      var brokerCommission =
          getBrokerCommission(quantity, price, stocks.transactionType);
      var dpCharge = stocks.transactionType == "Secondary" ? 25 : 0;
      cost = (quantity! * price!).toDouble() +
          brokerCommission +
          sebonCommission +
          dpCharge;
      overallCost = overallCost + cost;
      var effectiveCost = cost / quantity;
      var weight = cost / overallCost;
      var ltp = 1231;

      if (stocks.stockType != "SELL") {
        marketValue = marketValue + ltp * quantity;
        totalEffectivePurchase =
            totalEffectivePurchase + effectiveCost * quantity;
        totalQuantity = totalQuantity + quantity;
        wacc = totalEffectivePurchase / totalQuantity;
      } else {
        totalEffectivePurchase = totalEffectivePurchase - (wacc * quantity);
        totalQuantity = totalQuantity - quantity;
        var totalWithWacc = wacc * quantity;
        cost = (quantity * price).toDouble() -
            (brokerCommission + sebonCommission);
        marketValue = (ltp * totalQuantity).toDouble();
        if (price > wacc) {
          capitalGain = cost - totalWithWacc;
          capitalGainTax = capitalGain * (7.5 / 100);
        } else {
          capitalGain = 0.0;
          capitalGainTax = 0.0;
        }
        realizedGain = realizedGain +
            ((quantity * price) -
                (dpCharge + sebonCommission + brokerCommission)) -
            (quantity * wacc) -
            capitalGainTax;
      }
      unrealizedGain = marketValue - totalEffectivePurchase;
      currentInvestment = marketValue - unrealizedGain;
      unrealizedPercent = (unrealizedGain / currentInvestment) * 100;
      print(
          "----------------------------------------------------------${stocks.stockType!.toUpperCase()} -------------------------------------------------");
      print("BrokerCommission ---> $brokerCommission || \n"
          "sebonCommission ----> $sebonCommission || \n"
          "Total Quantity -----> $totalQuantity \n");
      print("Market Value -----> $marketValue || \n"
          "Effective Cost ----> $effectiveCost || \n"
          "Weight ----> $weight || \n"
          "WACC----> $wacc || \n"
          "UG-------> $unrealizedGain || \n"
          "RG --------------> $realizedGain\n");
      print("CAPITAL GAIN TAX ---> $capitalGainTax");
      print("Current Investment ----------> $currentInvestment");
      print("Unrealized Percent ----------> $unrealizedPercent %");
      print(
          "----------------------------------------------------------------------------------------------------------------------------------------------");
    }
  }
}

getBrokerCommission(int? quantity, num? price, String? transactionType) {
  var cost = (quantity! * price!).toDouble();
  var brokerCommissionRate;
  if (cost <= 50000) {
    brokerCommissionRate = 0.40 / 100;
  } else if (cost > 50000 && cost <= 500000) {
    brokerCommissionRate = 0.37 / 100;
  } else if (cost > 500000 && cost <= 2000000) {
    brokerCommissionRate = 0.34 / 100;
  } else if (cost > 2000000 && cost <= 10000000) {
    brokerCommissionRate = 0.30 / 100;
  } else {
    brokerCommissionRate = 0.27 / 100;
  }
  if (transactionType == "Secondary") {
    return (brokerCommissionRate * cost) < 10
        ? 10
        : (brokerCommissionRate * cost);
  } else {
    return 0.0;
  }
}

double getCommission(int? quantity, num? price, String? transactionType) {
  var cost = (quantity! * price!).toDouble();
  var sebonComissionRate = 0.015 / 100;
  return transactionType == "Secondary" ? cost * sebonComissionRate : 0.0;
}
