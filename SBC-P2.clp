;;; ---------------------------------------------------------
;;; SBC-P2.clp
;;; Translated by owl2clips
;;; Translated to CLIPS from ontology SBC-P2.owl
;;; :Date 01/12/2021 13:26:05

(defclass Vivienda "Clase de Vivienda"
    (is-a USER)
    (role concrete)
    (pattern-match reactive)
    ;;; Esta localizado/a en:
    (multislot localizada/o_en
        (type INSTANCE)
        (create-accessor read-write))
    ;;; Si se tiene acceso a movilidad reducida
    (multislot acceso_mov_red
        (type SYMBOL)
        (create-accessor read-write))
    ;;; Si se dispone de agua
    (multislot agua
        (type SYMBOL)
        (create-accessor read-write))
    ;;; Si tiene aire o no
    (multislot aire
        (type SYMBOL)
        (create-accessor read-write))
    ;;; Si la vivienda esta amueblada o no
    (multislot amueblada
        (type SYMBOL)
        (create-accessor read-write))
    ;;; Si tiene ascensor o no
    (multislot ascensor
        (type SYMBOL)
        (create-accessor read-write))
    ;;; Si tiene calefacción o no
    (multislot calefacción
        (type SYMBOL)
        (create-accessor read-write))
    ;;; Cantidad de consumo
    (multislot consumo
        (type FLOAT)
        (create-accessor read-write))
    ;;; El estado de los electrodomesticos de la vivienda: {buen estado, mal estado...}
    (multislot electrodomesticos
        (type STRING)
        (create-accessor read-write))
    ;;; Cantidad de emisiones
    (multislot emisiones
        (type FLOAT)
        (create-accessor read-write))
    ;;; Estado en el que se encuentra la vivienda
    (multislot estado
        (type STRING)
        (create-accessor read-write))
    ;;; Si se dispone de garaje o plaza de aparcamiento
    (multislot garaje
        (type SYMBOL)
        (create-accessor read-write))
    ;;; Si hay gas en la vivienda: butano, gas natural o nada
    (multislot gas
        (type STRING)
        (create-accessor read-write))
    ;;; Si tiene luz o no
    (multislot luz
        (type SYMBOL)
        (create-accessor read-write))
    ;;; Si hay piscina o no
    (multislot piscina
        (type SYMBOL)
        (create-accessor read-write))
    ;;; Superficie en m2 de la vivienda
    (multislot superficie
        (type FLOAT)
        (create-accessor read-write))
    ;;; Si hay terraza o no
    (multislot terraza
        (type SYMBOL)
        (create-accessor read-write))
)

(defclass Plurifamiliar "Clase de Plurifamiliar, Sub-clase de Vivienda (Vivienda Plurifamiliar)"
    (is-a Vivienda)
    (role concrete)
    (pattern-match reactive)
    ;;; Altura de la vivienda plurifamiliar: 1a planta, atico, entresuelo, planta baja...
    (multislot altura
        (type STRING)
        (create-accessor read-write))
    ;;; Tipo de vivienda: {Independiente, adosado, pareado, apartamento, piso, duplex, estudio}
    (multislot tipo_viv
        (type STRING)
        (create-accessor read-write))
)

(defclass Unifamiliar "Clase de Unifamiliar, Sub-clase de Vivienda (Vivienda Unifamiliar)"
    (is-a Vivienda)
    (role concrete)
    (pattern-match reactive)
    ;;; Tipo de vivienda: {Independiente, adosado, pareado, apartamento, piso, duplex, estudio}
    (multislot tipo_viv
        (type STRING)
        (create-accessor read-write))
)

(defclass Baño
    (is-a USER)
    (role concrete)
    (pattern-match reactive)
    ;;; Forma parte de:
    (multislot parte_de
        (type INSTANCE)
        (create-accessor read-write))
    ;;; Tiene o no bañera
    (multislot bañera
        (type SYMBOL)
        (create-accessor read-write))
    ;;; Tiene o no bidet
    (multislot bidet
        (type SYMBOL)
        (create-accessor read-write))
    ;;; Tiene o no ducha
    (multislot ducha
        (type SYMBOL)
        (create-accessor read-write))
    ;;; Tiene o no lavabo
    (multislot lavabo
        (type SYMBOL)
        (create-accessor read-write))
)

(defclass Cocina
    (is-a USER)
    (role concrete)
    (pattern-match reactive)
    ;;; Forma parte de:
    (multislot parte_de
        (type INSTANCE)
        (create-accessor read-write))
    ;;; Si tiene fogones o no
    (multislot fogones
        (type STRING)
        (create-accessor read-write))
    ;;; Tiene o no horno
    (multislot horno
        (type SYMBOL)
        (create-accessor read-write))
    ;;; Si tiene lavavajillas o no
    (multislot lavavajillas
        (type SYMBOL)
        (create-accessor read-write))
    ;;; Si tiene nevera o no
    (multislot nevera
        (type SYMBOL)
        (create-accessor read-write))
    ;;; Tipo de cocina: {en 'u', en 'l', en isla, en paralelo, en linea}
    (multislot tipo_co
        (type STRING)
        (create-accessor read-write))
    ;;; Si tiene vajilla o no
    (multislot vajilla
        (type SYMBOL)
        (create-accessor read-write))
)

