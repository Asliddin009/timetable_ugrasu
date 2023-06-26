import 'app_builder.dart';

abstract class AppRunner {
  Future<void> preloadData(); //слой подготовки к запуску

  Future<void> run(AppBuilder appBuilder);
}
