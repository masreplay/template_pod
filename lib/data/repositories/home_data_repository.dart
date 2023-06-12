import '_repositories.dart';

part 'home_data_repository.g.dart';

@riverpod
HomeDataRepository homeDataRepository(HomeDataRepositoryRef ref) =>
    HomeDataRepository(ref.read(homeDataClientProvider));

class HomeDataRepository {
  final HomeDataClient _client;

  const HomeDataRepository(this._client);

  getHomeData() => _client.getAll().data;
}
