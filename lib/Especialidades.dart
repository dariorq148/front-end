class EspecialidadMedica {
  final String titulo;
  final String imagen;

  EspecialidadMedica({required this.titulo, required this.imagen});
}

List<EspecialidadMedica> especialidadesMedicas = [
  EspecialidadMedica(
    titulo: 'Cardiología',
    imagen: 'assets/especialidades/corazon.png',
  ),
  EspecialidadMedica(
    titulo: 'Neurología',
    imagen: 'assets/especialidades/cerebro.png',
  ),
  EspecialidadMedica(
    titulo: 'Ginecología',
    imagen: 'assets/especialidades/ginecologia.png',
  ),
  EspecialidadMedica(
    titulo: 'Ginecología',
    imagen: 'assets/especialidades/ginecologia.png',
  ),
  EspecialidadMedica(
    titulo: 'Oftalmología',
    imagen: 'assets/especialidades/riñon.png',
  ),
  EspecialidadMedica(
    titulo: 'Dermatología',
    imagen: 'assets/especialidades/derma.png',
  ),


  EspecialidadMedica(
    titulo: 'Psiquiatría',
    imagen: 'assets/especialidades/cerebro.png',
  ),
  EspecialidadMedica(
    titulo: 'Urología',
    imagen: 'assets/especialidades/riñon.png',
  ),
  EspecialidadMedica(
    titulo: 'Estomatologia',
    imagen: 'assets/especialidades/estomago.png',
  ),
];
