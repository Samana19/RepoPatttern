import 'package:repositorypattern/data_source/local/local_data_source.dart';
import 'package:repositorypattern/data_source/remote/remote_data_source.dart';

import '../model/user.dart';

class UserRepository {
  LocalSource localDataSource = LocalSource();
  RemoteSource remoteDataSource = RemoteSource();

   UserRepository(this.localDataSource, this.remoteDataSource);

  bool hasNetwork = true;

  bool addUser(User user) {
    bool isAdded = false;
    if (hasNetwork) {
      isAdded = remoteDataSource.addUser(user);
    } else {
      isAdded = localDataSource.addUser(user);
    }
    return isAdded;
  }

  List<User> getUsers() {
    if (hasNetwork) {
      return remoteDataSource.getUser();
    } else {
      return localDataSource.getUsers();
    }
  }
}
