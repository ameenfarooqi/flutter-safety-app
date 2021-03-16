import 'package:auto_route/auto_route_annotations.dart';
import 'package:safety/ui/vews/startup/startup_view.dart';
import 'package:safety/ui/vews/home/home_view.dart';

@MaterialAutoRouter(
  routes: <AutoRoute>[
    // initial route is named "/"
    MaterialRoute(page: StartupView, initial: true),
    MaterialRoute(page: HomeView),
  ],

)
class $Router { }

