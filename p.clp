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
;;; :Date 01/12/2021 13:26:06

;;; ---------------------------------------------------------
;;; OntProba.clp
;;; Translated by owl2clips
;;; Translated to CLIPS from ontology OntProba.owl
;;; :Date 09/12/2021 17:29:15

(defclass Vivienda "Clase de Vivienda"
    (is-a USER)
    (role concrete)
    (pattern-match reactive)
    ;;; Esta localizado/a en:
    (multislot localizado_en
        (type INSTANCE)
        (create-accessor read-write))
    ;;; Si se tiene acceso a movilidad reducida
    (slot acceso_mov_red
        (type SYMBOL)
        (create-accessor read-write))
    ;;; Si se dispone de agua
    (slot agua
        (type SYMBOL)
        (create-accessor read-write))
    ;;; Si tiene aire o no
    (slot aire
        (type SYMBOL)
        (create-accessor read-write))
    ;;; Si la vivienda esta amueblada o no
    (slot amueblada
        (type SYMBOL)
        (create-accessor read-write))
    ;;; Si tiene ascensor o no
    (slot ascensor
        (type SYMBOL)
        (create-accessor read-write))
    (slot balcon
        (type SYMBOL)
        (create-accessor read-write))
    ;;; Si tiene calefacción o no
    (slot calefacción
        (type SYMBOL)
        (create-accessor read-write))
    ;;; Cantidad de consumo
    (slot consumo
        (type FLOAT)
        (create-accessor read-write))
    ;;; El estado de los electrodomesticos de la vivienda: {buen estado, mal estado...}
    (slot electrodomesticos
        (type STRING)
        (create-accessor read-write))
    ;;; Cantidad de emisiones
    (slot emisiones
        (type FLOAT)
        (create-accessor read-write))
    ;;; Estado en el que se encuentra la vivienda
    (slot estado
        (type STRING)
        (create-accessor read-write))
    ;;; Si se dispone de garaje o plaza de aparcamiento
    (slot garaje
        (type SYMBOL)
        (create-accessor read-write))
    ;;; Si hay gas en la vivienda: butano, gas natural o nada
    (slot gas
        (type STRING)
        (create-accessor read-write))
    ;;; Iluminación de la vivienda
    (slot iluminación
        (type STRING)
        (create-accessor read-write))
    ;;; Si tiene luz o no
    (slot luz
        (type SYMBOL)
        (create-accessor read-write))
    ;;; Si se tiene permiso de mascotas
    (slot permiso_mascotas
        (type SYMBOL)
        (create-accessor read-write))
    ;;; Si hay piscina o no
    (slot piscina
        (type SYMBOL)
        (create-accessor read-write))
    ;;; Si se busca un piso soleado
    (slot soleado
        (type STRING)
        (create-accessor read-write))
    ;;; Superficie en m2
    (slot superficie
        (type FLOAT)
        (create-accessor read-write))
    ;;; Si hay terraza o no
    (slot terraza
        (type SYMBOL)
        (create-accessor read-write))
    ;;; Las vistas de la vivienda si son: {buenas, malas...}
    (slot vistas
        (type STRING)
        (create-accessor read-write))
)

(defclass Plurifamiliar "Clase de Plurifamiliar, Sub-clase de Vivienda - Vivienda Plurifamiliar"
    (is-a Vivienda)
    (role concrete)
    (pattern-match reactive)
    ;;; Altura de la vivienda plurifamiliar: 1a planta, atico, entresuelo, planta baja...
    (slot altura
        (type STRING)
        (create-accessor read-write))
    ;;; Tipo de vivienda: {Independiente, adosado, pareado, apartamento, piso, duplex, estudio}
    (slot tipo_viv
        (type STRING)
        (create-accessor read-write))
)

