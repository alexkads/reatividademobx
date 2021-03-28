import 'package:mobx/mobx.dart';
import 'package:reatividademobx/models/atividade.dart';
import 'package:reatividademobx/utils/uuid_generate.dart';
part 'atividadesController.g.dart';

class AtividadesController = _AtividadesBase with _$AtividadesController;

abstract class _AtividadesBase with Store {
  @observable
  ObservableList<Atividade> items = [
    Atividade(
      id: UUIDGenerate().uuidv4,
      titulo: 'Ativade 1',
      descricao: 'Descrição 1',
      concluido: false,
    ),
    Atividade(
      id: UUIDGenerate().uuidv4,
      titulo: 'Ativade 2',
      descricao: 'Descrição 2',
      concluido: true,
    ),
    Atividade(
      id: UUIDGenerate().uuidv4,
      titulo: 'Ativade 3',
      descricao: 'Descrição 4',
      concluido: true,
    ),
  ].asObservable();

  @computed
  int get totalChecked => items.where((e) => e.concluido).length;

  @action
  add(Atividade atividade) {
    items.add(atividade);
  }

  @action
  delete(Atividade atividade) {
    items.removeWhere((e) => e.id == atividade.id);
  }
}
