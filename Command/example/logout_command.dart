import '../abstract_command.dart';
import '../command_context.dart';

class LogoutCommand extends AbstractCommand {
  @override
  bool execute(CommandContext context) {
    String login = context.get('login');

    print("Выполнен выход\n Логин: $login");

    return true;
  }
}
