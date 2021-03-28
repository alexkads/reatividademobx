import 'package:mobx/mobx.dart';
import 'package:reativdademobx/utils/uuid_generate.dart';
part 'atividade.g.dart';

class Atividade = _AtividadeBase with _$Atividade;

abstract class _AtividadeBase with Store {
  _AtividadeBase({
    this.id,
    this.titulo,
    this.descricao,
    this.concluido,
  });

  @observable
  String id;

  @observable
  String titulo;

  @observable
  String descricao;

  @observable
  bool concluido;

  @action
  setId(String value) => id = value;

  @action
  setTitulo(String value) => titulo = value;

  @action
  setDescricao(String value) => descricao = value;

  @action
  setConcluido(bool value) => concluido = value;
}
