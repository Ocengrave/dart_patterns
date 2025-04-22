class CommandContext {
  final Map<String, dynamic> _params = {};

  T get<T>(String key) {
    if (_params.containsKey(key) == false) {
      throw ArgumentError('Ключ "$key" не найден в параметрах');
    }

    final value = _params[key];

    if (value == null) {
      throw ArgumentError('Значение для ключа "$key" не может быть null');
    }

    if (value is T == false) {
      throw ArgumentError('Ожидался тип ${T.toString()} для ключа "$key", но получен ${value.runtimeType}');
    }

    return value as T;
  }

  void set(String key, dynamic value) {
    _params[key] = value;
  }
}
