//
//
//
//import 'package:dio/dio.dart';
//
//
//int _connectTimeout = 15000;
//int _receiveTimeout = 15000;
//int _sendTimeout = 10000;
//String _baseUrl ;
//List<Interceptor> _interceptors = [];
//
//void InitDio({
//  int connectTimeout,
//  int receiveTimeout,
//  int sendTimeout,
//  String baseUrl,
//  List<Interceptor> interceptors,
//}){
//  _connectTimeout = connectTimeout ?? _connectTimeout;
//  _receiveTimeout = receiveTimeout ?? _receiveTimeout;
//  _sendTimeout = sendTimeout ?? _sendTimeout;
//  _baseUrl = baseUrl ??_baseUrl;
//  _interceptors = interceptors?? _interceptors;
//}
//
//class DioUtils{
//
////  static final DioUtils _singleton = DioUtils()._();
//
//  static DioUtils get instance => DioUtils();
//
////  factory DioUtils()=> _singleton;
//
//  static Dio _dio;
//
//  DioUtils._(){
//
//    BaseOptions _options = BaseOptions(
//      connectTimeout: _connectTimeout,
//      receiveTimeout: _receiveTimeout,
//      sendTimeout: _sendTimeout,
//      baseUrl: _baseUrl,
//      responseType: ResponseType.plain,
//
//      validateStatus: (_){
//        return true;
//      }
//    );
//    _dio = Dio(_options);
//
//    _interceptors.forEach((element) {
//      _dio.interceptors.add(element);
//    });
//}
//
//
//
//
//}