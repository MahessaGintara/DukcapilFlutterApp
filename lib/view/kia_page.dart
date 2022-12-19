import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class PembuatanKIA extends StatefulWidget {
  const PembuatanKIA({super.key});

  @override
  State<PembuatanKIA> createState() => _PembuatanKIAState();
}

class _PembuatanKIAState extends State<PembuatanKIA> {
  @override
  Widget build(BuildContext context) {
    Map<String, String> inputKIA = {
      "noHP": "",
      "noKK": "",
      "noNIKAnak": "",
      "namaAnak": "",
      "noAktaKelahiran": ""
    };
    Map<String, File> fileInput = {
      "fotoKIA": File(""),
      "fotoAktaKelahiran": File(""),
      "fotoAnak": File(""),
    };
    final _formKey = GlobalKey<FormState>();
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 144, 172, 32),
        title: const Text("Pembuatan KIA"),
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
                      input(context, _formKey, inputKIA),
                      const SizedBox(
                        height: 16,
                      ),
                      const Text("Foto KIA"),
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
                                  fileInput["fotoKIA"] = File(image!.path);
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
                                  fileInput["fotoKIA"] = File(image!.path);
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
                      fileInput["fotoKIA"]?.path != ""
                          ? Image.file(fileInput?["fotoKIA"] ?? File(""))
                          : Container(),
                      const SizedBox(
                        height: 16,
                      ),
                      const Text("Foto Akta Kelahiran"),
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
                                  fileInput["fotoAktaKelahiran"] =
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
                                  fileInput["fotoAktaKelahiran"] =
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
                      fileInput["fotoAktaKelahiran"]?.path != ""
                          ? Image.file(
                              fileInput?["fotoAktaKelahiran"] ?? File(""))
                          : Container(),
                      const SizedBox(
                        height: 16,
                      ),
                      const Text("Foto Anak"),
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
                                  fileInput["fotoAnak"] = File(image!.path);
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
                                  fileInput["fotoAnak"] = File(image!.path);
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
                      fileInput["fotoAnak"]?.path != ""
                          ? Image.file(fileInput?["fotoAnak"] ?? File(""))
                          : Container(),
                    ],
                  ),
                );
              },
            ),
            Positioned(
              bottom: 0,
              right: 0,
              child: ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    _formKey.currentState!.save();
                  }
                },
                child: const Text("Simpan"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

Widget input(BuildContext context, GlobalKey<FormState> formKey,
    Map<String, String> inputKIA) {
  return Form(
    key: formKey,
    child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      const Text("No. HP"),
      const SizedBox(
        height: 8,
      ),
      TextFormField(
        decoration: const InputDecoration(
          border: OutlineInputBorder(),
          hintText: "Masukkan No. HP",
        ),
        validator: (value) {
          if (value == null || value.isEmpty) {
            return "No. HP tidak boleh kosong";
          }
          return null;
        },
        onSaved: (value) {
          inputKIA["noHP"] = value!;
        },
      ),
      const SizedBox(
        height: 16,
      ),
      const Text("No. KK"),
      const SizedBox(
        height: 8,
      ),
      TextFormField(
        decoration: const InputDecoration(
          border: OutlineInputBorder(),
          hintText: "Masukkan No. KK",
        ),
        validator: (value) {
          if (value == null || value.isEmpty) {
            return "No. KK tidak boleh kosong";
          }
          if (value.length != 16) {
            return "No. KK harus 16 digit";
          }
          return null;
        },
        onSaved: (value) {
          inputKIA["noKK"] = value!;
        },
      ),
      const SizedBox(
        height: 16,
      ),
      const Text("No. NIK Anak"),
      const SizedBox(
        height: 8,
      ),
      TextFormField(
        decoration: const InputDecoration(
          border: OutlineInputBorder(),
          hintText: "Masukkan No. NIK Anak",
        ),
        validator: (value) {
          if (value == null || value.isEmpty) {
            return "No. NIK Anak tidak boleh kosong";
          }
          if (value.length != 16) {
            return "No. NIK Anak harus 16 digit";
          }
          return null;
        },
        onSaved: (value) {
          inputKIA["noNIKAnak"] = value!;
        },
      ),
      const SizedBox(
        height: 16,
      ),
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
          inputKIA["namaAnak"] = value!;
        },
      ),
      const SizedBox(
        height: 16,
      ),
      const Text("No. Akta Kelahiran"),
      const SizedBox(
        height: 8,
      ),
      TextFormField(
        decoration: const InputDecoration(
          border: OutlineInputBorder(),
          hintText: "Masukkan No. Akta Kelahiran",
        ),
        validator: (value) {
          if (value == null || value.isEmpty) {
            return "No. Akta Kelahiran tidak boleh kosong";
          }
          return null;
        },
        onSaved: (value) {
          inputKIA["noAktaKelahiran"] = value!;
        },
      ),
      const SizedBox(
        height: 16,
      ),
    ]),
  );
}
