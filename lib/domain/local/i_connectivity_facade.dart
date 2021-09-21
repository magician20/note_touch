
abstract class IConnectivityFacade {
  void initialize();
  Stream get connectionChange;
  void dispose();
  Future<bool> checkConnection();
}
