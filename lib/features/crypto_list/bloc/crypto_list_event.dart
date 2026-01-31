part of 'crypto_list_bloc.dart';

abstract class CryptoListBlocEvent extends Equatable{}

class LoadCryptoList extends CryptoListBlocEvent {
  LoadCryptoList({
    required this.completer}
  );
  
  final Completer? completer;
  
  @override
  List<Object?> get props => [completer];
}
