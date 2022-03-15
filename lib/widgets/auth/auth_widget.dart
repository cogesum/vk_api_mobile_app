import 'package:flutter/material.dart';

class AuthWidget extends StatefulWidget {
  const AuthWidget({Key? key}) : super(key: key);

  @override
  State<AuthWidget> createState() => _AuthWidgetState();
}

class _AuthWidgetState extends State<AuthWidget> {
  bool _lightNightMode = true;
  //get lightMode => _lightNightMode;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: _lightNightMode
            ? Color.fromARGB(240, 63, 138, 224)
            : Color.fromARGB(234, 25, 25, 26),
        title: Text("Вход в аккаунт"),
        centerTitle: true,
        elevation: 0,
        actions: [
          IconButton(
              onPressed: () {
                setState(() {
                  _lightNightMode = !_lightNightMode;
                });
              },
              icon: Icon(
                  _lightNightMode ? Icons.brightness_2 : Icons.brightness_4))
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          decoration: BoxDecoration(
              color: _lightNightMode
                  ? Color.fromARGB(255, 233, 231, 231)
                  : Color.fromARGB(255, 10, 10, 10)),
          padding: EdgeInsets.fromLTRB(0, 12, 0, 0),
          child: Column(
            children: [
              Container(
                color: _lightNightMode
                    ? Colors.white
                    : Color.fromARGB(234, 25, 25, 26),
                padding: EdgeInsets.fromLTRB(11, 10, 11, 10),
                child: Column(
                  children: [
                    _HeaderWidget(lightMode: _lightNightMode),
                    SizedBox(
                      height: 12,
                    ),
                    _FormWidget(lightMode: _lightNightMode),
                    SizedBox(
                      height: 21,
                    ),
                    _RegButton(lightMode: _lightNightMode),
                  ],
                ),
              ),
              _ChooseLang(),
            ],
          ),
        ),
        keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
      ),
    );
  }
}

class _HeaderWidget extends StatelessWidget {
  final bool lightMode;

  const _HeaderWidget({Key? key, required this.lightMode}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(
        'Мобильная версия поможет вам оставаться ВКонтакте, даже если вы далеко от компьютера.',
        style: TextStyle(
            fontSize: 15,
            color: lightMode
                ? Color.fromARGB(234, 25, 25, 26)
                : Color.fromARGB(255, 214, 214, 214)),
      ),
    );
  }
}

class _FormWidget extends StatefulWidget {
  final bool lightMode;

  const _FormWidget({Key? key, required this.lightMode}) : super(key: key);

  @override
  State<_FormWidget> createState() => __FormWidgetState();
}

class __FormWidgetState extends State<_FormWidget> {
  bool _hidePass = true;
  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_declarations
    final textStyle = const TextStyle(
      color: Colors.black,
      fontSize: 16,
    );

    // ignore: prefer_const_declarations

    final textFieldEnabledBorder = OutlineInputBorder(
      borderSide: BorderSide(color: Color.fromARGB(239, 114, 120, 126)),
      borderRadius: BorderRadius.all(Radius.circular(9.0)),
    );

    final textFieldFocusedBorder = OutlineInputBorder(
      borderSide:
          BorderSide(color: Color.fromARGB(240, 63, 138, 224), width: 2),
      borderRadius: BorderRadius.all(Radius.circular(9.0)),
    );

