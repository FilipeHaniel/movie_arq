import 'package:dartz/dartz.dart';

abstract class Usecase<R, P> {
  Future<Either<Exception, R>> call(P parameter);
}

class NoParameter {}
