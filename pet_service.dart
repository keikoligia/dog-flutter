import "package:pet_pipoca/models/pet_model.dart";

class PetService {
//Lista private
  final List<Pet> _petList = [];

  factory PetService() {
    return _singleton;
  }

  static final PetService _singleton = PetService._internal();

//Construtor da classe
  PetService._internal() {
    _petList.add(Pet(
        id: "1",
        nome: "Pipoca",
        descricao: "Fofura",
        idade: 14,
        raca: "York Shire",
        tamanho: "mini",
        imagemUrl: "assets/images/pipoca.png"));
    _petList.add(Pet(
        id: "2",
        nome: "Rick",
        descricao: "Esperto",
        idade: 10,
        raca: "Pastor Alemão",
        tamanho: "gigante",
        imagemUrl: "assets/images/rick.png"));
  }
//Como _petList é private, cria-se um método para poder utilizá-la
  List getAllPetsService() {
    return _petList;
  }

  void addPet(Pet pet) {
    _petList.add(Pet(
        id: pet.id,
        nome: pet.nome,
        descricao: pet.descricao,
        idade: pet.idade,
        raca: pet.raca,
        tamanho: pet.tamanho,
        imagemUrl: pet.imagem));
    print(_petList.length);
  }
}
