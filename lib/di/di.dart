import 'package:get_it/get_it.dart';
import '../repository/user_repository.dart';

import '../data_source/local/local_data_source.dart';
import '../data_source/remote/remote_data_source.dart';

final getIt = GetIt.instance;

void initModule() {
  getIt.registerLazySingleton<LocalSource>(
    () => LocalSource(),
  );
  getIt.registerLazySingleton<RemoteSource>(
    () => RemoteSource(),
  );
  getIt.registerLazySingleton<UserRepository>(
    () => UserRepository(
      getIt(),
      getIt(),
    ),
  );
}
