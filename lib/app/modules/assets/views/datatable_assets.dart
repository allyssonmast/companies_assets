import 'package:data_table_2/data_table_2.dart';
import 'package:flutter/material.dart';

import '../models/asset.dart';

class ViveirosDataTable extends StatefulWidget {
  final List<Asset> viveiros;

  const ViveirosDataTable({super.key, required this.viveiros});

  @override
  _ViveirosDataTableState createState() => _ViveirosDataTableState();
}

class _ViveirosDataTableState extends State<ViveirosDataTable> {
  List<bool> _selectedRows = [];

  @override
  void initState() {
    super.initState();
    _selectedRows = List.generate(widget.viveiros.length, (index) => false);
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      child: DataTable2(
        fixedLeftColumns: 1,
        columnSpacing: 10,
        horizontalMargin: 12,
        minWidth: 1200,
        border: const TableBorder(),
        headingRowDecoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.black, Colors.black],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        fixedColumnsColor: Colors.grey[300],
        fixedCornerColor: Colors.grey[400],
        headingRowColor:
            WidgetStateProperty.resolveWith((states) => Colors.grey[200]),
        columns: [
          for (var column in _getColumns())
            DataColumn2(
                label: Text(
                  column,
                  style: const TextStyle(color: Colors.white),
                ),
                size: ColumnSize.M),
        ],
        rows: List<DataRow>.generate(widget.viveiros.length, (index) {
          final viveiro = widget.viveiros[index];
          return DataRow(
            selected: _selectedRows[index],
            onSelectChanged: (isSelected) {
              setState(() {
                _selectedRows[index] = isSelected!;
              });
            },
            cells: [
              DataCell(Text(viveiro.id.toString())),
              DataCell(Text(viveiro.name.toString())),
              DataCell(Text(viveiro.locationId.toString())),
              DataCell(Text(viveiro.parentId.toString())),
              DataCell(Text(viveiro.sensorType.toString())),
              DataCell(Text(viveiro.status.toString())),
            ],
          );
        }),
      ),
    );
  }
}

List<String> _getColumns() {
  return [
    'Nº Viveiro',
    'Área',
    'Profundidade',
    'Volume',
    'Tipo de Água',
    'Espécies',
    'Data de Início',
    'Data de Término',
    'Estado Atual',
    'Nº de Notificações',
  ];
}
