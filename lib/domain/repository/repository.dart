import 'package:sample_project/data/request/request.dart';
import 'package:sample_project/data/network/failure.dart';
import 'package:dartz/dartz.dart';

import '../model/model.dart';

abstract class Repository{
  Future<Either<Failure,Authentication>> login(LoginRequest loginRequest);
  Future<Either<Failure, String>> forgotPassword(String email);
  Future<Either<Failure,Authentication>> register(RegisterRequest registerRequest);
  Future<Either<Failure,HomeObject>> getHome();
  Future<Either<Failure, StoreDetails>> getStoreDetails();
}