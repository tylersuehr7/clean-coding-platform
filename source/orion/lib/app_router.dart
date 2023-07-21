import 'package:fluro/fluro.dart';
import 'package:flutter/widgets.dart';

/// Application routing system.
/// Uses Fluro library but forces other components not to depend on it.

typedef AppRouter = FluroRouter;
typedef AppRouterHandler = Handler;

final AppRouter appRouter = AppRouter.appRouter;
final GlobalKey<NavigatorState> appNavigatorKey = GlobalKey<NavigatorState>();
