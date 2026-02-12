import 'package:auto_route/auto_route.dart';
import 'package:crypto_app/repositories/crypto_coins/models/crypto_coin.dart';
import 'package:crypto_app/router/router.dart';
import 'package:flutter/material.dart';


class CryptoCoinTile extends StatelessWidget {
   CryptoCoinTile({super.key, required this.coin});

  final CryptoCoin coin;
  late final coinDetails = coin.details;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return 
    
      ListTile(
        
        leading: Image.network(coinDetails.fullImageUrl),

        title: Text(coin.name, style: theme.textTheme.bodyMedium),
        subtitle: Text('${coinDetails.priceToDisplay} \$', style: theme.textTheme.labelSmall),
        trailing: IconButton(
          onPressed: () {
            AutoRouter.of(context).push(CryptoCoinRoute(coin: coin));
            // Navigator.of(context).pushNamed('/coin', arguments: coin,);
          },
          style: (theme.iconButtonTheme.style),
          icon: const Icon(Icons.arrow_forward_ios),
        ),
        
        onTap: () {
          AutoRouter.of(context).push(CryptoCoinRoute(coin: coin));
          // Navigator.of(context).pushNamed('/coin', arguments: coin);
        },
      );
  }
}
