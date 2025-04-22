import '../abstract_command.dart';
import '../command_context.dart';
import 'auth_command.dart';
import 'auth_action.dart';

/*
|--------------------------------------------------------------------------
| Command
|--------------------------------------------------------------------------
| Команда (англ. Command) — поведенческий шаблон проектирования,
| используемый при объектно-ориентированном программировании,
| представляющий действие. Объект команды заключает в себе само действие и его параметры.
*/
void main() {
  CommandContext context = CommandContext();

  AbstractCommand command = AuthCommand();

  context.set('type', AuthAction.login);

  context.set('login', 'admin');

  String password = 'HelloWorld123Password';

  context.set('password', password);

  command.execute(context);

  context.set('type', AuthAction.logout);

  command.execute(context);
}
