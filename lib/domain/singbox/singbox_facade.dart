import 'package:fpdart/fpdart.dart';
import 'package:hiddify/domain/core_service_failure.dart';
import 'package:hiddify/domain/singbox/core_status.dart';

abstract interface class SingboxFacade {
  TaskEither<CoreServiceFailure, Unit> setup();

  TaskEither<CoreServiceFailure, Unit> parseConfig(String path);

  TaskEither<CoreServiceFailure, Unit> changeConfig(String fileName);

  TaskEither<CoreServiceFailure, Unit> start();

  TaskEither<CoreServiceFailure, Unit> stop();

  Stream<Either<CoreServiceFailure, CoreStatus>> watchCoreStatus();

  Stream<Either<CoreServiceFailure, String>> watchLogs();
}
