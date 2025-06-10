from behave import *

use_step_matcher("re")


@step("que el estudiante tiene al menos un mes de registros")
def step_impl(context):
    """
    :type context: behave.runner.Context
    """
    raise NotImplementedError(u'STEP: Dado que el estudiante tiene al menos un mes de registros')


@step('selecciona "Exportar como PDF"')
def step_impl(context):
    """
    :type context: behave.runner.Context
    """
    raise NotImplementedError(u'STEP: Cuando selecciona "Exportar como PDF"')


@step("el sistema debe generar un PDF con el timeline de migrañas y uso de medicamentos")
def step_impl(context):
    """
    :type context: behave.runner.Context
    """
    raise NotImplementedError(
        u'STEP: Entonces el sistema debe generar un PDF con el timeline de migrañas y uso de medicamentos')


@step("que no se ha registrado ningún episodio")
def step_impl(context):
    """
    :type context: behave.runner.Context
    """
    raise NotImplementedError(u'STEP: Dado que no se ha registrado ningún episodio')


@step("el estudiante intenta exportar un reporte")
def step_impl(context):
    """
    :type context: behave.runner.Context
    """
    raise NotImplementedError(u'STEP: Cuando el estudiante intenta exportar un reporte')


@step('el sistema debe mostrar "No hay datos disponibles para exportar"')
def step_impl(context):
    """
    :type context: behave.runner.Context
    """
    raise NotImplementedError(u'STEP: Entonces el sistema debe mostrar "No hay datos disponibles para exportar"')


@step('que hay síntomas recurrentes como "náuseas" y "mareos"')
def step_impl(context):
    """
    :type context: behave.runner.Context
    """
    raise NotImplementedError(u'STEP: Dado que hay síntomas recurrentes como "náuseas" y "mareos"')


@step("se genera el PDF")
def step_impl(context):
    """
    :type context: behave.runner.Context
    """
    raise NotImplementedError(u'STEP: Cuando se genera el PDF')


@step("el reporte debe incluir un resumen de frecuencia por síntoma")
def step_impl(context):
    """
    :type context: behave.runner.Context
    """
    raise NotImplementedError(u'STEP: Entonces el reporte debe incluir un resumen de frecuencia por síntoma')


@step("que el PDF ha sido generado")
def step_impl(context):
    """
    :type context: behave.runner.Context
    """
    raise NotImplementedError(u'STEP: Dado que el PDF ha sido generado')


@step("el estudiante pulsa “Compartir”")
def step_impl(context):
    """
    :type context: behave.runner.Context
    """
    raise NotImplementedError(u'STEP: Cuando el estudiante pulsa “Compartir”')


@step("debe poder enviarlo por correo electrónico o guardarlo en su dispositivo")
def step_impl(context):
    """
    :type context: behave.runner.Context
    """
    raise NotImplementedError(
        u'STEP: Entonces debe poder enviarlo por correo electrónico o guardarlo en su dispositivo')