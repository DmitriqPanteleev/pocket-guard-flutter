// TODO(RuslanShirkhanov): implement.
enum Env {
  dev(baseUrl: ''),
  test(baseUrl: ''),
  prod(baseUrl: '');

  const Env({required this.baseUrl});

  final String baseUrl;
}
