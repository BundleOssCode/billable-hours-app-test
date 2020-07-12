import 'package:billable_hours_app/src/core/network/index.dart';
import 'package:billable_hours_app/src/provider/bill_provider.dart';
import 'package:provider/provider.dart';

class ProviderRegister {
  static List<SingleChildCloneableWidget> providers = [
    ChangeNotifierProvider<BillProvider>(
      create: (_) => BillProvider(
          networkService: NetworkService(
              networkConfiguration: NetworkConfig(),
              interceptor:
                  NetworkInterceptor(networkConfigInterface: NetworkConfig()))),
    ),
  ];
}
