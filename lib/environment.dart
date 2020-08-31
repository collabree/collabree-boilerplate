abstract class Endpoints {
  String get baseUrl;
  String get host;
}

class DevEndpoints implements Endpoints {
  const DevEndpoints();

  @override
  String get baseUrl => 'https://$host';

  @override
  String get host => 'localhost:3000';
}

class ProdEndpoints implements Endpoints {
  const ProdEndpoints();

  @override
  String get baseUrl => 'https://$host';

  @override
  String get host => '...';
}

class Environment {
  static Endpoints get endpoints {
    const isProduction = bool.fromEnvironment('dart.vm.product');
    return isProduction ? const ProdEndpoints() : const DevEndpoints();
  }
}
