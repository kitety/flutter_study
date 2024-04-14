// To parse this JSON data, do
//
//     final diamondShop = diamondShopFromJson(jsonString);

import 'dart:convert';

DiamondShop diamondShopFromJson(String str) => DiamondShop.fromJson(json.decode(str));

String diamondShopToJson(DiamondShop data) => json.encode(data.toJson());

class DiamondShop {
    final bool isVip;
    final int stoneBalance;
    final int vipCardPrice;
    final Promotion mostPopular;
    final List<Promotion> promotions;

    DiamondShop({
        required this.isVip,
        required this.stoneBalance,
        required this.vipCardPrice,
        required this.mostPopular,
        required this.promotions,
    });

    factory DiamondShop.fromJson(Map<String, dynamic> json) => DiamondShop(
        isVip: json["isVip"],
        stoneBalance: json["stoneBalance"],
        vipCardPrice: json["vipCardPrice"],
        mostPopular: Promotion.fromJson(json["mostPopular"]),
        promotions: List<Promotion>.from(json["promotions"].map((x) => Promotion.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "isVip": isVip,
        "stoneBalance": stoneBalance,
        "vipCardPrice": vipCardPrice,
        "mostPopular": mostPopular.toJson(),
        "promotions": List<dynamic>.from(promotions.map((x) => x.toJson())),
    };
}

class Promotion {
    final int count;
    final int increaseCount;
    final double money;
    final bool isShowTip;
    final String tipText;
    final String type;
    final bool? isBestValue;

    Promotion({
        required this.count,
        required this.increaseCount,
        required this.money,
        required this.isShowTip,
        required this.tipText,
        required this.type,
        this.isBestValue,
    });

    factory Promotion.fromJson(Map<String, dynamic> json) => Promotion(
        count: json["count"],
        increaseCount: json["increaseCount"],
        money: json["money"]?.toDouble(),
        isShowTip: json["isShowTip"],
        tipText: json["tipText"],
        type: json["type"],
        isBestValue: json["isBestValue"],
    );

    Map<String, dynamic> toJson() => {
        "count": count,
        "increaseCount": increaseCount,
        "money": money,
        "isShowTip": isShowTip,
        "tipText": tipText,
        "type": type,
        "isBestValue": isBestValue,
    };
}
