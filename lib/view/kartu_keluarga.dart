import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class KartuKeluargaPage extends StatefulWidget {
  const KartuKeluargaPage({super.key});

  @override
  State<KartuKeluargaPage> createState() => _KartuKeluargaPageState();
}

class _KartuKeluargaPageState extends State<KartuKeluargaPage> {
  Map<String, String> inputKK = {
    "nomorKK": "",
    "namaAnggotaKeluarga": "",
    "tempatLahir": "",
    "tanggalLahir": "",
    "jenisKelamin": ""
  };
  Map<String, File> fileInput = {
    "fotoKK": File(""),
    "fotoAkta": File(""),
  };
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 144, 172, 32),
        title: const Text("Penambahan Anggota Kartu Keluarga"),
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
                      input(context, _formKey, inputKK),
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
                                  fileInput["fotoKK"] = File(image!.path);
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
                                  fileInput["fotoKK"] = File(image!.path);
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
                      fileInput["fotoKK"]?.path.isNotEmpty ?? false
                          ? Image.file(fileInput["fotoKK"]!)
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
                                  fileInput["fotoAkta"] = File(image!.path);
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
                                  fileInput["fotoAkta"] = File(image!.path);
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
                      fileInput["fotoAkta"]?.path.isNotEmpty ?? false
                          ? Image.file(fileInput["fotoAkta"]!)
                          : Container(),
                    ],
                  ),
                );
              },
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Center(
                  child: SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () {
                        if (_formKey.currentState!.validate()) {
                          ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(
                              content: Text("Data berhasil disimpan"),
                            ),
                          );
                        }
                      },
                      child: const Text("Simpan"),
                    ),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}

Widget input(BuildContext context, var formKey, Map<String, String> inputKK) {
  List<String> jenisKelamin = ["Laki-laki", "Perempuan"];
  return Form(
    key: formKey,
    child: Column(
      children: [
        TextFormField(
          decoration: const InputDecoration(
            hintText: "Nomor KK",
          ),
          keyboardType: TextInputType.number,
          validator: (value) {
            if (value?.isEmpty ?? true) {
              return "Nomor KK tidak boleh kosong";
            }
            if (value?.length != 16) {
              return "Nomor KK tidak boleh kurang dari 16 digit";
            }
            return "";
          },
          onChanged: (value) {
            inputKK["nomorKK"] = value;
          },
        ),
        TextFormField(
          decoration: const InputDecoration(
            hintText: "Nama Anggota Keluarga",
          ),
          keyboardType: TextInputType.text,
          validator: (value) {
            if (value?.isEmpty ?? true) {
              return "Nama Anggota Keluarga tidak boleh kosong";
            }
            return "";
          },
          onChanged: (value) {
            inputKK["namaAnggotaKeluarga"] = value;
          },
        ),
        TextFormField(
          decoration: const InputDecoration(
            hintText: "Tempat Lahir",
          ),
          keyboardType: TextInputType.text,
          validator: (value) {
            if (value?.isEmpty ?? true) {
              return "Tempat Lahir tidak boleh kosong";
            }
            return "";
          },
          onChanged: (value) {
            inputKK["tempatLahir"] = value;
          },
        ),
        TextFormField(
          decoration: const InputDecoration(
            hintText: "Tanggal Lahir",
          ),
          keyboardType: TextInputType.datetime,
          validator: (value) {
            if (value?.isEmpty ?? true) {
              return "Tanggal Lahir tidak boleh kosong";
            }
            return "";
          },
          onChanged: (value) {
            inputKK["tanggalLahir"] = value;
          },
        ),
        DropdownButtonFormField(
          decoration: const InputDecoration(
            hintText: "Jenis Kelamin",
          ),
          validator: (value) {
            if (value?.isEmpty ?? true) {
              return "Jenis Kelamin tidak boleh kosong";
            }
            return "";
          },
          items: jenisKelamin.map((String value) {
            return DropdownMenuItem<String>(
              value: value,
              child: Text(value),
            );
          }).toList(),
          onChanged: (value) {
            inputKK["jenisKelamin"] = value?.toString() ?? "";
          },
        ),
      ],
    ),
  );
}
