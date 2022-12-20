import 'package:disdukcapil_app/view/akta_kelahiran_page.dart';
import 'package:disdukcapil_app/view/kartu_keluarga.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    var param = {
      "maxWidth": MediaQuery.of(context).size.width,
      "txtRegis": "Registrasi Online",
    };
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 144, 172, 32),
        title: const Text("BERANDA"),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: menuButton(context, param),
        ),
      ),
    );
  }

  Widget menuButton(BuildContext context, var param) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        children: [
          SizedBox(
            height: 170,
            child: Container(
              decoration: const BoxDecoration(
                  color: Colors.green,
                  borderRadius: BorderRadius.all(Radius.circular(8))),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Container(
            width: param['maxWidth'],
            decoration: BoxDecoration(
                border: Border.all(color: Colors.grey.shade300, width: 1),
                borderRadius: const BorderRadius.all(Radius.circular(8))),
            child: Padding(
              padding: const EdgeInsets.all(8),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    param['txtRegis'],
                    style: const TextStyle(
                        fontWeight: FontWeight.bold, fontSize: 22),
                  ),
                  Container(
                    width: param['maxWidth'],
                    height: 0.4,
                    color: Colors.grey,
                  ),
                  SizedBox(
                    width: param['maxWidth'],
                    child: Wrap(
                      direction: Axis.horizontal,
                      spacing: 28.0,
                      alignment: WrapAlignment.spaceAround,
                      children: [
                        Column(
                          children: [
                            Container(
                              decoration: const BoxDecoration(
                                  color: Colors.green,
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(30))),
                              padding: const EdgeInsets.all(6),
                              margin: const EdgeInsets.all(4),
                              child: IconButton(
                                onPressed: () {
                                  Navigator.push(context,
                                      MaterialPageRoute(builder: (context) {
                                    return const KartuKeluargaPage();
                                  }));
                                },
                                icon: const Icon(Icons.family_restroom),
                              ),
                            ),
                            const SizedBox(
                              width: 55,
                              child: Text(
                                "Kartu Keluarga",
                                textAlign: TextAlign.center,
                              ),
                            )
                          ],
                        ),
                        Column(
                          children: [
                            Container(
                              decoration: const BoxDecoration(
                                  color: Colors.amber,
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(30))),
                              padding: const EdgeInsets.all(6),
                              margin: const EdgeInsets.all(4),
                              child: IconButton(
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) {
                                        return const KartuKeluargaPage();
                                      },
                                    ),
                                  );
                                },
                                icon: const Icon(FontAwesomeIcons.children),
                              ),
                            ),
                            const SizedBox(
                              width: 55,
                              child: Text(
                                "Kartu Identitas Anak",
                                textAlign: TextAlign.center,
                              ),
                            )
                          ],
                        ),
                        Column(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                  color: Colors.purple.shade700,
                                  borderRadius: const BorderRadius.all(
                                      Radius.circular(30))),
                              padding: const EdgeInsets.all(6),
                              margin: const EdgeInsets.all(4),
                              child: IconButton(
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) {
                                        return const AktaKelahiranPage();
                                      },
                                    ),
                                  );
                                },
                                icon: const Icon(FontAwesomeIcons.baby),
                              ),
                            ),
                            const SizedBox(
                              width: 55,
                              child: Text(
                                "Akta Kelahiran",
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            Container(
                              decoration: const BoxDecoration(
                                  color: Colors.blue,
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(30))),
                              padding: const EdgeInsets.all(6),
                              margin: const EdgeInsets.all(4),
                              child: IconButton(
                                onPressed: () {},
                                icon: const Icon(FontAwesomeIcons.idCard),
                              ),
                            ),
                            const SizedBox(
                              width: 55,
                              child: Text(
                                "KTP Elektronik",
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                  color: Colors.yellow.shade400,
                                  borderRadius: const BorderRadius.all(
                                      Radius.circular(30))),
                              padding: const EdgeInsets.all(6),
                              margin: const EdgeInsets.all(4),
                              child: IconButton(
                                onPressed: () {},
                                icon: const Icon(
                                    FontAwesomeIcons.personWalkingLuggage),
                              ),
                            ),
                            const SizedBox(
                              width: 55,
                              child: Text(
                                "Pindah Datang",
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                  color: Colors.red.shade500,
                                  borderRadius: const BorderRadius.all(
                                      Radius.circular(30))),
                              padding: const EdgeInsets.all(6),
                              margin: const EdgeInsets.all(4),
                              child: IconButton(
                                onPressed: () {},
                                icon: const Icon(FontAwesomeIcons
                                    .personWalkingDashedLineArrowRight),
                              ),
                            ),
                            const SizedBox(
                              width: 55,
                              child: Text(
                                "Pindah Keluar",
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            Container(
                              decoration: const BoxDecoration(
                                  color: Colors.grey,
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(30))),
                              padding: const EdgeInsets.all(6),
                              margin: const EdgeInsets.all(4),
                              child: IconButton(
                                onPressed: () {},
                                icon: const Icon(Icons.library_books),
                              ),
                            ),
                            const SizedBox(
                              width: 55,
                              child: Text(
                                "Akta Kematian",
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                  color: Colors.purple.shade700,
                                  borderRadius: const BorderRadius.all(
                                      Radius.circular(30))),
                              padding: const EdgeInsets.all(6),
                              margin: const EdgeInsets.all(4),
                              child: IconButton(
                                onPressed: () {},
                                icon: const Icon(Icons.sell),
                              ),
                            ),
                            const SizedBox(
                              width: 55,
                              child: Text(
                                "Antrian TTE",
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            Container(
                              decoration: const BoxDecoration(
                                  color: Colors.green,
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(30))),
                              padding: const EdgeInsets.all(6),
                              margin: const EdgeInsets.all(4),
                              child: IconButton(
                                onPressed: () {},
                                icon: const Icon(Icons.info),
                              ),
                            ),
                            const SizedBox(
                              width: 55,
                              child: Text(
                                "Cek Status",
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                  color: Colors.blue.shade900,
                                  borderRadius: const BorderRadius.all(
                                      Radius.circular(30))),
                              padding: const EdgeInsets.all(6),
                              margin: const EdgeInsets.all(4),
                              child: IconButton(
                                onPressed: () {},
                                icon: const Icon(Icons.help),
                              ),
                            ),
                            const SizedBox(
                              width: 55,
                              child: Text(
                                "Bantuan",
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
