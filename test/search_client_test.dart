import 'package:flutter_test/flutter_test.dart';
import 'package:sma/respository/search/search_client.dart';
import 'package:sma/models/search/search.dart';

void main() {
  test('Searching Amazon', () async {
    SearchClient searchClient = SearchClient();

    List<StockSearch> results =
        await searchClient.searchStock(symbol: 'Amazon');
    expect(results.first.symbol, 'AMZN');
  });
}
