class Singleton {
  final Map<String, dynamic> _params = {};

  Singleton._();

  static final Singleton _instance = Singleton._();

  static Singleton get instance => _instance;

  T get<T>(String key) {
    if (_params.containsKey(key) == false) {
      throw ArgumentError('Ключ "$key" не найден в параметрах');
    }

    final value = _params[key];

    if (value == null) {
      throw ArgumentError('Значение для ключа "$key" не может быть null');
    }

    if (value is T == false) {
      throw ArgumentError(
        'Ожидался тип ${T.toString()} для ключа "$key", но получен ${value.runtimeType}',
      );
    }

    return value as T;
  }

  void set(String key, dynamic value) {
    _params[key] = value;
  }
}
