# Created by CamilaL at 10/6/2025
  #language: es

Característica: : Exportación de reporte médico en PDF
  Como estudiante que asiste a consulta médica,
  quiero generar un reporte en PDF con un resumen de mis migrañas y medicamentos usados,
  para compartirlo con mi médico durante la cita.

  Escenario: Exportar reporte completo
    Dado que el estudiante tiene al menos un mes de registros
    Cuando selecciona "Exportar como PDF"
    Entonces el sistema debe generar un PDF con el timeline de migrañas y uso de medicamentos

  Escenario: Exportar cuando no hay datos
    Dado que no se ha registrado ningún episodio
    Cuando el estudiante intenta exportar un reporte
    Entonces el sistema debe mostrar "No hay datos disponibles para exportar"

  Escenario: Incluir resumen de síntomas más frecuentes
    Dado que hay síntomas recurrentes como "náuseas" y "mareos"
    Cuando se genera el PDF
    Entonces el reporte debe incluir un resumen de frecuencia por síntoma

  Escenario: Compartir el reporte desde la app
    Dado que el PDF ha sido generado
    Cuando el estudiante pulsa “Compartir”
    Entonces debe poder enviarlo por correo electrónico o guardarlo en su dispositivo
