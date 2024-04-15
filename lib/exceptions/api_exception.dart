import 'dart:io';

class ApiException extends IOException{
  final String message;

  ApiException(this.message);
}