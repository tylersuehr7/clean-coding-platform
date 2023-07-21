import 'package:get_it/get_it.dart';

/// Application dependency injection system.
/// Uses GetIt library but forces other components not to depend on it.

typedef AppInjector = GetIt;

final AppInjector appInjector = AppInjector.instance;
