part of register;

class _CardInformation extends StatelessWidget {
  const _CardInformation({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: Icon(Icons.app_registration),
        title: Text("ini adalah halaman register"),
      ),
    );
  }
}
