# Created by CamilaL at 10/6/2025
  #language: es

Característica: : Dashboard de visualización gráfica
  Como estudiante que sufre de migrañas
  quiero ver representaciones visuales de mis síntomas en el tiempo,
  para identificar tendencias, frecuencia y patrones.

  Escenario: Ver gráfico de línea de intensidad
    Dado que el estudiante tiene múltiples registros con diferentes intensidades
    Cuando accede al dashboard
    Entonces debe ver un gráfico de línea con la evolución diaria de la intensidad

  Escenario: Ver calendario de síntomas
    Dado que el estudiante ha registrado ataques en distintas fechas
    Cuando accede al calendario de síntomas
    Entonces debe ver los días marcados con íconos o colores que representan la intensidad

  Escenario: Ver mapa de calor semanal
    Dado que hay registros en diferentes días y horarios
    Cuando abre el mapa de calor
    Entonces debe visualizar bloques por día y hora que representan la frecuencia

  Escenario: No hay registros suficientes
    Dado que el estudiante accede al dashboard de visualización
    Cuando no existen episodios registrados
    Entonces el sistema debe mostrar el mensaje "No hay datos suficientes para generar gráficos"
    Y debe sugerir registrar episodios para activar la visualización