(defclass Unifamiliar "Clase de Unifamiliar, Sub-clase de Vivienda - Vivienda Unifamiliar"
    (is-a Vivienda)
    (role concrete)
    (pattern-match reactive)
    (slot jardi
        (type SYMBOL)
        (create-accessor read-write))
    (slot plantes
        (type INTEGER)
        (create-accessor read-write))
    (slot seguretat
        (type SYMBOL)
        (create-accessor read-write))
    ;;; Tipo de vivienda: {Independiente, adosado, pareado, apartamento, piso, duplex, estudio}
    (slot tipo_viv
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
    (slot bañera
        (type SYMBOL)
        (create-accessor read-write))
    ;;; Tiene o no bidet
    (slot bidet
        (type SYMBOL)
        (create-accessor read-write))
    ;;; Tiene o no ducha
    (slot ducha
        (type SYMBOL)
        (create-accessor read-write))
    ;;; Tiene o no lavabo
    (slot lavabo
        (type SYMBOL)
        (create-accessor read-write))
    ;;; Superficie en m2
    (slot superficie
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
    (slot cocina_equipada
        (type SYMBOL)
        (create-accessor read-write))
    ;;; Superficie en m2
    (slot superficie
        (type FLOAT)
        (create-accessor read-write))
    ;;; Tipo de cocina: {en 'u', en 'l', en isla, en paralelo, en linea}
    (slot tipo_co
        (type STRING)
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
    (slot superficie
        (type FLOAT)
        (create-accessor read-write))
    ;;; Tipo de dormitorio: {simple, doble}
    (slot tipo_do
        (type STRING)
        (create-accessor read-write))
)

(defclass Localización "Clase de Localización"
    (is-a USER)
    (role concrete)
    (pattern-match reactive)
    ;;; Ciudad de la localización
    (slot ciudad
        (type STRING)
        (create-accessor read-write))
    ;;; Dirección de la localización
    (slot direccion
        (type STRING)
        (create-accessor read-write))
    ;;; Distrito de la localización
    (slot distrito
        (type STRING)
        (create-accessor read-write))
    ;;; Latitud de la localización
    (slot latitud
        (type FLOAT)
        (create-accessor read-write))
    ;;; Longitud de la localización
    (slot longitud
        (type FLOAT)
        (create-accessor read-write))
)

(defclass Oferta_Alquiler "Clase de Oferta de Alquiler"
    (is-a USER)
    (role concrete)
    (pattern-match reactive)
    ;;; Una oferta de una
    (slot oferta_de
        (type INSTANCE)
        (create-accessor read-write))
    ;;; Precio
    (slot precio
        (type FLOAT)
        (create-accessor read-write))
    ;;; Fianza de la vivienda
    (slot fianza
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
    (slot tipo_ser
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
         (jardi  TRUE)
         (plantes  3)
         (seguretat  TRUE)
         (tipo_viv  "independent")
         (localizado_en  [Loc_Pedralbes])
         (acceso_mov_red  TRUE)
         (agua  TRUE)
         (aire  TRUE)
         (amueblada  FALSE)
         (ascensor  FALSE)
         (balcon  FALSE)
         (calefacción  "electrica")
         (consumo  120)
         (electrodomesticos  "bon estat")
         (emisiones  20)
         (estado  "buen estado")
         (garaje  TRUE)
         (gas  "natural")
         (iluminación  "natural")
         (luz  TRUE)
         (permiso_mascotas  TRUE)
         (piscina  TRUE)
         (soleado  "mañana")
         (superficie  450)
         (terraza  TRUE)
         (vistas  "no")
    )

    ([Casa_Vall_Hebron] of Unifamiliar
         (jardi  FALSE)
         (plantes  2)
         (seguretat  FALSE)
         (tipo_viv  "adosat")
         (localizado_en  [Loc_Vall_Hebron])
         (acceso_mov_red  TRUE)
         (agua  TRUE)
         (aire  TRUE)
         (amueblada  FALSE)
         (ascensor  FALSE)
         (balcon  FALSE)
         (calefacción  "electrica")
         (consumo  115)
         (electrodomesticos  "buen estado")
         (emisiones  15)
         (estado  "segunda mano")
         (garaje  TRUE)
         (gas  TRUE)
         (iluminación  "natural")
         (luz  TRUE)
         (permiso_mascotas  TRUE)
         (piscina  FALSE)
         (soleado  "todo el dia")
         (superficie  112)
         (terraza  TRUE)
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

    ([Oferta_1-Sant_Gervasi] of Oferta_Alquiler
         (oferta_de  [Pis_Sant_Gervasi])
         (precio  1750)
         (fianza  "2 meses")
    )

    ([Oferta_2-Sants] of Oferta_Alquiler
         (oferta_de  [Pis_Sants])
         (precio  1050)
         (fianza  "1 mes")
    )

    ([Oferta_3-La_Sagrera] of Oferta_Alquiler
         (oferta_de  [Pis_La_Sagrera])
         (precio  900)
         (fianza  "1 mes")
    )

    ([Oferta_4-Gotic] of Oferta_Alquiler
         (oferta_de  [Pis_Gotic])
         (precio  2250)
         (fianza  "2 meses")
    )

    ([Oferta_5-Dreta_Eixample] of Oferta_Alquiler
         (oferta_de  [Pis_Dreta_Eixample])
         (precio  2100)
         (fianza  "3 meses")
    )

    ([Oferta_6-Pedralbes] of Oferta_Alquiler
         (oferta_de  [Casa_Pedralbes])
         (precio  6500)
         (fianza  "1 mes")
    )

    ([Oferta_7-Vall_Hebron] of Oferta_Alquiler
         (oferta_de  [Casa_Vall_Hebron])
         (precio  1250)
         (fianza  "2 meses")
    )

    ([Parc_del_Clot] of Servicio
         (localizado_en  [Loc_Parc_del_Clot])
         (tipo_ser  "parque natural")
    )

    ([Pis_Dreta_Eixample] of Plurifamiliar
         (altura  "3a planta")
         (tipo_viv  "Piso")
         (localizado_en  [Loc_Pis_Dreta_Eixample])
         (acceso_mov_red  FALSE)
         (agua  TRUE)
         (aire  TRUE)
         (amueblada  TRUE)
         (ascensor  TRUE)
         (balcon  TRUE)
         (calefacción  TRUE)
         (consumo  100)
         (electrodomesticos  "buen estado")
         (emisiones  36)
         (estado  "bon estat")
         (garaje  FALSE)
         (gas  "electrica")
         (iluminación  "natural")
         (luz  TRUE)
         (permiso_mascotas  TRUE)
         (piscina  TRUE)
         (soleado  "mañana")
         (superficie  90)
         (terraza  TRUE)
         (vistas  "no")
    )

    ([Pis_Gotic] of Plurifamiliar
         (altura  "2a planta")
         (tipo_viv  "piso")
         (localizado_en  [Pis_Gotic])
         (acceso_mov_red  FALSE)
         (agua  TRUE)
         (aire  FALSE)
         (amueblada  TRUE)
         (ascensor  FALSE)
         (balcon  TRUE)
         (calefacción  "electrica")
         (consumo  216)
         (electrodomesticos  "buen estado")
         (emisiones  44)
         (estado  "buen estado")
         (garaje  TRUE)
         (gas  "butano")
         (iluminación  "natural")
         (luz  TRUE)
         (permiso_mascotas  FALSE)
         (piscina  FALSE)
         (soleado  "mañana")
         (superficie  128)
         (terraza  FALSE)
         (vistas  "no")
    )

    ([Pis_La_Sagrera] of Vivienda
         (localizado_en  [Loc_La_Sagrera])
         (acceso_mov_red  FALSE)
         (agua  TRUE)
         (aire  FALSE)
         (amueblada  FALSE)
         (ascensor  TRUE)
         (balcon  TRUE)
         (calefacción  "electrica")
         (consumo  150)
         (electrodomesticos  "buen estado")
         (emisiones  15)
         (estado  "buen estado")
         (garaje  FALSE)
         (gas  "butano")
         (iluminación  "natural")
         (luz  TRUE)
         (permiso_mascotas  TRUE)
         (piscina  FALSE)
         (soleado  "no mucho")
         (superficie  88)
         (terraza  TRUE)
         (vistas  "ciutat")
    )

    ([Pis_Sant_Gervasi] of Plurifamiliar
         (altura  "atico")
         (tipo_viv  "apartamento")
         (localizado_en  [Loc_Prats_de_Molló])
         (acceso_mov_red  FALSE)
         (agua  TRUE)
         (aire  TRUE)
         (amueblada  TRUE)
         (ascensor  TRUE)
         (balcon  FALSE)
         (calefacción  "electrica")
         (consumo  90)
         (electrodomesticos  "buen estado")
         (emisiones  12)
         (estado  "buen estado")
         (garaje  TRUE)
         (gas  "natural")
         (iluminación  "natural")
         (luz  TRUE)
         (permiso_mascotas  FALSE)
         (piscina  FALSE)
         (soleado  "mañana")
         (superficie  85)
         (terraza  TRUE)
         (vistas  "buenas")
    )

    ([Pis_Sants] of Plurifamiliar
         (altura  "atico")
         (tipo_viv  "piso")
         (localizado_en  [Loc_La_Sagrera])
         (acceso_mov_red  FALSE)
         (agua  TRUE)
         (aire  FALSE)
         (amueblada  FALSE)
         (ascensor  TRUE)
         (balcon  FALSE)
         (calefacción  "electrica")
         (consumo  120)
         (electrodomesticos  "no")
         (emisiones  20)
         (estado  "segunda mano")
         (garaje  FALSE)
         (gas  "natural")
         (iluminación  "natural")
         (luz  TRUE)
         (permiso_mascotas  TRUE)
         (piscina  FALSE)
         (soleado  "todo el dia")
         (superficie  60)
         (terraza  TRUE)
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
         (bañera  FALSE)
         (bidet  TRUE)
         (ducha  TRUE)
         (lavabo  TRUE)
         (superficie  7)
    )

    ([Baño-Sants] of Baño
         (parte_de  [Pis_Sants])
         (bañera  TRUE)
         (bidet  TRUE)
         (ducha  FALSE)
         (lavabo  TRUE)
         (superficie  8)
    )

    ([Baño-Vall_Hebron] of Baño
         (parte_de  [Casa_Vall_Hebron])
         (bañera  TRUE)
         (bidet  TRUE)
         (ducha  TRUE)
         (lavabo  TRUE)
         (superficie  20)
    )

    ([Baño_-Sant_Gervasi] of Baño
         (parte_de  [Pis_Sant_Gervasi])
         (bañera  TRUE)
         (bidet  TRUE)
         (ducha  FALSE)
         (lavabo  TRUE)
         (superficie  10)
    )

    ([Baño_1-Dreta_Eixample] of Baño
         (parte_de  [Pis_Dreta_Eixample])
         (bañera  FALSE)
         (bidet  FALSE)
         (ducha  TRUE)
         (lavabo  TRUE)
         (superficie  5)
    )

    ([Baño_1-Gotic] of Baño
         (parte_de  [Pis_Gotic])
         (bañera  TRUE)
         (bidet  TRUE)
         (ducha  TRUE)
         (lavabo  TRUE)
         (superficie  10)
    )

    ([Baño_1-Pedralbes] of Baño
         (parte_de  [Casa_Pedralbes])
         (bañera  TRUE)
         (bidet  TRUE)
         (ducha  TRUE)
         (lavabo  TRUE)
         (superficie  15)
    )

    ([Baño_2-Dreta_Eixample] of Baño
         (parte_de  [Pis_Dreta_Eixample])
         (bañera  FALSE)
         (bidet  FALSE)
         (ducha  TRUE)
         (lavabo  TRUE)
         (superficie  5)
    )

    ([Baño_2-Gotic] of Baño
         (parte_de  [Pis_Gotic])
         (bañera  FALSE)
         (bidet  FALSE)
         (ducha  TRUE)
         (lavabo  TRUE)
         (superficie  8)
    )

    ([Baño_2-Pedralbes] of Baño
         (parte_de  [Casa_Pedralbes])
         (bañera  FALSE)
         (bidet  FALSE)
         (ducha  TRUE)
         (lavabo  TRUE)
         (superficie  15)
    )

    ([Baño_3-Gotic] of Baño
         (parte_de  [Pis_Gotic])
         (bañera  FALSE)
         (bidet  FALSE)
         (ducha  FALSE)
         (lavabo  TRUE)
         (superficie  5)
    )

    ([Baño_3-Pedralbes] of Baño
         (parte_de  [Casa_Pedralbes])
         (bañera  FALSE)
         (bidet  TRUE)
         (ducha  TRUE)
         (lavabo  TRUE)
         (superficie  10)
    )

    ([Baño_4-Pedralbes] of Baño
         (parte_de  [Casa_Pedralbes])
         (bañera  FALSE)
         (bidet  FALSE)
         (ducha  FALSE)
         (lavabo  TRUE)
         (superficie  5)
    )

    ([Cocina-Gotic] of Cocina
         (parte_de  [Pis_Gotic])
         (cocina_equipada  TRUE)
         (superficie  15)
         (tipo_co  "en paralelo")
    )

    ([Cocina-La_Sagrera] of Cocina
         (parte_de  [Pis_La_Sagrera])
         (cocina_equipada  FALSE)
         (superficie  10)
         (tipo_co  "en linea")
    )

    ([Cocina-Pedralbes] of Cocina
         (parte_de  [Casa_Pedralbes])
         (cocina_equipada  TRUE)
         (superficie  30)
         (tipo_co  "isla")
    )

    ([Cocina-Sant_Gervasi] of Cocina
         (parte_de  [Pis_Sant_Gervasi])
         (cocina_equipada  FALSE)
         (superficie  15)
         (tipo_co  "paralelo")
    )

    ([Cocina-Sants] of Cocina
         (parte_de  [Pis_Sants])
         (cocina_equipada  TRUE)
         (superficie  10)
         (tipo_co  "en linea")
    )

    ([Cocina-Vall_Hebron] of Cocina
         (parte_de  [Casa_Vall_Hebron])
         (cocina_equipada  TRUE)
         (superficie  20)
         (tipo_co  "en 'l'")
    )

    ([Cocina_1-Dreta_Eixample] of Cocina
         (parte_de  [Pis_Dreta_Eixample])
         (cocina_equipada  TRUE)
         (superficie  15)
         (tipo_co  "en linea")
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


(defclass Persona "Classe de Persona"
    (is-a USER)
    (role concrete)
    (pattern-match reactive)
    ;;; Nombre de la persona
    (slot nombre
        (type STRING)
        (create-accessor read-write))
    ;;; Edad de la persona
    (slot edad
        (type INTEGER)
        (create-accessor read-write))
    ;;; Precio maximo dispuesto a pagar
    (slot precio_max
        (type FLOAT)
        (create-accessor read-write))
    ;;; Precio minimo a pagar de la persona
    (slot precio_min
        (type FLOAT)
        (create-accessor read-write))
    ;;; Si es estudiante
    (slot ocupacion
        (type STRING)
        (create-accessor read-write))
    (slot ingresos
        (type FLOAT)
        (create-accessor read-write))
    (slot ingresos_pareja
        (type FLOAT)
        (create-accessor read-write))
    (slot movilidad_reducida
        (type SYMBOL)
        (create-accessor read-write))
    (slot puede_subir_escaleras
        (type SYMBOL)
        (create-accessor read-write))
    (slot distancia_recorrer
        (type FLOAT)
        (create-accessor read-write))
    (slot pareja
        (type SYMBOL)
        (create-accessor read-write))
    (slot vives_pareja
        (type SYMBOL)
        (create-accessor read-write))
    (slot hijos
        (type SYMBOL)
        (create-accessor read-write))
    (slot num_hijos
        (type INTEGER)
        (create-accessor read-write))
    (slot hijos_escuela_universidad
        (type STRING)
        (create-accessor read-write))
    (slot comparte_piso
        (type SYMBOL)
        (create-accessor read-write))
    (slot num_amigos
        (type INTEGER)
        (create-accessor read-write))
    (slot deporte
        (type SYMBOL)
        (create-accessor read-write))
    (slot donde_deporte
        (type STRING)
        (create-accessor read-write))
    (slot num_coches
        (type INTEGER)
        (create-accessor read-write)
        (default -1))
    (slot aparcar
        (type STRING)
        (create-accessor read-write))
    (slot transporte_publico
        (type SYMBOL)
        (create-accessor read-write))
    (slot mascota
        (type SYMBOL)
        (create-accessor read-write))
    (slot mascota_grande
        (type SYMBOL)
        (create-accessor read-write))


    (slot pref_tipo
        (type STRING)
        (create-accessor read-write))
    (slot pref_piso
        (type STRING)
        (create-accessor read-write))

    (slot pref_distancia_centro
        (type FLOAT)
        (create-accessor read-write))

    (slot pref_amueblada
        (type SYMBOL)
        (create-accessor read-write))
    (slot pref_bañera
        (type SYMBOL)
        (create-accessor read-write))
    (slot pref_piscina
        (type SYMBOL)
        (create-accessor read-write))

    (slot cocinas
        (type SYMBOL)
        (create-accessor read-write))
    (slot pref_tipo_cocina
        (type STRING)
        (create-accessor read-write))

    (slot pref_soleado
        (type SYMBOL)
        (create-accessor read-write))
    (slot pref_vistas
        (type SYMBOL)
        (create-accessor read-write))
    (slot pref_tipo_vistas
        (type STRING)
        (create-accessor read-write))
)

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

(defmessage-handler Vivienda imprimir ()
    (format t "-- Amueblada: %s" ?self:amueblada)
    (printout t crlf)
    (format t "-- Movilidad Reducida: %s" ?self:acceso_mov_red)
    (printout t crlf)
)

(defmessage-handler Oferta_Alquiler imprimir ()
	(format t "- Precio: %d" ?self:precio)
    (printout t crlf)
    (format t "- Fianza: %s" ?self:fianza)
    (printout t crlf)
    (printout t "- Vivienda: " crlf)
    (send ?self:oferta_de imprimir)
    (printout t crlf)
)

(defmessage-handler MAIN::Recomendacion imprimir ()
	(printout t "Oferta: " crlf)
	(send ?self:oferta imprimir)
	(format t "Nivel de recomendacion: %s" ?self:clasificacion)
    (printout t crlf)
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

(deffunction pregunta (?pregunta ?extra)
	(format t "%s%s " ?pregunta ?extra)
    (printout t crlf)
 	(read)
)

(deffunction input-error (?msg)
    (format t "INPUT ERROR: %s" ?msg)
    (printout t crlf)
)

(deffunction pregunta-binaria (?pregunta)
	(bind ?respuesta (pregunta ?pregunta " [S, N]"))
	(
        if (neq (type ?respuesta) SYMBOL)
        then 
            (progn
                (input-error "Wrong input format, not a SYMBOL")
                (pregunta-binaria ?pregunta)
            )
        else 
            (if (eq ?respuesta S)
    	       then TRUE
            else 
                (if (eq ?respuesta N)
                    then FALSE
                    else (progn
                        (input-error "Wrong input, not [S, N]")
                        (pregunta-binaria ?pregunta)
                    )
                )
            )
    )
)

(deffunction pregunta-rango (?pregunta ?rmin ?rmax)
    (bind ?range (format nil " [%d, %d]" ?rmin ?rmax))
    (bind ?respuesta (pregunta ?pregunta ?range)) 
    (if (neq (type ?respuesta) INTEGER)
    then 
        (progn
            (input-error "Wrong input format, not an INTEGER")
            (pregunta-rango ?pregunta ?rmin ?rmax)
        )
    else 
        (if (or (< ?respuesta ?rmin) (> ?respuesta ?rmax))
        then 
            (progn
                (input-error "Wrong input, not in range")
                (pregunta-rango ?pregunta ?rmin ?rmax)
            )
        )
        else (return ?respuesta)
    )
)


(deffunction pregunta-opciones (?pregunta $?opciones)
    (bind ?opstr " [")
    (progn$ (?op $?opciones)
        (bind ?opstr (format nil "%s%s, " ?opstr ?op))
    )
    (bind ?opstr (sub-string 0 (- (str-length ?opstr) 2) ?opstr))
    (bind ?opstr (format nil "%s]" ?opstr))
    (bind ?respuesta (str-cat (pregunta ?pregunta ?opstr)))
    (if (neq (type ?respuesta) STRING)
    then 
        (progn
            (input-error "Wrong input format, not a SYMBOL")
            (pregunta-opciones ?pregunta $?opciones)
        )
    else 
        (if (eq (member ?respuesta $?opciones) FALSE)
        then
            (progn
                (input-error "Wrong input, not in option list")
                (pregunta-opciones ?pregunta $?opciones)
            )
        else 
            (return ?respuesta)
        )
    )
)


;; PREGUNTAS AL USUARIO

(defrule preguntas::pregunta-nombre "pregunta al usuario su nombre de usuario"
    (not (Persona))
    =>
    (bind ?nombre (pregunta "Nombre de usuario:" ""))
    (make-instance usuario of Persona (nombre ?nombre))
)

(defrule preguntas::pregunta-edad "pregunta al usuario su edad"
    ?p <- (object (is-a Persona) (edad 0))
    =>
    (bind ?new-edad (pregunta-rango "Cuantos años tienes?" 18 120))
    (send ?p put-edad ?new-edad)
)

(defrule preguntas::pregunta-precio_min "pregunta al usuario el precio minimo que esta dispuesto a pagar" 
    ?p <- (object (is-a Persona) (precio_min 0.0))
    =>
    (bind ?new-precio_min (pregunta-rango "Cual es el precio minimo que estarias dispuesto a pagar?" 100 100000))
    (send ?p put-precio_min ?new-precio_min)
)

(defrule preguntas::pregunta-precio_max "pregunta al usuario el precio maximo que esta dispuesto a pagar" 
    ?p <- (object (is-a Persona) (precio_max 0.0))
    =>
    (bind ?new-precio_max (pregunta-rango "Cual es el precio maximo que estarias dispuesto a pagar?" 100 100000))
    (send ?p put-precio_max ?new-precio_max)
)

(defrule preguntas::pregunta-ocupacion "pregunta al usuario si trabaja o estudia"
    ?p <- (object (is-a Persona) (ocupacion ""))
    =>
    (bind ?new-ocupacion (pregunta-opciones "Estudias o trabajas?" "Estudio" "Trabajo"))
    (send ?p put-ocupacion ?new-ocupacion)
)

(defrule preguntas::pregunta-sueldo "si trabaja, le pregunta al usuario su sueldo"
    ?p <- (object (is-a Persona) (ocupacion "Trabajo") (ingresos 0.0))
    =>
    (bind ?new-ing (pregunta-rango "--> Cual es tu sueldo neto, en euros?" 500 100000))
    (send ?p put-ingresos ?new-ing)
)

(defrule preguntas::pregunta-movilidad_reducida "pregunta al usuario si tiene un problema de movilidad reducida" 
    ?p <- (object (is-a Persona) (movilidad_reducida nil))
    =>
    (bind ?new-mov (pregunta-binaria "Te ves afectado por un problema de movilidad reducida?"))
    (send ?p put-movilidad_reducida ?new-mov)
)

(defrule preguntas::pregunta-puede_subir_escaleras "si tiene problemas de movilidad, pregunta si puede subir escaleras" 
    ?p <- (object (is-a Persona) (movilidad_reducida TRUE) (puede_subir_escaleras nil))
    =>
    (bind ?new-esc (pregunta-binaria "--> Puedes subir escaleras?"))
    (send ?p put-puede_subir_escaleras ?new-esc)
)

(defrule preguntas::pregunta-distancia_recorrer "si tiene problemas de movilidad, pregunta cuanta distancia puede recorrer por la calle" 
    ?p <- (object (is-a Persona) (movilidad_reducida TRUE) (distancia_recorrer 0.0))
    =>
    (bind ?new-dis (pregunta "--> Cuanta distancia, en metros, puedes recorrer por el arcen?" ""))
    (send ?p put-distancia_recorrer ?new-dis)
)

(defrule preguntas::pregunta-pareja "pregunta al usuario si tiene pareja" 
    ?p <- (object (is-a Persona) (pareja nil))
    =>
    (bind ?new-par (pregunta-binaria "Tienes pareja?"))
    (send ?p put-pareja ?new-par)
)

(defrule preguntas::pregunta-vives_pareja "pregunta al usuario si vive con la pareja" 
    ?p <- (object (is-a Persona) (pareja TRUE) (vives_pareja nil))
    =>
    (bind ?new-par (pregunta-binaria "--> Vives con tu pareja?"))
    (send ?p put-vives_pareja ?new-par)
)

(defrule preguntas::pregunta-ingresos_pareja "pregunta al usuario los ingresos conjuntos con su pareja" 
    ?p <- (object (is-a Persona) (vives_pareja TRUE) (ingresos_pareja 0.0))
    =>
    (bind ?new-ing (pregunta-rango "----> Cuales son vuestros ingresos netos mensuales, en euros?" 500 100000))
    (send ?p put-ingresos_pareja ?new-ing)
)

(defrule preguntas::pregunta-hijos "pregunta al usuario si tiene hijos" 
    ?p <- (object (is-a Persona) (hijos nil))
    =>
    (bind ?new-hij (pregunta-binaria "Tienes hijos?"))
    (send ?p put-hijos ?new-hij)
)

(defrule preguntas::pregunta-num_hijos "si tiene hijos, pregunta al usuario cuantos hijos tiene" 
    ?p <- (object (is-a Persona) (hijos TRUE) (num_amigos 0))
    =>
    (bind ?new-nj (pregunta-rango "--> Cuantos?" 1 20))
    (send ?p put-num_hijos ?new-nj)
)

(defrule preguntas::pregunta-hijos_escuela_universidad "si tiene hijos, pregunta si van a la escuela universidad ambas o ninguna" 
    ?p <- (object (is-a Persona) (hijos TRUE) (hijos_escuela_universidad ""))
    =>
    (bind ?new-he (pregunta-opciones "--> Alguno de tus hijos va a la escuela o universidad?" "Escuela" "Universidad" "Ambas" "Ninguna"))
    (send ?p put-hijos_escuela_universidad ?new-he)
)

(defrule preguntas::pregunta-comparte_piso "pregunta al usuario si comparte_piso" 
    ?p <- (object (is-a Persona) (comparte_piso nil))
    =>
    (bind ?new-cp (pregunta-binaria "Compartes piso con amigos?"))
    (send ?p put-comparte_piso ?new-cp)
)

(defrule preguntas::pregunta-num_amigos "si comparte piso, pregunta con cuantos amigos" 
    ?p <- (object (is-a Persona) (comparte_piso TRUE) (num_amigos 0))
    =>
    (bind ?new-cp (pregunta-rango "--> Con cuantos amigos compartes piso?" 1 10))
    (send ?p put-num_amigos ?new-cp)
)

(defrule preguntas::pregunta-deporte "pregunta al usuario si hace deporte" 
    ?p <- (object (is-a Persona) (deporte nil))
    =>
    (bind ?new-dep (pregunta-binaria "Haces deporte regularmente?"))
    (send ?p put-deporte ?new-dep)
)

(defrule preguntas::pregunta-donde_deporte "si hace deporte, pregunta al usuario donde" 
    ?p <- (object (is-a Persona) (deporte TRUE) (donde_deporte ""))
    =>
    (bind ?new-dep (pregunta-opciones "--> Donde?" "Parque" "Gimnasio"))
    (send ?p put-donde_deporte ?new-dep)
)

(defrule preguntas::pregunta-num_coches "pregunta al usuario cuantos coches tiene" 
    ?p <- (object (is-a Persona) (num_coches -1))
    =>
    (bind ?new-co (pregunta-rango "Cuantos coches tienes?" 0 10))
    (send ?p put-num_coches ?new-co)
)

(defrule preguntas::pregunta-aparcar "pregunta al usuario donde aparca el coche" 
    ?p <- (object (is-a Persona) (num_coches ?coches) (aparcar ""))
    (test (> ?coches 0))
    =>
    (bind ?new-co (pregunta-opciones "--> Donde aparcas el coche(s)?" "Garage" "Calle"))
    (send ?p put-aparcar ?new-co)
)

(defrule preguntas::pregunta-transporte_publico "pregunta al usuario si usa el trans publico" 
    ?p <- (object (is-a Persona) (transporte_publico nil))
    =>
    (bind ?new-co (pregunta-binaria "Usas el transporte publico regularmente?"))
    (send ?p put-transporte_publico ?new-co)
)

(defrule preguntas::pregunta-mascota "pregunta al usuario si tiene mascota" 
    ?p <- (object (is-a Persona) (mascota nil))
    =>
    (bind ?new-ma (pregunta-binaria "Tienes mascota?"))
    (send ?p put-mascota ?new-ma)
)

(defrule preguntas::pregunta-mascota_grande "si tiene mascota, pregunta al usuario si es grande" 
    ?p <- (object (is-a Persona) (mascota TRUE) (mascota_grande nil))
    =>
    (bind ?new-ma (pregunta-binaria "--> Es grande?"))
    (send ?p put-mascota_grande ?new-ma)
)

(defrule preguntas::pregunta-pref_tipo "pregunta al usuario el tipo de casa que prefieren"
    ?p <- (object (is-a Persona) (pref_tipo ""))
    =>
    (bind ?new-tp (pregunta-opciones "Prefieres casa unifamiliar o un piso?" "Unifamiliar" "Piso"))
    (send ?p put-pref_tipo ?new-tp)
)

(defrule preguntas::pregunta-pref_piso "si prefiere piso, pregunta al usuario si prefiere un piso (altura) particular"
    ?p <- (object (is-a Persona) (pref_tipo "Piso") (pref_piso ""))
    =>
    (bind ?new-tp (pregunta-opciones "--> Que piso prefieres?" "Principal" "Atico" "Indiferente"))
    (send ?p put-pref_piso ?new-tp)
)

(defrule preguntas::pregunta-pref_distancia_centro "pregunta al usuario la distancia que quiere vivir del centro"
    ?p <- (object (is-a Persona) (pref_distancia_centro 0.0))
    =>
    (bind ?new-di (pregunta "A que distancia, en metros, quieres vivir del centro?" ""))
    (send ?p put-pref_distancia_centro ?new-di)
)

(defrule preguntas::pregunta-pref_amueblada "pregunta al usuario si prefiere vivienda amueblada"
    ?p <- (object (is-a Persona) (pref_amueblada nil))
    =>
    (bind ?new-am (pregunta-binaria "Prefieres la casa amueblada?"))
    (send ?p put-pref_amueblada ?new-am)
)

(defrule preguntas::pregunta-pref_bañera "si la prefiere amueblada, pregunta al usuario si prefiere tener bañera"
    ?p <- (object (is-a Persona) (pref_amueblada TRUE) (pref_bañera nil))
    =>
    (bind ?new-ba (pregunta-binaria "--> Buscas una casa con bañera?"))
    (send ?p put-pref_bañera ?new-ba)
)

(defrule preguntas::pregunta-cocinas "pregunta al usuario si cocina"
    ?p <- (object (is-a Persona) (pref_amueblada TRUE) (cocinas nil))
    =>
    (bind ?new-c (pregunta-binaria "--> Cocinas regularmente?"))
    (send ?p put-cocinas ?new-c)
)

(defrule preguntas::pregunta-pref_tipo_cocina "pregunta al usuario que tipo de cocina prefiere"
    ?p <- (object (is-a Persona) (pref_amueblada TRUE) (cocinas TRUE) (pref_tipo_cocina ""))
    =>
    (bind ?new-c (pregunta-opciones "----> Prefieres fogones o induccion?" "Fogones" "Induccion"))
    (send ?p put-pref_tipo_cocina ?new-c)
)

(defrule preguntas::pregunta-pref_piscina "pregunta al usuario si prefiere vivienda con piscina"
    ?p <- (object (is-a Persona) (pref_piscina nil))
    =>
    (bind ?new-pis (pregunta-binaria "Buscas una casa con piscina?"))
    (send ?p put-pref_piscina ?new-pis)
)

(defrule preguntas::pregunta-pref_soleado "pregunta al usuario si prefiere casa soleada"
    ?p <- (object (is-a Persona) (pref_soleado nil))
    =>
    (bind ?new-so (pregunta-binaria "Prefieres una casa soleada?"))
    (send ?p put-pref_soleado ?new-so)
)

(defrule preguntas::pregunta-pref_vistas "pregunta al usuario si prefiere casa con vistas"
    ?p <- (object (is-a Persona) (pref_vistas nil))
    =>
    (bind ?new-vi (pregunta-binaria "Prefieres una casa con vistas?"))
    (send ?p put-pref_vistas ?new-vi)
)

(defrule preguntas::pregunta-pref_tipo_vistas "si quiere la casa con vistas, pregunta que vistas prefiere"
    ?p <- (object (is-a Persona) (pref_vistas TRUE) (pref_tipo_vistas ""))
    =>
    (bind ?new-vi (pregunta-opciones "--> Que vistas prefieres?" "Montaña" "Playa" "Ciudad" "Indiferente"))
    (send ?p put-pref_tipo_vistas ?new-vi)
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

(defrule abstraccion::rango_edad ""
    ?p <- (object (is-a Persona) (edad ?e))
    =>
    (if (< ?e 23) 
    then (assert (rango_edades "Adolescente"))
    else 
        (if (< ?e 35)
        then (assert (rango_edades "Joven"))
        else 
            (if (< ?e 60)
            then (assert (rango_edades "Mediana Edad"))
            else 
                (assert (rango_edades "Persona Mayor"))
            )
        )
    )
)

(defrule abstraccion::vivir_cerca_universidad ""
    ?p <- (object (is-a Persona) (ocupacion "Estudio"))
    =>
    (assert (distancia "Universidad" 10000))
)

(defrule abstraccion::clase_economica ""
    ?p <- (object (is-a Persona)
            (ingresos ?i) (ingresos_pareja ?ip)
        )
    =>
    (bind ?ing ?i)
    (if (send ?p get-vives_pareja) then (bind ?ing ?ip))
    (if (< ?ing 1000) 
    then (assert (clase_economica "Baja"))
    else 
        (if (< ?ing 6000)
        then (assert (clase_economica "Media"))
        else 
            (if (< ?ing 20000)
            then (assert (clase_economica "Rica"))
            else 
                (assert (clase_economica "Muy Rica"))
            )
        )
    )
)

(defrule abstraccion::mov_red_trans_publico ""
    ?p <- (object (is-a Persona) 
            (movilidad_reducida TRUE)
            (distancia_recorrer ?dr)
        )
    =>
    (assert (distancia "Transporte publico" ?dr))
)

(defrule abstraccion::mov_red_escaleras ""
    ?p <- (object (is-a Persona) 
            (movilidad_reducida TRUE)
            (puede_subir_escaleras ?es)
        )
    =>
    (if (not ?es) 
    then 
        (assert (no_escaleras))
    )
)

(defrule abstraccion::casa_pareja ""
    ?p <- (object (is-a Persona) (vives_pareja TRUE))
    =>
    (assert (personas_caben_casa 2))
)

(defrule abstraccion::casa_hijos ""
    ?p <- (object (is-a Persona) (hijos TRUE) (num_hijos ?nh))
    =>
    (assert (personas_caben_casa (+ 2 (div ?nh 2))))
    (assert (superficie_minima 80))
)

(defrule abstraccion::casa_amigos ""
    ?p <- (object (is-a Persona) (num_amigos ?na))
    (test (> ?na 0))
    =>
    (assert (personas_caben_casa ?na))
)


(defrule abstraccion::hijos_escuela_universidad ""
    ?p <- (object (is-a Persona) (hijos_escuela_universidad ?heu))
    =>
    (if (or (eq ?heu "Universidad") (eq ?heu "Ambas")) 
    then (assert (distancia "Universidad" 10000)))

    (if (or (eq ?heu "Escuela") (eq ?heu "Ambas")) 
    then (assert (distancia "Escuela" 10000)))
)


(defrule abstraccion::deporte ""
    ?p <- (object (is-a Persona) (deporte TRUE) (donde_deporte ?dd))
    =>
    (assert (distancia ?dd 2000))
)



(defrule abstraccion::init_max_caben ""
    (declare (salience -1))
    (not (max_personas_caben_casa ?))
    =>
    (assert (max_personas_caben_casa 0))
)

(defrule abstraccion::max_caben ""
    (declare (salience -2))
    ?a <- (personas_caben_casa ?np)
    ?b <- (max_personas_caben_casa ?mnp)
    =>
    (retract ?a ?b)
    (assert (max_personas_caben_casa (max ?mnp ?np)))
)

(defrule abstraccion::fin_abstraccion "regla final abstraccion, focus en asociacion"
    (declare (salience -100))
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
    (recomendaciones_creadas) 
    ?rec <- (object (is-a Recomendacion) (oferta ?ofr))
    ?of  <- (object (is-a Oferta_Alquiler) (oferta_de ?vivo))
    ?viv <- (object (is-a Vivienda) (acceso_mov_red FALSE))
    (test (and (and (eq (instance-name ?ofr) (instance-name ?of)) (eq (instance-name ?vivo) (instance-name ?viv))) (eq (send ?p get-movilidad_reducida) TRUE)))
    =>
    (send ?rec delete)
)

(defrule asociacion::amueblada "Se descartan las recomendaciones no amuebladas"
    ?p <- (object (is-a Persona))
    (recomendaciones_creadas) 
    ?rec <- (object (is-a Recomendacion) (oferta ?ofr))
    ?of  <- (object (is-a Oferta_Alquiler) (oferta_de ?vivo))
    ?viv <- (object (is-a Vivienda) (amueblada FALSE))
    (test (and (and (eq (instance-name ?ofr) (instance-name ?of)) (eq (instance-name ?vivo) (instance-name ?viv))) (eq (send ?p get-pref_amueblada) TRUE)))
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
    (or 
        (> ?precio (* (send [usuario] get-precio_max) 1.2)) 
        (< ?precio (* (send [usuario] get-precio_min) 0.8))
    )
)

(deffunction precio_ligeramente_excesivo(?precio)
    (and 
        (not (precio_excesivo ?precio))
        (or 
            (> ?precio (send [usuario] get-precio_max))
            (< ?precio (send [usuario] get-precio_min)) 
        )
    )
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
            then 
                (send ?rec put-clasificacion parcialmente_adecuado)
            else 
                (send ?rec put-clasificacion adecuado)
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
     (import abstraccion deftemplate ?ALL)
)

;TODO: Output mas sofisticado?
(defrule output::imprimir_recomendacion "Imprime una recomendacion"
    ?rec <- (object (is-a Recomendacion) (oferta ?of))
    =>
    (printout t "------------- OFERTA RECOMENDADA -------------" crlf)
    (send ?rec imprimir)
)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;; FIN MODULO OUTPUT ;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
