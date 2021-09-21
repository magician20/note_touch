part of 'connectivity_block.dart';

@freezed
 class ConnectivityEvent with _$ConnectivityEvent {
  //this class event to chack user already have connection or not
  //also maybe this event will be use to force rebuild ui when connection back
  const factory ConnectivityEvent.connectivityCheckRequested() = ConnectivityCheckRequested;
}
