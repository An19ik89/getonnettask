import 'package:dartz/dartz.dart';
import 'package:flutter_get_on_net_task/data/network/failure.dart';


abstract class BaseUseCase<In, Out> {
  Future<Either<Failure, Out>> execute(In input);
}

abstract class BaseUseCaseWithoutIn<Out> {
  Future<Either<Failure, Out>> execute();
}
