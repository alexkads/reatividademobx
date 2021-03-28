import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:get_it/get_it.dart';
import 'package:reatividademobx/controllers/counterController.dart';
import 'package:reatividademobx/models/atividade.dart';
import 'package:reatividademobx/utils/uuid_generate.dart';
import 'controllers/atividadesController.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final counterController = GetIt.I.get<CounterController>();
  final atividadesInstance = GetIt.I.get<AtividadesController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        actions: [
          IconButton(
            color: Colors.white,
            icon: Observer(builder: (_) {
              return Text(atividadesInstance.totalChecked.toString());
            }),
            onPressed: () {},
          ),
          IconButton(
            color: Colors.white,
            icon: Icon(Icons.add),
            onPressed: () async {
              await _dialogNovaAtividade(context: context);
            },
          ),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            _buildAtividades(),
            _buildCounter(context),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            counterController.incrementCounter();
          });
        },
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ),
    );
  }

  Future _dialogNovaAtividade(
      {BuildContext context, Atividade novaAtividade}) async {
    bool newItem = novaAtividade == null;
    var media = MediaQuery.of(context).size;

    return await showDialog(
        context: context,
        builder: (_) {
          var atividade = newItem
              ? Atividade(
                  id: UUIDGenerate().uuidv4,
                  titulo: 'Preencher título',
                  descricao: 'Preencher descrição',
                  concluido: false,
                )
              : novaAtividade;

          return Material(
            color: Colors.transparent,
            child: Center(
              child: Container(
                height: media.height * 0.40,
                width: media.width * 0.80,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10.0),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black87,
                        offset: const Offset(3.0, 3.0),
                        blurRadius: 10.0,
                        spreadRadius: 5.0,
                      ),
                    ]),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      TextFormField(
                        initialValue: atividade.titulo,
                        onChanged: atividade.setTitulo,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: 'Título',
                        ),
                      ),
                      TextFormField(
                        initialValue: atividade.descricao,
                        onChanged: atividade.setDescricao,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: 'Descrição',
                        ),
                      ),
                      ElevatedButton.icon(
                        icon: Icon(Icons.confirmation_num),
                        label: Text('Ok'),
                        onPressed: () {
                          if (newItem) {
                            atividadesInstance.add(atividade);
                          }
                          Navigator.pop(context);
                        },
                      )
                    ],
                  ),
                ),
              ),
            ),
          );
        });
  }

  Flexible _buildCounter(BuildContext context) {
    return Flexible(
      child: Card(
        child: Container(
          width: double.infinity,
          color: Colors.yellow,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'You have pushed the button this many times:',
              ),
              Text(
                '${counterController.counter}',
                style: Theme.of(context).textTheme.headline4,
              ),
            ],
          ),
        ),
      ),
    );
  }

  Flexible _buildAtividades() {
    return Flexible(
      child: Card(
        elevation: 20,
        child: Observer(
          builder: (_) {
            return ListView.builder(
              itemCount: atividadesInstance.items.length,
              itemBuilder: (_, index) {
                var item = atividadesInstance.items[index];
                return ItemList(
                  item: item,
                  onPressedItemRemove: () {
                    atividadesInstance.delete(item);
                  },
                  onTapCreateItem: () async {
                    await _dialogNovaAtividade(
                      context: context,
                      novaAtividade: item,
                    );
                  },
                );
              },
            );
          },
        ),
      ),
    );
  }
}

class ItemList extends StatelessWidget {
  final Atividade item;
  final Function onPressedItemRemove;
  final Function onTapCreateItem;

  const ItemList({
    Key key,
    @required this.item,
    @required this.onPressedItemRemove,
    @required this.onTapCreateItem,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Observer(
      builder: (_) {
        return ListTile(
          isThreeLine: true,
          onTap: onTapCreateItem,
          title: Text(item.titulo),
          subtitle: Text(item.descricao),
          leading: Checkbox(
            value: item.concluido,
            onChanged: item.setConcluido,
          ),
          trailing: IconButton(
            color: Colors.red,
            icon: Icon(Icons.remove_circle),
            onPressed: onPressedItemRemove,
          ),
        );
      },
    );
  }
}
