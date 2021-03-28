// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'atividade.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$Atividade on _AtividadeBase, Store {
  final _$idAtom = Atom(name: '_AtividadeBase.id');

  @override
  String get id {
    _$idAtom.reportRead();
    return super.id;
  }

  @override
  set id(String value) {
    _$idAtom.reportWrite(value, super.id, () {
      super.id = value;
    });
  }

  final _$tituloAtom = Atom(name: '_AtividadeBase.titulo');

  @override
  String get titulo {
    _$tituloAtom.reportRead();
    return super.titulo;
  }

  @override
  set titulo(String value) {
    _$tituloAtom.reportWrite(value, super.titulo, () {
      super.titulo = value;
    });
  }

  final _$descricaoAtom = Atom(name: '_AtividadeBase.descricao');

  @override
  String get descricao {
    _$descricaoAtom.reportRead();
    return super.descricao;
  }

  @override
  set descricao(String value) {
    _$descricaoAtom.reportWrite(value, super.descricao, () {
      super.descricao = value;
    });
  }

  final _$concluidoAtom = Atom(name: '_AtividadeBase.concluido');

  @override
  bool get concluido {
    _$concluidoAtom.reportRead();
    return super.concluido;
  }

  @override
  set concluido(bool value) {
    _$concluidoAtom.reportWrite(value, super.concluido, () {
      super.concluido = value;
    });
  }

  final _$_AtividadeBaseActionController =
      ActionController(name: '_AtividadeBase');

  @override
  dynamic setId(String value) {
    final _$actionInfo = _$_AtividadeBaseActionController.startAction(
        name: '_AtividadeBase.setId');
    try {
      return super.setId(value);
    } finally {
      _$_AtividadeBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic setTitulo(String value) {
    final _$actionInfo = _$_AtividadeBaseActionController.startAction(
        name: '_AtividadeBase.setTitulo');
    try {
      return super.setTitulo(value);
    } finally {
      _$_AtividadeBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic setDescricao(String value) {
    final _$actionInfo = _$_AtividadeBaseActionController.startAction(
        name: '_AtividadeBase.setDescricao');
    try {
      return super.setDescricao(value);
    } finally {
      _$_AtividadeBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic setConcluido(bool value) {
    final _$actionInfo = _$_AtividadeBaseActionController.startAction(
        name: '_AtividadeBase.setConcluido');
    try {
      return super.setConcluido(value);
    } finally {
      _$_AtividadeBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
id: ${id},
titulo: ${titulo},
descricao: ${descricao},
concluido: ${concluido}
    ''';
  }
}
