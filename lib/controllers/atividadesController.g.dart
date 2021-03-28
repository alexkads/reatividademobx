// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'atividadesController.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$AtividadesController on _AtividadesBase, Store {
  Computed<int> _$totalCheckedComputed;

  @override
  int get totalChecked =>
      (_$totalCheckedComputed ??= Computed<int>(() => super.totalChecked,
              name: '_AtividadesBase.totalChecked'))
          .value;

  final _$itemsAtom = Atom(name: '_AtividadesBase.items');

  @override
  ObservableList<Atividade> get items {
    _$itemsAtom.reportRead();
    return super.items;
  }

  @override
  set items(ObservableList<Atividade> value) {
    _$itemsAtom.reportWrite(value, super.items, () {
      super.items = value;
    });
  }

  final _$_AtividadesBaseActionController =
      ActionController(name: '_AtividadesBase');

  @override
  dynamic add(Atividade atividade) {
    final _$actionInfo = _$_AtividadesBaseActionController.startAction(
        name: '_AtividadesBase.add');
    try {
      return super.add(atividade);
    } finally {
      _$_AtividadesBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic delete(Atividade atividade) {
    final _$actionInfo = _$_AtividadesBaseActionController.startAction(
        name: '_AtividadesBase.delete');
    try {
      return super.delete(atividade);
    } finally {
      _$_AtividadesBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
items: ${items},
totalChecked: ${totalChecked}
    ''';
  }
}
