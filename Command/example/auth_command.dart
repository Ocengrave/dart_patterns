import '../abstract_command.dart';
import '../command_context.dart';
import 'auth_action.dart';
import 'login_command.dart';
import 'logout_command.dart';

class AuthCommand extends AbstractCommand {
  @override
  bool execute(CommandContext context) {
    final command = _createCommand(context);

    return command.execute(context);
  }

  AbstractCommand _createCommand(CommandContext context) {
    final action = context.get<AuthAction>('type');
    return switch (action) {
      AuthAction.login => LoginCommand(),
      AuthAction.logout => LogoutCommand(),
    };
  }
}
