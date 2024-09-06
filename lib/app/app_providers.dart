import 'package:agrogenesis/providers/cart_provider.dart';
import 'package:agrogenesis/providers/crop_yield_provider.dart';
import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';

class AppProviders {
  static final List<SingleChildWidget> providers = [
    ChangeNotifierProvider(create: (_) => CropYieldProvider()),
    ChangeNotifierProvider(create: (_) => CartProvider())
  ];
}
