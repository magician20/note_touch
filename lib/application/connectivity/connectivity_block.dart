import 'dart:async'; //For StreamSubscription

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:note_touch/domain/local/i_connectivity_facade.dart';

part 'connectivity_block.freezed.dart';
part 'connectivity_event.dart';
part 'connectivity_state.dart';

@injectable
class ConnectivityBloc extends Bloc<ConnectivityEvent, ConnectivityState> {
  final IConnectivityFacade _connectFacade;
  StreamSubscription? _connectionChangeStream;

  ConnectivityBloc(this._connectFacade) : super(const Initial()) {
    _connectFacade.initialize();
  }

/*
  @override
  ConnectivityState get initialState => const ConnectivityState.initial();
  */

  @override
  Stream<ConnectivityState> mapEventToState(ConnectivityEvent event) async* {
    //only one event is here
    yield* _mapCheckConnectivityToState();
  }

  bool isOffline = false;
  Stream<ConnectivityState> _mapCheckConnectivityToState() async* {
    //check id user authed and it will return user or none
    //final _connectionChangeStream =await _connectFacade.connectionChange.listen(connectionChanged);
    if (!isOffline) {
      yield const ConnectivityState.online();
    } else {
      yield const ConnectivityState.offline();
    }
  }

  void connectionChanged(dynamic hasConnection) {
    isOffline = hasConnection as bool;
    print(isOffline);
  }

  @override
  Future<void> close() {
    _connectionChangeStream?.cancel();
    _connectFacade.dispose();
    return super.close();
  }
}
