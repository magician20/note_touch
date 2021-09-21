part of 'connectivity_block.dart';

@freezed
class ConnectivityState with _$ConnectivityState {
  const factory ConnectivityState.initial() = Initial;
  const factory ConnectivityState.online() = ConnectivityOnline;
  const factory ConnectivityState.offline() = ConnectivityOffline;
}
