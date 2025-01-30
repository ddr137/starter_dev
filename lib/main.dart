import 'app/app.dart';
import 'bootstrap.dart';

Future<void> main() async {
  await bootstrap(builder: App.new);
}
