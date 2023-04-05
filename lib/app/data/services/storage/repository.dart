import 'package:first_task/app/data/providers/locale/provider.dart';

class OrdersRepository {
  LocalProvider localProvider;
  OrdersRepository({required this.localProvider});
  String readLang() => localProvider.readLang();
  void writeLang(String code) => localProvider.writeLang(code);
}
