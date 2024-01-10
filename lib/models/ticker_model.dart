import 'package:json_annotation/json_annotation.dart';

part 'ticker_model.g.dart';

@JsonSerializable()
class TickerModel {
  @JsonKey(defaultValue: '')
  final String symbol;
  @JsonKey(defaultValue: '')
  final String bid1Price;
  @JsonKey(defaultValue: '')
  final String bid1Size;
  @JsonKey(defaultValue: '')
  final String ask1Price;
  @JsonKey(defaultValue: '')
  final String ask1Size;
  @JsonKey(defaultValue: '')
  final String lastPrice;
  @JsonKey(defaultValue: '')
  final String prevPrice24h;
  @JsonKey(defaultValue: '')
  final String price24hPcnt;
  @JsonKey(defaultValue: '')
  final String highPrice24h;
  @JsonKey(defaultValue: '')
  final String lowPrice24h;
  @JsonKey(defaultValue: '')
  final String turnover24h;
  @JsonKey(defaultValue: '')
  final String volume24h;
  @JsonKey(defaultValue: '')
  final String usdIndexPrice;

  const TickerModel({
    required this.symbol,
    required this.bid1Price,
    required this.bid1Size,
    required this.ask1Price,
    required this.ask1Size,
    required this.lastPrice,
    required this.prevPrice24h,
    required this.price24hPcnt,
    required this.highPrice24h,
    required this.lowPrice24h,
    required this.turnover24h,
    required this.volume24h,
    required this.usdIndexPrice,
  });

  factory TickerModel.fromJson(Map<String, dynamic> json) =>
      _$TickerModelFromJson(json);

  Map<String, dynamic> toJson() => _$TickerModelToJson(this);
}
