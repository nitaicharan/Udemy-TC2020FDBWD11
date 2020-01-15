import 'package:bitcoin_ticker/networking.dart';

const List<String> currenciesList = [
  'AUD',
  'BRL',
  'CAD',
  'CNY',
  'EUR',
  'GBP',
  'HKD',
  'IDR',
  'ILS',
  'INR',
  'JPY',
  'MXN',
  'NOK',
  'NZD',
  'PLN',
  'RON',
  'RUB',
  'SEK',
  'SGD',
  'USD',
  'ZAR'
];

class CoinData {
  Future<List> getCoinData(String currency) async {
    List data = [];
    NetworkHelper networkHelper = NetworkHelper(
        'https://api.nomics.com/v1/currencies/ticker?key=2018-09-demo-dont-deploy-b69315e440beb145&ids=BTC,ETH,XRP&interval=1h&convert=USD');
    dynamic coins = await networkHelper.getData();
    for (var coin in coins) {
      Map<String, String> result = {};
      result['currency'] = coin['currency'];
      result['price'] = coin['price'];
      data.add(result);
    }
    return data;
  }
}