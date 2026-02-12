import 'package:auto_route/auto_route.dart';
import 'package:crypto_app/features/crypto_coin/crypto_coin.dart';
import 'package:crypto_app/features/crypto_list/crypto_list.dart';
import 'package:flutter/material.dart';

import '../repositories/crypto_coins/models/models.dart';

part 'router.gr.dart';

@AutoRouterConfig()
class AppRouter extends RootStackRouter {

  @override
  List<AutoRoute> get routes => [
    AutoRoute(page: CryptoListRoute.page, path: '/'),
    AutoRoute(page: CryptoCoinRoute.page)
  ];
}

// final routes = {
//         '/': (context) => const CryptoListScreen(),
//         '/coin': (context) => const CryptoCoinScreen(),
// };