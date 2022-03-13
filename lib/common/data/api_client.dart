import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

part 'api_client.g.dart';

@RestApi(baseUrl: 'https://0.0.0.0:8080')
abstract class ApiClient {
  factory ApiClient(Dio dio) = _ApiClient;
}
