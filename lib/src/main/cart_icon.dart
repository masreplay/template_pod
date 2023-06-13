import 'dart:math';

import 'package:starter/common_lib.dart';

part 'cart_icon.g.dart';

@riverpod
Future<int> getCartItemsCount(GetCartItemsCountRef ref) async {
  // TODO: implement getCartItemsCount
  await Future.delayed(const Duration(seconds: 2));
  return Random().nextInt(10);
}

class CartIcon extends ConsumerWidget {
  const CartIcon({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = Theme.of(context);
    final count = ref.watch(getCartItemsCountProvider);

    Widget current = const Icon(Icons.shopping_cart);

    count.whenOrNull(
      data: (count) {
        current = Badge(
          label: Text(count.toString()),
          backgroundColor: theme.colorScheme.error,
          child: current,
        );
      },
    );

    return IconButton(
      icon: current,
      tooltip: "Cart",
      padding: const EdgeInsets.all(0.0),
      onPressed: () {
        // TODO: implement onPressed (go to cart page)
      },
    );
  }
}