    return Column(
      children: [
        TextField(
          decoration: InputDecoration(
            hintText: "Телефон или email",
            hintStyle: TextStyle(
                color: widget.lightMode
                    ? Color.fromARGB(234, 25, 25, 26)
                    : Color.fromARGB(255, 214, 214, 214)),
            enabledBorder: textFieldEnabledBorder,
            contentPadding: EdgeInsets.all(12),
            focusedBorder: textFieldFocusedBorder,
          ),
        ),
        SizedBox(
          height: 12,
        ),
        TextField(
            obscureText: _hidePass,
            decoration: InputDecoration(
              hintText: "Пароль",
              hintStyle: TextStyle(
                  color: widget.lightMode
                      ? Color.fromARGB(234, 25, 25, 26)
                      : Color.fromARGB(255, 214, 214, 214)),
              enabledBorder: textFieldEnabledBorder,
              contentPadding: EdgeInsets.all(12),
              focusedBorder: textFieldFocusedBorder,
              suffixIcon: IconButton(
                splashColor: Color.fromRGBO(1, 1, 1, 0),
                onPressed: () {
                  setState(() {
                    _hidePass = !_hidePass;
                    print(_hidePass);
                  });
                },
                icon: Icon(_hidePass ? Icons.visibility : Icons.visibility_off),
              ),
            )),
        SizedBox(
          height: 12,
        ),
        Column(
          children: [
            ElevatedButton(
              onPressed: () {},
              child: Text(
                "Вход",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  color: widget.lightMode
                      ? Colors.white
                      : Color.fromARGB(234, 25, 25, 26),
                ),
              ),
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(
                  widget.lightMode
                      ? Color.fromARGB(240, 63, 138, 224)
                      : Color.fromARGB(239, 225, 227, 230),
                ),
                minimumSize:
                    MaterialStateProperty.all(Size(double.infinity, 43)),
                shape: MaterialStateProperty.all(RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(9.0))),
              ),
            ),
            SizedBox(
              height: 5,
            ),
            TextButton(
              onPressed: () {},
              child: Text(
                "Забыли пароль?",
                style: TextStyle(
                    fontSize: 16,
                    color: Color.fromARGB(240, 63, 138, 224),
                    fontWeight: FontWeight.w600),
              ),
              style: ButtonStyle(
                  minimumSize:
                      MaterialStateProperty.all(Size(double.infinity, 43))),
            )
          ],
        )
      ],
    );
  }
}

class _RegButton extends StatelessWidget {
  final bool lightMode;
  const _RegButton({Key? key, required this.lightMode}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Впервые ВКонтакте?",
            style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 15,
                color: lightMode
                    ? Color.fromARGB(234, 25, 25, 26)
                    : Color.fromARGB(255, 214, 214, 214)),
          ),
          SizedBox(
            height: 7,
          ),
          ElevatedButton(
            onPressed: () {},
            child: Text(
              "Зарегистрироваться",
              style: TextStyle(fontWeight: FontWeight.w600, fontSize: 15),
            ),
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(Color(0xFF4bb34b)),
              minimumSize: MaterialStateProperty.all(Size(double.infinity, 43)),
              shape: MaterialStateProperty.all(
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
              ),
            ),
          )
        ],
      ),
    );
  }
}

class _ChooseLang extends StatelessWidget {
  const _ChooseLang({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 267, //??
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            TextButton(
                onPressed: () {},
                child: Text(
                  "Українська",
                  style: TextStyle(color: Color.fromARGB(255, 167, 166, 166)),
                ),
                style: ButtonStyle(
                  padding: MaterialStateProperty.all(EdgeInsets.all(0)),
                )),
            TextButton(
                onPressed: () {},
                child: Text(
                  "English",
                  style: TextStyle(color: Color.fromARGB(255, 167, 166, 166)),
                ),
                style: ButtonStyle(
                  padding: MaterialStateProperty.all(EdgeInsets.all(0)),
                )),
            TextButton(
                onPressed: () {},
                child: Text(
                  "all languages »",
                  style: TextStyle(color: Color.fromARGB(255, 167, 166, 166)),
                ),
                style: ButtonStyle(
                  padding: MaterialStateProperty.all(EdgeInsets.all(0)),
                )),
          ]),
          TextButton(
            onPressed: () {},
            child: Text(
              "Версия для компьютера",
              style: TextStyle(color: Color.fromARGB(255, 167, 166, 166)),
            ),
            style: ButtonStyle(
                padding: MaterialStateProperty.all(EdgeInsets.all(0)),
                minimumSize:
                    MaterialStateProperty.all(Size(double.infinity, 13))),
          ),
          TextButton(
            onPressed: () {},
            child: Text(
              "Приложение для iOS",
              style: TextStyle(color: Color.fromARGB(255, 167, 166, 166)),
            ),
            style: ButtonStyle(
              padding: MaterialStateProperty.all(EdgeInsets.all(0)),
              minimumSize: MaterialStateProperty.all(Size(0, 10)),
            ),
          ),
        ],
      ),
    );
  }
}
