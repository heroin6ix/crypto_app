import 'package:crypto_app/repositories/crypto_coins/crypto_coins.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

class CryptoCoinsRepository implements AbstractCoinsRepository {
  CryptoCoinsRepository({required this.dio});
  final Dio dio;


  @override
  Future<List<CryptoCoin>> getCoinsList() async {
    final response = await dio.get(
      'https://min-api.cryptocompare.com/data/pricemultifull?fsyms=BTC,ETH,BNB,TON,SOL,TRX&tsyms=USD',
    );
    debugPrint('Запрос отправлен!');
    debugPrint('Ждем ответа...');

    final data = response.data as Map<String, dynamic>;
    final dataRaw = data['RAW'] as Map<String, dynamic>;
    final cryptoCoinsList = dataRaw.entries.map((e) {
      final usdData =
          (e.value as Map<String, dynamic>)['USD'] as Map<String, dynamic>;
      final price = usdData['PRICE'];
      final priceToDisplay = double.parse(price.toStringAsFixed(2));
      final imageUrl = usdData['IMAGEURL'];
    debugPrint('Ответ получен!');
      return CryptoCoin(
        name: e.key,
        priceInUSD: priceToDisplay,
        imageUrl: 'https://www.cryptocompare.com$imageUrl',
      );
    }).toList();
    debugPrint('Отображаем на экране!');
    return cryptoCoinsList;
  }
}
