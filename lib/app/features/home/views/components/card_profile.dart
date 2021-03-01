part of home;

class _CardProfile extends StatelessWidget {
  const _CardProfile({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        padding: const EdgeInsets.all(10),
        child: ListTile(
          title: Text("firgia"),
          subtitle: Text("saya adalah seorang mahasiswa"),
        ),
      ),
    );
  }
}
