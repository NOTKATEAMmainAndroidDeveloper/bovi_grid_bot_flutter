import 'dart:convert';
import 'package:crypto/crypto.dart';
import 'package:http/http.dart' as http;
import 'package:ntk_bybit_bot/models/ticker_model.dart';

class BybitService{
  final String key;
  final String secret;
  final int receiveWindow = 1000;

  const BybitService({required this.key, required this.secret});

  String _getSignature(timestamp, Map param){
    var _secret = utf8.encode(secret);

    var data = utf8.encode(timestamp.toString() + key + receiveWindow.toString() + param.toString());

    var hmacSha512 = Hmac(sha512, _secret);

    return hmacSha512.convert(data).toString();
  }

  Map _getSignHeaders(Map param){
    var timestamp = DateTime.now().millisecondsSinceEpoch;

    var headers = {
      "X-BAPI-API-KEY": key,
      "X-BAPI-SIGN": _getSignature(timestamp, param),
      "X-BAPI-SIGN-TYPE": "2",
      "X-BAPI-TIMESTAMP": timestamp,
      "X-BAPI-RECV-WINDOW": receiveWindow
    };

    return headers;
  }

  Future<List<TickerModel>> getTicker() async{
    var response = await http.get(Uri.parse('https://api-testnet.bybit.com/v5/market/tickers?category=spot'));

    final packageJson = json.decode(response.body) as Map<String, dynamic>;

    List resultJson = packageJson["result"]["list"];

    List<TickerModel> results = [];

    for (var element in resultJson) {
      results.add(TickerModel.fromJson(element as Map<String, dynamic>));
    }

    return results;
  }

  placeOrder() async {


    var response = await http.post('https://json.flutter.su/echo' as Uri,
        headers: {'Accept':'application/json','Authorization':'Basic YWxhZGRpbjpvcGVuc2VzYW1l'}
    );

    var status = response.statusCode;
  }
}