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
  bool isOffline = false;

  ConnectivityBloc(this._connectFacade) : super(ConnectivityState.initial()) {
    _connectFacade.initialize();
    on<ConnectivityCheckRequested>(_mapCheckConnectivityToState);
  }

  Future<void> _mapCheckConnectivityToState(e, emit) async {
    //check id user authed and it will return user or none
    //final _connectionChangeStream =await _connectFacade.connectionChange.listen(connectionChanged);
    if (!isOffline) {
      emit(const ConnectivityState.online());
    } else {
      emit(const ConnectivityState.offline());
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
