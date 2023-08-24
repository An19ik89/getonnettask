import 'package:dartz/dartz.dart';
import 'package:flutter_get_on_net_task/data/network/failure.dart';
import 'package:flutter_get_on_net_task/data/request/request.dart';
import 'package:flutter_get_on_net_task/domain/model/model.dart';
import 'package:flutter_get_on_net_task/domain/repository/repository.dart';
import 'package:flutter_get_on_net_task/domain/usecase/base_usercase.dart';


class LoginUseCase implements BaseUseCase<LoginUseCaseInput, Authentication> {
  Repository _repository;

  LoginUseCase(this._repository);

  @override
  Future<Either<Failure, Authentication>> execute(
      LoginUseCaseInput input) async {
    //DeviceInfo deviceInfo = await getDeviceDetails();
    return await _repository.login(
        LoginRequest(
        input.email, input.password, true
        //deviceInfo.identifier, deviceInfo.name
          )
    );
  }
}

class LoginUseCaseInput {
  String email;
  String password;
  LoginUseCaseInput(this.email, this.password);
}
