import 'package:flutter_test/flutter_test.dart';
import 'package:sma/respository/profile/client.dart';
import 'package:sma/models/profile/profile.dart';
import 'package:sma/models/profile/stock_profile.dart';

void main() {
  test('Testing Amazon profile retrieval', () async {
    ProfileClient profileClient = ProfileClient();

    ProfileModel profileModel =
        await profileClient.fetchStockData(symbol: 'AMZN');
    StockProfile stockProfile = profileModel.stockProfile;
    expect(stockProfile.companyName, 'Amazon.com Inc');
  });

  test('Testing Apple profile retrieval', () async {
    ProfileClient profileClient = ProfileClient();

    ProfileModel profileModel =
        await profileClient.fetchStockData(symbol: 'AAPL');
    StockProfile stockProfile = profileModel.stockProfile;
    expect(stockProfile.companyName, 'Apple Inc');
  });

  test('Testing Google profile retrieval', () async {
    ProfileClient profileClient = ProfileClient();

    ProfileModel profileModel =
        await profileClient.fetchStockData(symbol: 'GOOGL');
    StockProfile stockProfile = profileModel.stockProfile;
    expect(stockProfile.companyName, 'Alphabet Inc');
  });
}
