import 'command_context.dart';

abstract class AbstractCommand
{
  bool execute(CommandContext context);
}