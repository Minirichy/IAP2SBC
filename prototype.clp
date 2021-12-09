;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;; CODIGO GENERADO CON PROTEGE ;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;; ONTOLOGIA ;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

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
    (multislot localizado_en
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
    (multislot balcon
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
    ;;; Si se tiene permiso de mascotas
    (multislot permiso_mascotas
        (type SYMBOL)
        (create-accessor read-write))
    ;;; Si hay piscina o no
    (multislot piscina
        (type SYMBOL)
        (create-accessor read-write))
    ;;; Si se busca un piso soleado
    (multislot soleado
        (type STRING)
        (create-accessor read-write))
    ;;; Superficie en m2
    (multislot superficie
        (type FLOAT)
        (create-accessor read-write))
    ;;; Si hay terraza o no
    (multislot terraza
        (type SYMBOL)
        (create-accessor read-write))
    ;;; Las vistas de la vivienda si son: {buenas, malas...}
    (multislot vistas
        (type STRING)
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
    (multislot jardi
        (type SYMBOL)
        (create-accessor read-write))
    (multislot plantes
        (type INTEGER)
        (create-accessor read-write))
    (multislot seguretat
        (type SYMBOL)
        (create-accessor read-write))
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
    ;;; Superficie en m2
    (multislot superficie
        (type FLOAT)
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
    ;;; Superficie en m2
    (multislot superficie
        (type FLOAT)
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
    ;;; Superficie en m2
    (multislot superficie
        (type FLOAT)
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
    ;; Precio de la vivienda
    (multislot precio
        (type FLOAT)
        (create-accessor read-write))
    ;;; Fianza de la vivienda
    (multislot fianza
        (type FLOAT)
        (create-accessor read-write))
    ;;; Iluminación de la vivienda
    (multislot iluminación
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
    ;;;Esta parte se ha cambiado de la ontologia original
    ;;;NOTA : HAY QUE CAMBIAR multislots POR slots EN GENERAL
        ;;; Precio maximo dispuesto a pagar
    (slot precio-max
        (type FLOAT)
        (create-accessor read-write))
    ;;; Precio minimo a pagar de la persona
    (slot precio-min
        (type FLOAT)
        (create-accessor read-write))
    ;;; Problema de movilidad
    (slot movilidad-reducida
        (type STRING)
        (create-accessor read-write))
    ;;; Prefiere la casa amueblada
    (slot prefiere-amueblada
        (type STRING)
        (create-accessor read-write))
)

(defclass Servicio "Clase de Servicio"
    (is-a USER)
    (role concrete)
    (pattern-match reactive)
    ;;; Esta localizado/a en:
    (multislot localizado_en
        (type INSTANCE)
        (create-accessor read-write))
    ;;; Tipo de servicio: {colegios, zonas verdes, metro, ocio nocturno...}
    (multislot tipo_ser
        (type STRING)
        (create-accessor read-write))
)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;; FIN ONTOLOGIA ;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;; INSTANCIAS ;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(definstances instances
    ([Casa_Pedralbes] of Unifamiliar
         (jardi  "true")
         (plantes  3)
         (seguretat  "true")
         (tipo_viv  "independent")
         (localizado_en  [Loc_Pedralbes])
         (acceso_mov_red  "true")
         (agua  "true")
         (aire  "true")
         (amueblada  "false")
         (ascensor  "false")
         (balcon  "false")
         (calefacción  "electrica")
         (consumo  120)
         (electrodomesticos  "bon estat")
         (emisiones  20)
         (estado  "buen estado")
         (garaje  "true")
         (gas  "natural")
         (luz  "true")
         (permiso_mascotas  "true")
         (piscina  "true")
         (soleado  "mañana")
         (superficie  450)
         (terraza  "true")
         (vistas  "no")
    )

    ([Casa_Vall_Hebron] of Unifamiliar
         (jardi  "false")
         (plantes  2)
         (seguretat  "false")
         (tipo_viv  "adosat")
         (localizado_en  [Loc_Vall_Hebron])
         (acceso_mov_red  "true")
         (agua  "true")
         (aire  "true")
         (amueblada  "false")
         (ascensor  "false")
         (balcon  "false")
         (calefacción  "electrica")
         (consumo  115)
         (electrodomesticos  "buen estado")
         (emisiones  15)
         (estado  "segunda mano")
         (garaje  "true")
         (gas  "true")
         (luz  "true")
         (permiso_mascotas  "true")
         (piscina  "false")
         (soleado  "todo el dia")
         (superficie  112)
         (terraza  "true")
         (vistas  "no")
    )

    ([Hospital_Clinic] of Servicio
         (localizado_en  [Loc_Clinic])
         (tipo_ser  "hospital")
    )

    ([Inspira_Fitness] of Servicio
         (localizado_en  [Loc_Inspira_Fitness])
         (tipo_ser  "centro deportivo")
    )

    ([Loc_Clinic] of Localización
         (ciudad  "Barcelona")
         (direccion  "Hospital Clinic de Barcelona")
         (distrito  "Ensanche")
         (latitud  41.39002433905172)
         (longitud  2.152219477245829)
    )

    ([Loc_Gotic] of Localización
         (ciudad  "Barcelona")
         (direccion  "Calle dels Boters")
         (distrito  "Barri Gotic")
         (latitud  41.3843400222245)
         (longitud  2.1743901398656726)
    )

    ([Loc_Inspira_Fitness] of Localización
         (ciudad  "Barcelona")
         (direccion  "Inspira Fitness")
         (distrito  "Les Corts")
         (latitud  41.38573223075913)
         (longitud  2.1383673786021378)
    )

    ([Loc_La_Sagrera] of Localización
         (ciudad  "Barcelona")
         (direccion  "Carrer de Josep Estivill")
         (distrito  "La Sagrera")
         (latitud  41.41863939948872)
         (longitud  2.188412224528191)
    )

    ([Loc_PalauReialMetro] of Localización
         (ciudad  "Barcelona")
         (direccion  "Palau Reial")
         (distrito  "Pedralbes")
         (latitud  41.386511047270105)
         (longitud  2.1180533494161837)
    )

    ([Loc_Parc_del_Clot] of Localización
         (ciudad  "Barcelona")
         (direccion  "Parc del Clot")
         (distrito  "El Clot")
         (latitud  41.40928888690429)
         (longitud  2.1902893713058225)
    )

    ([Loc_Pedralbes] of Localización
         (ciudad  "Barcelona")
         (direccion  "Avenida d'Esplugues")
         (distrito  "Pedralbes")
         (latitud  41.388995658309135)
         (longitud  2.1074592552086995)
    )

    ([Loc_Pis_Dreta_Eixample] of Localización
         (ciudad  "Barcelona")
         (direccion  "Calle de la Diputació S/N")
         (distrito  "Dreta Eixample")
         (latitud  41.38884977906806)
         (longitud  2.164990797448728)
    )

    ([Loc_Prats_de_Molló] of Localización
         (ciudad  "Barcelona")
         (direccion  "Carrer Prats de Molló")
         (distrito  "Sant Gervasi")
         (latitud  41.40160155596814)
         (longitud  2.137378239866304)
    )

    ([Loc_Razzmataz] of Localización
         (ciudad  "Barcelona")
         (direccion  "Razzmataz")
         (distrito  "Marina")
         (latitud  41.39813240039719)
         (longitud  2.1911555525473085)
    )

    ([Loc_Sants] of Localización
         (ciudad  "Barcelona")
         (direccion  "calle de Tinent Flomesta")
         (distrito  "Sants")
         (latitud  41.3743251055274)
         (longitud  2.131847111029593)
    )

    ([Loc_UPC_Campus_Nord] of Localización
         (ciudad  "Barcelona")
         (direccion  "Carrer de Jordi Girona")
         (distrito  "Pedralbes")
         (latitud  41.38806305467622)
         (longitud  2.114101414317475)
    )

    ([Loc_Vall_Hebron] of Localización
         (ciudad  "Barcelona")
         (direccion  "Avenida Marquès de Castellbell")
         (distrito  "Vall d'Hebron")
         (latitud  41.42956685631291)
         (longitud  2.155853666216487)
    )

    ([Parc_del_Clot] of Servicio
         (localizado_en  [Loc_Parc_del_Clot])
         (tipo_ser  "parque natural")
    )

    ([Pis_Dreta_Eixample] of Plurifamiliar
         (altura  "3a planta")
         (tipo_viv  "Piso")
         (localizado_en  [Loc_Pis_Dreta_Eixample])
         (acceso_mov_red  "false")
         (agua  "true")
         (aire  "true")
         (amueblada  "true")
         (ascensor  "true")
         (balcon  "true")
         (calefacción  "true")
         (consumo  100)
         (electrodomesticos  "buen estado")
         (emisiones  36)
         (estado  "bon estat")
         (garaje  "false")
         (gas  "electrica")
         (luz  "true")
         (permiso_mascotas  "true")
         (piscina  "true")
         (soleado  "mañana")
         (superficie  90)
         (terraza  "true")
         (vistas  "no")
    )

    ([Pis_Gotic] of Plurifamiliar
         (altura  "2a planta")
         (tipo_viv  "piso")
         (localizado_en  [Pis_Gotic])
         (acceso_mov_red  "false")
         (agua  "true")
         (aire  "false")
         (amueblada  "true")
         (ascensor  "false")
         (balcon  "true")
         (calefacción  "electrica")
         (consumo  216)
         (electrodomesticos  "buen estado")
         (emisiones  44)
         (estado  "buen estado")
         (garaje  "true")
         (gas  "butano")
         (luz  "true")
         (permiso_mascotas  "false")
         (piscina  "false")
         (soleado  "mañana")
         (superficie  128)
         (terraza  "false")
         (vistas  "no")
    )

    ([Pis_La_Sagrera] of Vivienda
         (localizado_en  [Loc_La_Sagrera])
         (acceso_mov_red  "false")
         (agua  "true")
         (aire  "false")
         (amueblada  "false")
         (ascensor  "true")
         (balcon  "true")
         (calefacción  "electrica")
         (consumo  150)
         (electrodomesticos  "buen estado")
         (emisiones  15)
         (estado  "buen estado")
         (garaje  "false")
         (gas  "butano")
         (luz  "true")
         (permiso_mascotas  "true")
         (piscina  "false")
         (soleado  "no mucho")
         (superficie  88)
         (terraza  "true")
         (vistas  "ciutat")
    )

    ([Pis_Sant_Gervasi] of Plurifamiliar
         (altura  "atico")
         (tipo_viv  "apartamento")
         (localizado_en  [Loc_Prats_de_Molló])
         (acceso_mov_red  "false")
         (agua  "true")
         (aire  "true")
         (amueblada  "true")
         (ascensor  "true")
         (balcon  "false")
         (calefacción  "electrica")
         (consumo  90)
         (electrodomesticos  "buen estado")
         (emisiones  12)
         (estado  "buen estado")
         (garaje  "true")
         (gas  "natural")
         (luz  "true")
         (permiso_mascotas  "false")
         (piscina  "false")
         (soleado  "mañana")
         (superficie  85)
         (terraza  "true")
         (vistas  "buenas")
    )

    ([Pis_Sants] of Plurifamiliar
         (altura  "atico")
         (tipo_viv  "piso")
         (localizado_en  [Loc_La_Sagrera])
         (acceso_mov_red  "false")
         (agua  "true")
         (aire  "false")
         (amueblada  "false")
         (ascensor  "true")
         (balcon  "false")
         (calefacción  "electrica")
         (consumo  120)
         (electrodomesticos  "no")
         (emisiones  20)
         (estado  "segunda mano")
         (garaje  "false")
         (gas  "natural")
         (luz  "true")
         (permiso_mascotas  "true")
         (piscina  "false")
         (soleado  "todo el dia")
         (superficie  60)
         (terraza  "true")
         (vistas  "buenas")
    )

    ([Razzmataz] of Servicio
         (localizado_en  [Loc_Razzmataz])
         (tipo_ser  "discoteca")
    )

    ([UPC-Campus_Nord] of Servicio
         (localizado_en  [Loc_UPC_Campus_Nord])
         (tipo_ser  "universidad")
    )

    ([Baño-La_Sagrera] of Baño
         (parte_de  [Pis_La_Sagrera])
         (bañera  "false")
         (bidet  "true")
         (ducha  "true")
         (lavabo  "true")
         (superficie  7)
    )

    ([Baño-Sants] of Baño
         (parte_de  [Pis_Sants])
         (bañera  "true")
         (bidet  "true")
         (ducha  "false")
         (lavabo  "true")
         (superficie  8)
    )

    ([Baño-Vall_Hebron] of Baño
         (parte_de  [Casa_Vall_Hebron])
         (bañera  "true")
         (bidet  "true")
         (ducha  "true")
         (lavabo  "true")
         (superficie  20)
    )

    ([Baño-Sant_Gervasi] of Baño
         (parte_de  [Pis_Sant_Gervasi])
         (bañera  "true")
         (bidet  "true")
         (ducha  "false")
         (lavabo  "true")
         (superficie  10)
    )

    ([Baño_1-Dreta_Eixample] of Baño
         (parte_de  [Pis_Dreta_Eixample])
         (bañera  "false")
         (bidet  "false")
         (ducha  "true")
         (lavabo  "true")
         (superficie  5)
    )

    ([Baño_1-Gotic] of Baño
         (parte_de  [Pis_Gotic])
         (bañera  "true")
         (bidet  "true")
         (ducha  "true")
         (lavabo  "true")
         (superficie  10)
    )

    ([Baño_1-Pedralbes] of Baño
         (parte_de  [Casa_Pedralbes])
         (bañera  "true")
         (bidet  "true")
         (ducha  "true")
         (lavabo  "true")
         (superficie  15)
    )

    ([Baño_2-Dreta_Eixample] of Baño
         (parte_de  [Pis_Dreta_Eixample])
         (bañera  "false")
         (bidet  "false")
         (ducha  "true")
         (lavabo  "true")
         (superficie  5)
    )

    ([Baño_2-Gotic] of Baño
         (parte_de  [Pis_Gotic])
         (bañera  "false")
         (bidet  "false")
         (ducha  "true")
         (lavabo  "true")
         (superficie  8)
    )

    ([Baño_2-Pedralbes] of Baño
         (parte_de  [Casa_Pedralbes])
         (bañera  "false")
         (bidet  "false")
         (ducha  "true")
         (lavabo  "true")
         (superficie  15)
    )

    ([Baño_3-Gotic] of Baño
         (parte_de  [Pis_Gotic])
         (bañera  "false")
         (bidet  "false")
         (ducha  "false")
         (lavabo  "true")
         (superficie  5)
    )

    ([Baño_3-Pedralbes] of Baño
         (parte_de  [Casa_Pedralbes])
         (bañera  "false")
         (bidet  "true")
         (ducha  "true")
         (lavabo  "true")
         (superficie  10)
    )

    ([Baño_4-Pedralbes] of Baño
         (parte_de  [Casa_Pedralbes])
         (bañera  "false")
         (bidet  "false")
         (ducha  "false")
         (lavabo  "true")
         (superficie  5)
    )

    ([Cocina-Gotic] of Cocina
         (parte_de  [Pis_Gotic])
         (fogones  "true")
         (horno  "true")
         (lavavajillas  "true")
         (nevera  "true")
         (superficie  15)
         (tipo_co  "en paralelo")
         (vajilla  "false")
    )

    ([Cocina-La_Sagrera] of Cocina
         (parte_de  [Pis_La_Sagrera])
         (fogones  "true")
         (horno  "true")
         (lavavajillas  "false")
         (nevera  "true")
         (superficie  10)
         (tipo_co  "en linea")
         (vajilla  "false")
    )

    ([Cocina-Pedralbes] of Cocina
         (parte_de  [Casa_Pedralbes])
         (fogones  "true")
         (horno  "true")
         (lavavajillas  "true")
         (nevera  "true")
         (superficie  30)
         (tipo_co  "isla")
         (vajilla  "false")
    )

    ([Cocina-Sant_Gervasi] of Cocina
         (parte_de  [Pis_Sant_Gervasi])
         (fogones  "true")
         (horno  "true")
         (lavavajillas  "false")
         (nevera  "true")
         (superficie  15)
         (tipo_co  "paralelo")
         (vajilla  "true")
    )

    ([Cocina-Sants] of Cocina
         (parte_de  [Pis_Sants])
         (fogones  "true")
         (horno  "true")
         (lavavajillas  "false")
         (nevera  "false")
         (superficie  10)
         (tipo_co  "en linea")
         (vajilla  "false")
    )

    ([Cocina-Vall_Hebron] of Cocina
         (parte_de  [Casa_Vall_Hebron])
         (fogones  "true")
         (horno  "true")
         (lavavajillas  "true")
         (nevera  "true")
         (superficie  20)
         (tipo_co  "en 'l'")
         (vajilla  "true")
    )

    ([Cocina_1-Dreta_Eixample] of Cocina
         (parte_de  [Pis_Dreta_Eixample])
         (fogones  "true")
         (horno  "true")
         (lavavajillas  "true")
         (nevera  "true")
         (superficie  15)
         (tipo_co  "en linea")
         (vajilla  "true")
    )

    ([Dormitorio_1-Dreta_Eixample] of Dormitorio
         (parte_de  [Pis_Dreta_Eixample])
         (superficie  20)
         (tipo_do  "doble")
    )

    ([Dormitorio_1-Gotic] of Dormitorio
         (parte_de  [Pis_Gotic])
         (superficie  23)
         (tipo_do  "doble")
    )

    ([Dormitorio_1-La_Sagrera] of Dormitorio
         (parte_de  [Pis_La_Sagrera])
         (superficie  20)
         (tipo_do  "doble")
    )

    ([Dormitorio_1-Pedralbes] of Dormitorio
         (parte_de  [Casa_Pedralbes])
         (superficie  30)
         (tipo_do  "doble")
    )

    ([Dormitorio_1-Sant_Gervasi] of Dormitorio
         (parte_de  [Pis_Sant_Gervasi])
         (superficie  20)
         (tipo_do  "doble")
    )

    ([Dormitorio_1-Sants] of Dormitorio
         (parte_de  [Pis_Sants])
         (superficie  10)
         (tipo_do  "individual")
    )

    ([Dormitorio_1-Vall_Hebron] of Dormitorio
         (parte_de  [Casa_Vall_Hebron])
         (superficie  30)
         (tipo_do  "doble")
    )

    ([Dormitorio_2-Dreta_Eixample] of Dormitorio
         (parte_de  [Pis_Dreta_Eixample])
         (superficie  15)
         (tipo_do  "doble")
    )

    ([Dormitorio_2-Gotic] of Dormitorio
         (parte_de  [Pis_Gotic])
         (superficie  18)
         (tipo_do  "doble")
    )

    ([Dormitorio_2-La_Sagrera] of Dormitorio
         (parte_de  [Pis_La_Sagrera])
         (superficie  15)
         (tipo_do  "individual")
    )

    ([Dormitorio_2-Pedralbes] of Dormitorio
         (parte_de  [Casa_Pedralbes])
         (superficie  30)
         (tipo_do  "doble")
    )

    ([Dormitorio_2-Sant_Gervasi] of Dormitorio
         (parte_de  [Pis_Sant_Gervasi])
         (superficie  10)
         (tipo_do  "individual")
    )

    ([Dormitorio_2-Sants] of Dormitorio
         (parte_de  [Pis_Sants])
         (superficie  10)
         (tipo_do  "individual")
    )

    ([Dormitorio_2-Vall_Hebron] of Dormitorio
         (parte_de  [Casa_Vall_Hebron])
         (superficie  20)
         (tipo_do  "doble")
    )

    ([Dormitorio_3-Dreta_Eixample] of Dormitorio
         (parte_de  [Pis_Dreta_Eixample])
         (superficie  10)
         (tipo_do  "simple")
    )

    ([Dormitorio_3-Gotic] of Dormitorio
         (parte_de  [Pis_Gotic])
         (superficie  10)
         (tipo_do  "individual")
    )

    ([Dormitorio_3-La_Sagrera] of Dormitorio
         (parte_de  [Pis_La_Sagrera])
         (superficie  10)
         (tipo_do  "individual")
    )

    ([Dormitorio_3-Pedralbes] of Dormitorio
         (parte_de  [Casa_Pedralbes])
         (superficie  25)
         (tipo_do  "doble")
    )

    ([Dormitorio_4-La_Sagrera] of Dormitorio
         (parte_de  [Pis_La_Sagrera])
         (superficie  10)
         (tipo_do  "individual")
    )

    ([Dormitorio_4-Pedralbes] of Dormitorio
         (parte_de  [Casa_Pedralbes])
         (superficie  45)
         (tipo_do  "doble")
    )

    ([Dormitorio_5-Pedralbes] of Dormitorio
         (parte_de  [Casa_Pedralbes])
         (superficie  20)
         (tipo_do  "individual")
    )

    ([Metro-L3-PalauReial] of Servicio
         (localizado_en  [Loc_PalauReialMetro])
         (tipo_ser  "metro")
    )

)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;; FIN INSTANCIAS ;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; FIN CODIGO GENERADO CON PROTEGE ;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(defmodule MAIN (export ?ALL))

(defclass Recomendacion 
	(is-a USER)
	(role concrete)
	(slot oferta
		(type INSTANCE)
		(create-accessor read-write))
	(slot clasificacion
		(type SYMBOL)
		(create-accessor read-write))
)

;TODO output mejor
(defmessage-handler Oferta_Alquiler imprimir ()
	(format t "Precio: %d" ?self:precio)
	(printout t crlf)
)

(defmessage-handler MAIN::Recomendacion imprimir ()
	(format t "Nivel de recomendacion: %s" ?self:clasificacion)
	(printout t crlf)
	(printout t "Oferta: " crlf)
	(send ?self:oferta imprimir)
)

(defrule regla_inicial "regla inicial"
	=>
	(printout t "*** Bienvenido al sistema de recomendacion de alquileres ***" crlf)
	(focus preguntas)
)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;; MODULO PREGUNTAS ;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(defmodule preguntas
	 (export ?ALL)
	 (import MAIN ?ALL)
)

;; TIPOS DE PREGUNTA

(deffunction pregunta (?pregunta)
	(format t "%s" ?pregunta)
 	(read)
)

(deffunction pregunta-binaria (?pregunta)
	 (bind ?respuesta (pregunta ?pregunta))
	 (if (or (eq (lowcase ?respuesta) si) (eq (lowcase ?respuesta) s))
	 then TRUE
	 else FALSE
))

;; PREGUNTAS AL USUARIO

(defrule preguntas::pregunta-nombre "pregunta al usuario su nombre de usuario"
    (not (Persona))
    =>
    (bind ?nombre (pregunta "Nombre de usario: "))
    (make-instance usuario of Persona (nombre ?nombre))
)

(defrule preguntas::pregunta-edad "pregunta al usuario su edad"
    ?p <- (object (is-a Persona))
    (test (eq (send ?p get-edad) 0))
    =>
    (bind ?new-edad (pregunta "Cuantos años tienes? "))
    (send ?p put-edad ?new-edad)
)

(defrule preguntas::pregunta-amueblada "pregunta al usuario si prefiere vivienda amueblada"
    ?p <- (object (is-a Persona))
    (test (eq (send ?p get-prefiere-amueblada) ""))
    =>
    (bind ?new-am (pregunta-binaria "Prefieres la casa amueblada? "))
    (send ?p put-prefiere-amueblada ?new-am)
)

(defrule preguntas::pregunta-movilidad-reducida "pregunta al usuario si prefiere vivienda amueblada"
    ?p <- (object (is-a Persona))
    (test (eq (send ?p get-movilidad-reducida) ""))
    =>
    (bind ?new-mov (pregunta-binaria "Tienes problemas de movilidad reducida? "))
    (send ?p put-movilidad-reducida ?new-mov)
)

(defrule preguntas::pregunta-precio-min "pregunta al usuario el precio minimo que esta dispuesto a pagar"
    ?p <- (object (is-a Persona))
    (test (eq (send ?p get-precio-min) 0.0))
    =>
    (bind ?new-precio-min (pregunta "Cual es el precio minimo que estarias dispuesto a pagar? "))
    (send ?p put-precio-min ?new-precio-min)
)

(defrule preguntas::pregunta-precio-max "pregunta al usuario el precio maximo que esta dispuesto a pagar"
    ?p <- (object (is-a Persona))
    (test (eq (send ?p get-precio-max) 0.0))
    =>
    (bind ?new-precio-max (pregunta "Cual es el precio maximo que estarias dispuesto a pagar? "))
    (send ?p put-precio-max ?new-precio-max)
)


(defrule preguntas::fin_preguntas "fin de las preguntas, pasa a abstraccion"
    (declare (salience -100)) 
    =>
    (focus abstraccion)
)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;; FIN MODULO PREGUNTAS ;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;; MODULO ABSTRACCION ;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;TODO este modulo por ahora no hace nada, despues veremos si lo necesitamos para 
;inferir y abstraer informacion que no obtenemos directamente de las preguntas

(defmodule abstraccion
     (export ?ALL)
     (import MAIN ?ALL)
)

(defrule abstraccion::regla_inicial_abstraccion "regla inicial abstraccion"
    =>
    (focus asociacion)
)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;; FIN MODULO ABSTRACCION ;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;; MODULO ASOCIACION ;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(defmodule asociacion
     (export ?ALL)
     (import MAIN ?ALL)
)

(defrule asociacion::crear-recomendaciones "Se crean recomendaciones por cada una de las ofertas de alquiler"
    =>
    (bind $?lista (find-all-instances ((?inst Oferta_Alquiler)) TRUE))
    (progn$ (?of ?lista)
        (make-instance (gensym) of Recomendacion (oferta ?of))
    )
    (assert (recomendaciones_creadas))  
)

;TODO: lo de instance-name igual se podria hacer mejor...
(defrule asociacion::movilidad_reducida "Se descartan las recomendaciones no adaptadas a movilidad reducida "
    ?p <- (object (is-a Persona))
    (test (eq (send ?p get-movilidad-reducida) TRUE))
    (recomendaciones_creadas) 
    ?rec <- (object (is-a Recomendacion) (oferta ?ofr))
    ?of  <- (object (is-a Oferta_Alquiler) (oferta_de ?vivo))
    ?viv <- (object (is-a Vivienda) (acceso_mov_red FALSE))
    (test (and (eq (instance-name ?ofr) (instance-name ?of)) (eq (instance-name ?vivo) (instance-name ?viv))))
    =>
    (send ?rec delete)
)

(defrule asociacion::fin_asociacion
    (declare (salience -100)) 
    =>
    (focus refinamiento)
)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;; FIN MODULO ASOCIACION ;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;; MODULO REFINAMIENTO ;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;Usando informacion concreta se clasifican las recomendaciones en "parcialmente adecuado", "adecuado", "muy recomendable" 
;(tambien se pueden descartar recomendaciones)

(defmodule refinamiento
     (export ?ALL)
     (import MAIN ?ALL)
)

(deffunction precio_excesivo(?precio)
    (> ?precio (* (send [usuario] get-precio-max) 2))
)

(deffunction precio_ligeramente_excesivo(?precio)
    (and (not (precio_excesivo ?precio)) (> ?precio (send [usuario] get-precio-max)))
)

;TODO: deberian ser rules distintas para clasificar, pensar como hacerlo
(defrule refinamiento::clasificar_recomendacion "clasifica una recomendacion"
    ?rec <- (object (is-a Recomendacion) (clasificacion nil) (oferta ?of))
    =>
    (bind ?precio_exc (precio_excesivo (send ?of get-precio)))
    (bind ?precio_lig_exc (precio_ligeramente_excesivo (send ?of get-precio)))
    (if ?precio_exc
        then (send ?rec delete)
        else (
            if ?precio_lig_exc 
            then (send ?rec put-clasificacion parcialmente_adecuado)
            else (send ?rec put-clasificacion adecuado)
        )
    )
)

(defrule refinamiento::fin_refinamiento "salir de refinamiento"
    (declare (salience -100))
    =>
    (focus output)
)


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;; FIN MODULO REFINAMIENTO ;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;; MODULO OUTPUT ;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(defmodule output
     (export ?ALL)
     (import MAIN ?ALL)
)

;TODO: Output mas sofisticado?
(defrule output::imprimir_recomendacion "Imprime una recomendacion"
    ?rec <- (object (is-a Recomendacion) (oferta ?of))
    =>
    (send ?rec imprimir)
)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;; FIN MODULO OUTPUT ;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
