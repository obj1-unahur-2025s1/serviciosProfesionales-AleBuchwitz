class ProfesionalVinculadoAUniversidad {
  const universidadDondeEstudio
  const honorariosPorHora
  const provinciasQuePuedeTrabajar

  method universidadDondeEstudio() = universidadDondeEstudio
  method puedeTrabajarEn() = universidadDondeEstudio.provincia()
  method honorarios() = universidadDondeEstudio.honorariosQueRecomienda()
}
class ProfesionalAsociadosDelLitoral {
  const universidadDondeEstudio
  const honorariosPorHora = 3000
  const provinciasQuePuedeTrabajar = #{"EntreRios", "SantaFe", "Corrientes"}

  method universidadDondeEstudio() = universidadDondeEstudio
  method puedeTrabajarEn() = honorariosPorHora
  method honorarios() = provinciasQuePuedeTrabajar
}
class ProfesionalLibre {
  const universidadDondeEstudio
  const honorariosPorHora
  const provinciasQuePuedeTrabajar

  method universidadDondeEstudio() = universidadDondeEstudio
  method puedeTrabajarEn() = provinciasQuePuedeTrabajar
  method honorarios() = honorariosPorHora
}
class Universidad {
  const provincia
  const honorarios

  method honorariosQueRecomienda() = honorarios
  method provincia() = provincia
}
class EmpresaDeServicio {
  const honorariosDeReferencia
  const profecionalesContratados

  method cuantosEstudiaronEn(universidad) = profecionalesContratados.count({p => p.universidadDondeEstudio() == universidad})
  method profesionalesCaros() = profecionalesContratados.filter({p => p.honorarios() > honorariosDeReferencia})
  method universidadesFormadoras() = profecionalesContratados.map({p => p.universidadDondeEstudio()}).asSet()
  method profecionalMasBarato() = profecionalesContratados.findOrElse({p => p.honorarios() < honorariosDeReferencia}, {})
}