import 'package:formz/formz.dart';

enum FullNameError { empty, format }

class FullName extends FormzInput<String, FullNameError> {
  static final RegExp fullNameRegExp = RegExp(r'^[a-zA-ZáéíóúÁÉÍÓÚüÜñÑ]+(\s[a-zA-ZáéíóúÁÉÍÓÚüÜñÑ]+)*$');

  const FullName.pure() : super.pure('');

  const FullName.dirty(super.value) : super.dirty();

  String? get errorMessage {
    if (isValid || isPure) return null;

    if (displayError == FullNameError.empty) return 'El campo es requerido';

    if (displayError == FullNameError.format) {
      return 'Por favor, ingresa un nombre válido. Solo se permiten letras y un espacio entre palabras.';
    }

    return null;
  }

  @override
  FullNameError? validator(String value) {
    if (value.isEmpty || value.trim().isEmpty) return FullNameError.empty;

    if (!fullNameRegExp.hasMatch(value)) return FullNameError.format;

    return null;
  }
}