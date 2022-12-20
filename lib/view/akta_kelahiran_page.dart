import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class AktaKelahiranPage extends StatefulWidget {
  const AktaKelahiranPage({super.key});

  @override
  State<AktaKelahiranPage> createState() => _AktaKelahiranPageState();
}

class _AktaKelahiranPageState extends State<AktaKelahiranPage> {
  Map<String, String> inputAktaKelahiran = {
    "namaAnak": "",
    "tempatLahir": "",
    "tanggalLahir": "",
    "jamLahir": "",
  };
  Map<String, File> inputFile = {
    "fotoKK": File(""),
    "fotoSuratLahir": File(""),
    "fotoBukuNikah": File(""),
    "fotoKTPAyah": File(""),
    "fotoKTPIbu": File(""),
  };
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 144, 172, 32),
        title: const Text("PEMBUATAN AKTA KELAHIRAN"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Stack(
          children: [
            LayoutBuilder(
              builder:
                  (BuildContext context, BoxConstraints viewportconstraint) {
                return SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      input(context, _formKey, inputAktaKelahiran),
                      const SizedBox(
                        height: 16,
                      ),
                      const Text("Foto Kartu Keluarga"),
                      const SizedBox(
                        height: 16,
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: ElevatedButton(
                              onPressed: () async {
                                final image = await ImagePicker()
                                    .pickImage(source: ImageSource.camera);
                                setState(() {
                                  inputFile["fotoKK"] = File(image!.path);
                                });
                              },
                              child: const Text("Ambil Foto"),
                            ),
                          ),
                          const SizedBox(
                            width: 16,
                          ),
                          Expanded(
                            child: ElevatedButton(
                              onPressed: () async {
                                final image = await ImagePicker()
                                    .pickImage(source: ImageSource.gallery);
                                setState(() {
                                  inputFile["fotoKK"] = File(image!.path);
                                });
                              },
                              child: const Text("Pilih Foto"),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 16,
                      ),
                      inputFile["fotoKK"]?.path != ""
                          ? Image.file(inputFile["fotoKK"] ?? File(""))
                          : Container(),
                      const SizedBox(
                        height: 16,
                      ),
                      const Text("Foto Surat Kelahiran"),
                      const SizedBox(
                        height: 16,
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: ElevatedButton(
                              onPressed: () async {
                                final image = await ImagePicker()
                                    .pickImage(source: ImageSource.camera);
                                setState(() {
                                  inputFile["fotoSuratLahir"] =
                                      File(image!.path);
                                });
                              },
                              child: const Text("Ambil Foto"),
                            ),
                          ),
                          const SizedBox(
                            width: 16,
                          ),
                          Expanded(
                            child: ElevatedButton(
                              onPressed: () async {
                                final image = await ImagePicker()
                                    .pickImage(source: ImageSource.gallery);
                                setState(() {
                                  inputFile["fotoSuratLahir"] =
                                      File(image!.path);
                                });
                              },
                              child: const Text("Pilih Foto"),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 16,
                      ),
                      inputFile["fotoSuratLahir"]?.path != ""
                          ? Image.file(inputFile["fotoSuratLahir"] ?? File(""))
                          : Container(),
                      const SizedBox(
                        height: 16,
                      ),
                      const Text("Foto Buku Nikah"),
                      const SizedBox(
                        height: 16,
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: ElevatedButton(
                              onPressed: () async {
                                final image = await ImagePicker()
                                    .pickImage(source: ImageSource.camera);
                                setState(() {
                                  inputFile["fotoBukuNikah"] =
                                      File(image!.path);
                                });
                              },
                              child: const Text("Ambil Foto"),
                            ),
                          ),
                          const SizedBox(
                            width: 16,
                          ),
                          Expanded(
                            child: ElevatedButton(
                              onPressed: () async {
                                final image = await ImagePicker()
                                    .pickImage(source: ImageSource.gallery);
                                setState(() {
                                  inputFile["fotoBukuNikah"] =
                                      File(image!.path);
                                });
                              },
                              child: const Text("Pilih Foto"),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 16,
                      ),
                      inputFile["fotoBukuNikah"]?.path != ""
                          ? Image.file(inputFile["fotoBukuNikah"] ?? File(""))
                          : Container(),
                      const SizedBox(
                        height: 16,
                      ),
                      const Text("Foto KTP Ayah"),
                      const SizedBox(
                        height: 16,
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: ElevatedButton(
                              onPressed: () async {
                                final image = await ImagePicker()
                                    .pickImage(source: ImageSource.camera);
                                setState(() {
                                  inputFile["fotoKTPAyah"] = File(image!.path);
                                });
                              },
                              child: const Text("Ambil Foto"),
                            ),
                          ),
                          const SizedBox(
                            width: 16,
                          ),
                          Expanded(
                            child: ElevatedButton(
                              onPressed: () async {
                                final image = await ImagePicker()
                                    .pickImage(source: ImageSource.gallery);
                                setState(() {
                                  inputFile["fotoKTPAyah"] = File(image!.path);
                                });
                              },
                              child: const Text("Pilih Foto"),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 16,
                      ),
                      inputFile["fotoKTPAyah"]?.path != ""
                          ? Image.file(inputFile["fotoKTPAyah"] ?? File(""))
                          : Container(),
                      const SizedBox(
                        height: 16,
                      ),
                      const Text("Foto KTP Ibu"),
                      const SizedBox(
                        height: 16,
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: ElevatedButton(
                              onPressed: () async {
                                final image = await ImagePicker()
                                    .pickImage(source: ImageSource.camera);
                                setState(() {
                                  inputFile["fotoKTPIbu"] = File(image!.path);
                                });
                              },
                              child: const Text("Ambil Foto"),
                            ),
                          ),
                          const SizedBox(
                            width: 16,
                          ),
                          Expanded(
                            child: ElevatedButton(
                              onPressed: () async {
                                final image = await ImagePicker()
                                    .pickImage(source: ImageSource.gallery);
                                setState(() {
                                  inputFile["fotoKTPIbu"] = File(image!.path);
                                });
                              },
                              child: const Text("Pilih Foto"),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 16,
                      ),
                      inputFile["fotoKTPIbu"]?.path != ""
                          ? Image.file(inputFile["fotoKTPIbu"] ?? File(""))
                          : Container(),
                    ],
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}

Widget input(BuildContext context, GlobalKey<FormState> formKey,
    Map<String, String> inputAktaKelahiran) {
  return Form(
    key: formKey,
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text("Nama Anak"),
        const SizedBox(
          height: 8,
        ),
        TextFormField(
          decoration: const InputDecoration(
            border: OutlineInputBorder(),
            hintText: "Masukkan Nama Anak",
          ),
          validator: (value) {
            if (value == null || value.isEmpty) {
              return "Nama Anak tidak boleh kosong";
            }
            return null;
          },
          onSaved: (value) {
            inputAktaKelahiran["namaAnak"] = value!;
          },
        ),
        const SizedBox(
          height: 16,
        ),
        const Text("Tempat Lahir"),
        const SizedBox(
          height: 8,
        ),
        TextFormField(
          decoration: const InputDecoration(
            border: OutlineInputBorder(),
            hintText: "Masukkan Tempat Lahir",
          ),
          validator: (value) {
            if (value == null || value.isEmpty) {
              return "Tempat Lahir tidak boleh kosong";
            }
            return null;
          },
          onSaved: (value) {
            inputAktaKelahiran["tempatLahir"] = value!;
          },
        ),
        const SizedBox(
          height: 16,
        ),
        const Text("Tanggal Lahir"),
        const SizedBox(
          height: 8,
        ),
        TextFormField(
          decoration: const InputDecoration(
            border: OutlineInputBorder(),
            hintText: "Masukkan Tanggal Lahir",
          ),
          validator: (value) {
            if (value == null || value.isEmpty) {
              return "Tanggal Lahir tidak boleh kosong";
            }
            return null;
          },
          onSaved: (value) {
            inputAktaKelahiran["tanggalLahir"] = value!;
          },
        ),
        const SizedBox(
          height: 16,
        ),
        const Text("Jam Lahir"),
        const SizedBox(
          height: 8,
        ),
        TextFormField(
          decoration: const InputDecoration(
            border: OutlineInputBorder(),
            hintText: "Masukkan Jam Lahir",
          ),
          validator: (value) {
            if (value == null || value.isEmpty) {
              return "Jam Lahir tidak boleh kosong";
            }
            return null;
          },
          onSaved: (value) {
            inputAktaKelahiran["jamLahir"] = value!;
          },
        ),
        const SizedBox(
          height: 16,
        ),
      ],
    ),
  );
}
