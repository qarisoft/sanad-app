// import 'package:sanad/common.dart';

sealed class Failure implements Exception{
  const Failure();
}

class UnKnownFailure extends Failure {}

class TaskHavBeenAccepted extends Failure {}

class ServerErrorsWithMsg extends Failure {
  final List<String> messages;

  ServerErrorsWithMsg(this.messages);
}

class NoInternet extends Failure {}

class UnAuthorized extends Failure {}

class ServerError extends Failure {}