(defclass Dormitorio "Clase de Dormitorio"
    (is-a USER)
    (role concrete)
    (pattern-match reactive)
    ;;; Forma parte de:
    (multislot parte_de
        (type INSTANCE)
        (create-accessor read-write))
    ;;; Tipo de dormitorio: {simple, doble}
    (multislot tipo_do
        (type STRING)
        (create-accessor read-write))
)

(defclass Localización "Clase de Localización"
    (is-a USER)
    (role concrete)
    (pattern-match reactive)
    ;;; Ciudad de la localización
    (multislot ciudad
        (type STRING)
        (create-accessor read-write))
    ;;; Dirección de la localización
    (multislot direccion
        (type STRING)
        (create-accessor read-write))
    ;;; Distrito de la localización
    (multislot distrito
        (type STRING)
        (create-accessor read-write))
    ;;; Latitud de la localización
    (multislot latitud
        (type FLOAT)
        (create-accessor read-write))
    ;;; Longitud de la localización
    (multislot longitud
        (type FLOAT)
        (create-accessor read-write))
)

(defclass Oferta_Alquiler "Clase de Oferta de Alquiler"
    (is-a USER)
    (role concrete)
    (pattern-match reactive)
    ;;; Una oferta de una
    (multislot oferta_de
        (type INSTANCE)
        (create-accessor read-write))
    ;;; Fianza de la vivienda
    (multislot fianza
        (type FLOAT)
        (create-accessor read-write))
    ;;; Iluminación de la vivienda
    (multislot iluminación
        (type STRING)
        (create-accessor read-write))
    ;;; Si se tiene permiso de mascotas
    (multislot permiso_mascotas
        (type SYMBOL)
        (create-accessor read-write))
    ;;; Precio maximo dispuesto a pagar
    (multislot precio_max
        (type FLOAT)
        (create-accessor read-write))
    ;;; Precio minimo a pagar de la persona
    (multislot precio_mim
        (type FLOAT)
        (create-accessor read-write))
    ;;; Si se busca un piso soleado
    (multislot soleado
        (type STRING)
        (create-accessor read-write))
    ;;; Las vistas de la vivienda si son: {buenas, malas...}
    (multislot vistas
        (type STRING)
        (create-accessor read-write))
)

(defclass Persona "Clase de Persona"
    (is-a USER)
    (role concrete)
    (pattern-match reactive)
    ;;; Se solicita una
    (multislot solicita
        (type INSTANCE)
        (create-accessor read-write))
    ;;; DNI de la persona
    (single-slot NIF
        (type STRING)
        (create-accessor read-write))
    ;;; Apellidos de la persona
    (single-slot apellidos
        (type STRING)
        (create-accessor read-write))
    ;;; Si la persona tiene coche, y cantidad de coches tiene
    (multislot coche
        (type STRING)
        (create-accessor read-write))
    ;;; E-mail de la persona
    (multislot e-mail
        (type STRING)
        (create-accessor read-write))
    ;;; Edad de la persona
    (single-slot edad
        (type INTEGER)
        (create-accessor read-write))
    ;;; Estado civil de la persona: casado, soltero...
    (multislot estado_civil
        (type STRING)
        (create-accessor read-write))
    ;;; Si es estudiante
    (multislot estudiante
        (type SYMBOL)
        (create-accessor read-write))
    ;;; Si tiene familia rica
    (single-slot familia_rica
        (type SYMBOL)
        (create-accessor read-write))
    ;;; Número de hijos que tiene
    (multislot hijos
        (type INTEGER)
        (create-accessor read-write))
    ;;; Si quiere vivir solo, o vivirá con sus padres/mas gente
    (multislot independiente
        (type SYMBOL)
        (create-accessor read-write))
    ;;; Si la persona tiene mascotas o no
    (multislot mascota
        (type SYMBOL)
        (create-accessor read-write))
    ;;; Nombre de la persona
    (single-slot nombre
        (type STRING)
        (create-accessor read-write))
    ;;; Numero de viviendas que tiene en su posesión
    (multislot num_viviendas
        (type INTEGER)
        (create-accessor read-write))
    ;;; Sueldo de la persona
    (multislot sueldo
        (type FLOAT)
        (create-accessor read-write))
    ;;; Telefono de la persona
    (multislot telefono
        (type STRING)
        (create-accessor read-write))
    ;;; Si trabaja o no, y si tene mas de un trabajo
    (single-slot trabajo
        (type STRING)
        (create-accessor read-write))
)

(defclass Servicio "Clase de Servicio"
    (is-a USER)
    (role concrete)
    (pattern-match reactive)
    ;;; Esta localizado/a en:
    (multislot localizada/o_en
        (type INSTANCE)
        (create-accessor read-write))
    ;;; Tipo de servicio: {colegios, zonas verdes, metro, ocio nocturno...}
    (multislot tipo_ser
        (type STRING)
        (create-accessor read-write))
)

(definstances instances
)
