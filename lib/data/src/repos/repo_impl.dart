import 'package:dartz/dartz.dart';
import 'package:sanad/app/errors/failure.dart';
import 'package:sanad/domain/entities/auth/auth.dart';
import 'package:sanad/domain/repos/repo.dart';

class RepoImpl extends Repository{


  @override
  Future<Either<Failure, AuthEntity>> login(LoginRequest loginRequest) {
    


    throw UnimplementedError();
  }
  
}