import 'package:flutter/material.dart';

class InputPage extends StatefulWidget {
  const InputPage({Key key}) : super(key: key);

  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  String _name = '';
  String _email = '';
  String _date = '';

  String _selectedOption = 'Vôar';

  List<String> _powers = [
    'Vôar',
    'Raio X',
    'Super Folego',
    'Velocidade',
    'Super Força'
  ];

  TextEditingController _inputFieldDateController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('inputs de Texto'),
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
        children: [
          _createInput(),
          Divider(),
          _createEmail(),
          Divider(),
          _createPassword(),
          Divider(),
          createDate(context),
          Divider(),
          createDropdown(),
          Divider(),
          _createPerson(),
        ],
      ),
    );
  }

  Widget _createInput() {
    return TextField(
      textCapitalization: TextCapitalization.sentences,
      decoration: InputDecoration(
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
        counter: Text('letras ${_name.length}'),
        hintText: 'Nome da Pessoa',
        labelText: 'Nome',
        helperText: 'Somente o Nome',
        suffixIcon: Icon(Icons.accessibility),
        icon: Icon(Icons.account_circle),
      ),
      onChanged: (value) {
        setState(() {
          _name = value;
        });
      },
    );
  }

  _createEmail() {
    return TextField(
        keyboardType: TextInputType.emailAddress,
        decoration: InputDecoration(
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
          hintText: 'Email',
          labelText: 'Email',
          suffixIcon: Icon(Icons.alternate_email),
          icon: Icon(Icons.email),
        ),
        onChanged: (value) => setState(() {
              _email = value;
            }));
  }

  _createPassword() {
    return TextField(
        enableInteractiveSelection: false,
        obscureText: true,
        decoration: InputDecoration(
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
          hintText: 'Senha',
          labelText: 'Senha',
          suffixIcon: Icon(Icons.lock_open),
          icon: Icon(Icons.lock),
        ),
        onChanged: (value) => setState(() {
              _email = value;
            }));
  }

  createDate(BuildContext context) {
    return TextField(
      controller: _inputFieldDateController,
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
        hintText: 'Data de nascimento',
        labelText: 'Data de nascimento',
        suffixIcon: Icon(Icons.perm_contact_calendar),
        icon: Icon(Icons.calendar_today),
      ),
      onTap: () {
        FocusScope.of(context).requestFocus(FocusNode());
        _selectDate(context);
      },
    );
  }

  void _selectDate(BuildContext context) async {
    DateTime picked = await showDatePicker(
        context: context,
        initialDate: DateTime.now(),
        firstDate: DateTime(2021),
        lastDate: DateTime(2031),
        locale: Locale('pt', 'BR'));

    if (picked != null) {
      setState(() {
        _date = picked.toString();
        _inputFieldDateController.text = _date;
      });
    }
  }

  List<DropdownMenuItem<String>> getOptionDropdown() {
    List<DropdownMenuItem<String>> list = [];
    _powers.forEach((power) {
      list.add(DropdownMenuItem(
        child: Text(power),
        value: power,
      ));
    });
    return list;
  }

  createDropdown() {
    return Row(
      children: [
        Icon(Icons.select_all),
        SizedBox(width: 30),
        Expanded(
          child: DropdownButton(
            value: _selectedOption,
            items: getOptionDropdown(),
            onChanged: (opt) {
              setState(() {
                _selectedOption = opt;
              });
            },
          ),
        )
      ],
    );
  }

  Widget _createPerson() {
    return ListTile(
      title: Text('O nome é: $_name'),
      subtitle: Text('Email: $_email'),
      trailing: Text(_selectedOption),
    );
  }
}
