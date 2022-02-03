import 'package:csv/csv.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'stock_model.freezed.dart';

@freezed
class StockModel with _$StockModel {
  const factory StockModel(String? date, String? transactionType, num? price,
      int? quantity, String? stockType, String? scrip) = StockData;

  static StockModel fromCsvRow(List<dynamic> csvRow) {
    return StockModel(
        csvRow[0] as String,
        csvRow[1] as String,
        csvRow[5] as num,
        csvRow[4] as int,
        csvRow[3] as String,
        csvRow[2] as String);
  }

  static List<StockModel> fromCsvTable(List<List<dynamic>> csvTable) {
    return csvTable.skip(1).map((e) => StockModel.fromCsvRow(e)).toList();
  }

  static List<StockModel> fromCsvString(String csvString) =>
      StockModel.fromCsvTable(CsvToListConverter(eol: "\n").convert(csvString));

  static Future<List<StockModel>> fromAssetCsv(String assetPath) async =>
      StockModel.fromCsvString(await rootBundle.loadString(assetPath));
}
