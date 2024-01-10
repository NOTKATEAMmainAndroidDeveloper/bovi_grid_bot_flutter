// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ticker_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TickerModel _$TickerModelFromJson(Map<String, dynamic> json) => TickerModel(
      symbol: json['symbol'] as String? ?? '',
      bid1Price: json['bid1Price'] as String? ?? '',
      bid1Size: json['bid1Size'] as String? ?? '',
      ask1Price: json['ask1Price'] as String? ?? '',
      ask1Size: json['ask1Size'] as String? ?? '',
      lastPrice: json['lastPrice'] as String? ?? '',
      prevPrice24h: json['prevPrice24h'] as String? ?? '',
      price24hPcnt: json['price24hPcnt'] as String? ?? '',
      highPrice24h: json['highPrice24h'] as String? ?? '',
      lowPrice24h: json['lowPrice24h'] as String? ?? '',
      turnover24h: json['turnover24h'] as String? ?? '',
      volume24h: json['volume24h'] as String? ?? '',
      usdIndexPrice: json['usdIndexPrice'] as String? ?? '',
    );

Map<String, dynamic> _$TickerModelToJson(TickerModel instance) =>
    <String, dynamic>{
      'symbol': instance.symbol,
      'bid1Price': instance.bid1Price,
      'bid1Size': instance.bid1Size,
      'ask1Price': instance.ask1Price,
      'ask1Size': instance.ask1Size,
      'lastPrice': instance.lastPrice,
      'prevPrice24h': instance.prevPrice24h,
      'price24hPcnt': instance.price24hPcnt,
      'highPrice24h': instance.highPrice24h,
      'lowPrice24h': instance.lowPrice24h,
      'turnover24h': instance.turnover24h,
      'volume24h': instance.volume24h,
      'usdIndexPrice': instance.usdIndexPrice,
    };
