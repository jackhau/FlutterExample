import 'package:fluttersample/viewmodel/user_view_model.dart';
import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';

/// Define the type of environment supported in this project
enum EnvironmentType {
  staging,
  production;

  factory EnvironmentType.fromAppFlavor(String? flavor) {
    switch (flavor) {
      case 'staging':
        return EnvironmentType.staging;
      case 'production':
        return EnvironmentType.production;
      default:
        return EnvironmentType.staging;
    }
  }
}

/// Declaring all the ViewModel that to be use in Provider + ChangeNotifier
/// All registered providers here will be set into [MultiProvider] in [app.dart]
/// All registered providers are configured at the deepest layer of inheritance widget
/// ensuring any screen in this app will be able to access to the providers
List<SingleChildWidget> providerAssets() => [
  ChangeNotifierProvider(create: (_) => UserViewModel()),
];