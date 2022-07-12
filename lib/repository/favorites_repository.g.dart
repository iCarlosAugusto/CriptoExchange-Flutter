// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'favorites_repository.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$FavoritesRepository on _FavoritesRepositoryBase, Store {
  late final _$favoritesCoinListAtom = Atom(
      name: '_FavoritesRepositoryBase.favoritesCoinList', context: context);

  @override
  ObservableList<Coin> get favoritesCoinList {
    _$favoritesCoinListAtom.reportRead();
    return super.favoritesCoinList;
  }

  @override
  set favoritesCoinList(ObservableList<Coin> value) {
    _$favoritesCoinListAtom.reportWrite(value, super.favoritesCoinList, () {
      super.favoritesCoinList = value;
    });
  }

  late final _$_FavoritesRepositoryBaseActionController =
      ActionController(name: '_FavoritesRepositoryBase', context: context);

  @override
  void addFavoriteCoin(List<Coin> coins) {
    final _$actionInfo = _$_FavoritesRepositoryBaseActionController.startAction(
        name: '_FavoritesRepositoryBase.addFavoriteCoin');
    try {
      return super.addFavoriteCoin(coins);
    } finally {
      _$_FavoritesRepositoryBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
favoritesCoinList: ${favoritesCoinList}
    ''';
  }
}
