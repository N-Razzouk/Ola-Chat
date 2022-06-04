import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:ola_chat/injection.config.dart';

final getIt = GetIt.instance;

@InjectableInit()
void configureDependencies() async => $initGetIt(getIt);
