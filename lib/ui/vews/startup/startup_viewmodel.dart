
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:safety/app/locator.dart';
import 'package:safety/app/router.gr.dart';

class StartupViewModel extends BaseViewModel {
   final NavigationService _navigationService = locator<NavigationService>();

  Future navigateToHome() async {
    await _navigationService.navigateTo(Routes.homeView);
  
  

}


}
