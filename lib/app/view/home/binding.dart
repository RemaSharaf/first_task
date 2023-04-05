import 'package:first_task/app/data/providers/locale/provider.dart';
import 'package:first_task/app/data/services/storage/repository.dart';
import 'package:first_task/app/view/home/controller.dart';
import 'package:get/get.dart';

class HomeBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(
      () => HomeController(
        ordersRepository: OrdersRepository(
          localProvider: LocalProvider(),
        ),
      ),
    );
  }
}
