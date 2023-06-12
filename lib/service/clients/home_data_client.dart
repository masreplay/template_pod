import '_clients.dart';

part "home_data_client.g.dart";

@RestApi()
abstract class HomeDataClient {
  factory HomeDataClient(Dio dio, {String baseUrl}) = _HomeDataClient;

  @GET("/home/")
  Future<HttpResponse<List<HomeDataResponse>>> getAll();
}
