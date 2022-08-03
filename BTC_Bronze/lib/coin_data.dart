//TODO: Add your imports here.
import 'dart:convert';
import 'package:http/http.dart' as http;

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

const List<String> cryptoList = [
  'BTC',
  'ETH',
  'LTC',
];

const coinAPIURL = 'https://rest.coinapi.io/v1/exchangerate';
const apiKey = '599BCA51-6F59-4D5C-8CED-39B2CDD607B9';

//https://rest.coinapi.io/v1/exchangerate/BTC/USD/?apikey=599BCA51-6F59-4D5C-8CED-39B2CDD607B9
class CoinData {
  String url;
  CoinData(this.url);

  Future getCoinData() async {
    http.Response response = await http.get(Uri.parse(
        'https://rest.coinapi.io/v1/exchangerate/BTC/USD/?apikey=599BCA51-6F59-4D5C-8CED-39B2CDD607B9'));
    if (response.statusCode == 200) {
      var data = jsonDecode(response.body);
      var cRate = data['rate'];
      return cRate;
    } else {
      print(response.statusCode);
    }
  }
}
