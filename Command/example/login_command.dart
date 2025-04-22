import '../abstract_command.dart';
import '../command_context.dart';

class LoginCommand extends AbstractCommand {
  @override
  bool execute(CommandContext context) {
    final String? login = context.get<String>('login');
    final String? password = context.get<String>('password');

    _validateCredentials(login, password);

    print("Вход выполнен\nЛогин: $login\nПароль: $password");

    return true;
  }

  void _validateCredentials(String? login, String? password) {
    if (login == null || login.isEmpty == true) {
      throw ArgumentError('Логин не может быть пустым');
    }

    if (password == null) {
      throw ArgumentError('Необходимо ввести пароль!');
    }
  }
}
