import 'package:dartz/dartz.dart';
import 'package:sanad/app/errors/failure.dart';
import 'package:sanad/domain/entities/auth/auth.dart';

abstract class Repository {
  Future<Either<Failure, AuthEntity>> login(LoginRequest loginRequest);
// Future<Either<Failure, User>> register(RegisterRequest request);
// Future<Either<Failure, List<TaskEntity>>> home();
// Future<Either<Failure, WsAuth>> authenticateChannel(String channelName, String socketId);
// Future<Either<Failure, TaskAcceptedData>> acceptTask(int id);
// Future<Either<Failure,bool>> checkAuth();
// Future<Either<Failure,bool>> closeTask({
//   required String pricing,
//   required int id,
//   String? companyFeedback,
//   double? lat,
//   double? lng
//
// });
}

class LoginRequest {
  String email;
  String password;
  String? device;
  String? deviceToken;

  LoginRequest(this.email, this.password, this.device, this.deviceToken);
}

class RegisterRequest {
  String email;
  String username;
  String? name;
  String password;
  String passwordConfirmation;
  String? device;
  String? deviceToken;

  RegisterRequest({
    required this.email,
    this.name,
    required this.password,
    required this.device,
    required this.deviceToken,
    required this.username,
    required this.passwordConfirmation,
  });
}
