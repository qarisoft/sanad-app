import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:sanad/common.dart';
import 'package:sanad/data/src/responses/error/error.dart';

import '../app/errors/failure.dart';

class ErrorObject {
  final String msg;
  final Failure failure;

  ErrorObject({
    required this.msg,
    required this.failure,
  });
}

List<String>? hadelDioException(DioException e) {
  switch (e.type) {
    case DioExceptionType.badResponse:
      // if(e.error)

      final er = Errors.fromJson(e.response?.data);
      final values = er.errors?.values;
      final error = er.error;
      if (values != null || error != null) {
        return er.getMessage();
      }
      final statusCode = e.response?.statusCode;

      if (statusCode == HttpStatus.unauthorized) {
        return [e.error.toString()];
      }
    case DioExceptionType.connectionTimeout:
    case DioExceptionType.sendTimeout:
    case DioExceptionType.receiveTimeout:
    case DioExceptionType.badCertificate:
    case DioExceptionType.cancel:
    case DioExceptionType.connectionError:
    case DioExceptionType.unknown:
  }
  return e.response?.data['message'];
}

List<String> handelError(BuildContext context, e) {
  String m = '';
  if (e is DioException) {
    if (e.type == DioExceptionType.badResponse) {}
  }

  if (e is Failure) {
    if (e is ServerError || e is UnKnownFailure) {
      return [context.tr.serverError];
    }
    if (e is NoInternet) {
      return [context.tr.noInternet];
    }
    if (e is ServerErrorsWithMsg) {
      return e.messages;
    }
    if (e is UnAuthorized) {
      // return
    }
  }
  return [m];
}
