# Created by CamilaL at 7/6/2025
  #language: es

Característica: : Registro de ataque de migraña
  Como estudiante que sufre de migrañas
  Quiero registrar un episodio con todos sus detalles en un único formulario
  Para mantener un historial clínico completo y preciso

  # Escenarios exitosos

  Escenario: Registro exitoso con todos los datos
    Dado que el estudiante accede al formulario de registro de migraña
    Cuando selecciona la fecha actual
    Y selecciona la intensidad "8"
    Y ingresa una duración de 45 minutos
    Y marca los síntomas "náuseas" y "visión borrosa"
    Y selecciona "estrés" como detonante
    Entonces el sistema debe guardar todos los datos del episodio correctamente

  Escenario: Registro válido con campos mínimos
    Dado que el estudiante accede al formulario de registro de migraña
    Cuando selecciona la fecha actual
    Y selecciona la intensidad "5"
    Y deja vacíos los campos de síntomas, duración y detonantes
    Entonces el sistema debe guardar el episodio con los datos disponibles

  Escenario: Registro con fecha anterior
    Dado que el estudiante accede al formulario de registro de migraña
    Cuando selecciona una fecha anterior a la actual
    Y completa los demás campos obligatorios
    Entonces el sistema debe guardar el episodio con la fecha ingresada

  Escenario: Registro con múltiples síntomas y detonantes
    Dado que el estudiante accede al formulario de registro de migraña
    Cuando selecciona varios síntomas "náuseas", "mareo", "visión borrosa"
    Y selecciona varios detonantes "estrés", "luz intensa", "cambios hormonales"
    Entonces el sistema debe guardar correctamente todos los elementos asociados

  Escenario: Registro con síntomas y detonantes personalizados
    Dado que el estudiante accede al formulario de registro de migraña
    Cuando escribe un síntoma personalizado "entumecimiento facial"
    Y añade un detonante personalizado "olor a pintura"
    Entonces el sistema debe guardar el episodio incluyendo los datos personalizados

  # Escenarios de validación y errores

  Escenario: Registro sin seleccionar fecha
    Dado que el estudiante accede al formulario de registro de migraña
    Y ha ingresado otros datos excepto la fecha
    Cuando intenta guardar el formulario
    Entonces el sistema debe mostrar el mensaje "Debe seleccionar una fecha"

  Escenario: Registro sin seleccionar intensidad
    Dado que el estudiante accede al formulario de registro de migraña
    Cuando deja sin seleccionar la intensidad del dolor
    Entonces el sistema debe mostrar el mensaje "Debe seleccionar la intensidad del dolor"

  Escenario: Registro sin duración ni síntomas
    Dado que el estudiante accede al formulario de registro de migraña
    Cuando selecciona fecha e intensidad
    Y deja vacía la duración y no selecciona síntomas
    Entonces el sistema debe guardar el registro como parcial y mostrar un aviso "Faltan datos adicionales, pero el registro ha sido guardado"

  Escenario: Registro duplicado en la misma fecha
    Dado que ya existe un registro para la fecha 2025-06-01
    Cuando el estudiante intenta guardar un nuevo episodio con la misma fecha
    Entonces el sistema debe permitirlo pero mostrar un mensaje "Ya existe un registro para esta fecha"

  # Escenario reutilizable

  Esquema del escenario: Validación de campos obligatorios
    Dado que el estudiante accede al formulario clínico
    Cuando intenta guardar el formulario sin ingresar "<campo_requerido>"
    Entonces el sistema debe mostrar el mensaje "<mensaje_error>"

    Ejemplos:
      | campo_requerido | mensaje_error                           |
      | Intensidad      | Debe seleccionar la intensidad          |
      | Duración        | Debe ingresar la duración               |
      | Fecha           | Debe seleccionar una fecha válida       |
