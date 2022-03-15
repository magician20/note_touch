//For StreamController/Stream
import 'dart:async';
//InternetAddress utility
import 'dart:io';

import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:injectable/injectable.dart';
import 'package:note_touch/domain/local/i_connectivity_facade.dart';

// singleton class that listens  for connectivity changes, then tests the network connection,
// then uses a StreamController to update anything that cares.
@LazySingleton(as: IConnectivityFacade)
class ConnectivityService implements IConnectivityFacade {
  //This tracks the current connection status
  bool hasConnection = false;

 //flutter_connectivity
  final Connectivity _connectivity = Connectivity();

  //This is how we'll allow subscribing to connection changes
  StreamController connectionChangeController = StreamController.broadcast();

  //Hook into flutter_connectivity's Stream to listen for changes
  //And check the connection status out of the gate
  @override
  void initialize() {
    //flutter_connectivity's listener
    _connectivity.onConnectivityChanged.listen(_connectionChange);
    checkConnection();
  }

  @override
  Stream get connectionChange => connectionChangeController.stream;

  //  A clean up method to close our StreamController Because this is meant
  // to exist through the entire application life cycle this isn't really an issue
  @override
  void dispose() {
    connectionChangeController.close();
  }

  //flutter_connectivity's listener
  void _connectionChange(ConnectivityResult result) {
    checkConnection();
  }

  //The test to actually see if there is a connection
  @override
  Future<bool> checkConnection() async {
    final bool previousConnection = hasConnection;

    try {
      final result = await InternetAddress.lookup('google.com');
      if (result.isNotEmpty && result[0].rawAddress.isNotEmpty) {
        hasConnection = true;
      } else {
        hasConnection = false;
      }
    } on SocketException catch (_) {
      hasConnection = false;
    }

    //The connection status changed send out an update to all listeners
    if (previousConnection != hasConnection) {
      connectionChangeController.sink.add(hasConnection);
    }
    return hasConnection;
  }
}
