import 'package:mysql1/mysql1.dart';

Future<MySqlConnection> getConnection() async {
  final settings = ConnectionSettings(
    host: 'localhost',
    port: 3306,
    user: 'root',
    password: 'helloworld123',
    db: 'music_app_db',
  );

  return await MySqlConnection.connect(settings);
}
