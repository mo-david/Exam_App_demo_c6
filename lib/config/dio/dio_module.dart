import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:untitled/core/network/api_constants.dart';

@lazySingleton
class NetworkDioHandler{

  late Dio publicDio = Dio (
 BaseOptions(
   baseUrl: ApiConstants.baseUrl,
   connectTimeout: const Duration(seconds: 30),
   receiveTimeout: const Duration(seconds: 30),
     headers: {
      'Content-Type': 'application/json',
      'Accept': 'application/json'
     }
 ),
  );

  NetworkDioHandler(){
  publicDio.interceptors.add(
  InterceptorsWrapper(
  onRequest: (RequestOptions options, RequestInterceptorHandler handler) {
  // Do something before request is sent.
  // If you want to resolve the request with custom data,
  // you can resolve a `Response` using `handler.resolve(response)`.
  // If you want to reject the request with a error message,
  // you can reject with a `DioException` using `handler.reject(dioError)`.
   print("📤 API Request: ${options.baseUrl}${options.path}");
   print("📤 API Request Body: ${options.data}");
  return handler.next(options);
  },
  onResponse: (Response response, ResponseInterceptorHandler handler) {
  // Do something with response data.
  // If you want to reject the request with a error message,
  // you can reject a `DioException` object using `handler.reject(dioError)`.
   print("✅ API Success Response: ${response.data}");
  return handler.next(response);
  },
  onError: (DioException error, ErrorInterceptorHandler handler) {
  // Do something with response error.
  // If you want to resolve the request with some custom data,
  // you can resolve a `Response` object using `handler.resolve(response)`.
   print("❌ API Error Response: ${error.requestOptions.path}");
   print("❌ Body: ${error.response?.data}");
  return handler.next(error);
  },
  ),
  );}
}