
import 'package:dio/dio.dart';

abstract class Failure extends DioException {
  Failure({required super.requestOptions});
  
}
