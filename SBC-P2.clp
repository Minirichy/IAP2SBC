;;; ---------------------------------------------------------
;;; Ontologia-DEF.clp
;;; Translated by owl2clips
;;; Translated to CLIPS from ontology Ontologia-DEF.owl
;;; :Date 18/12/2021 17:23:49

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
    (slot iluminacion
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
    (slot tamaño_cocina
        (type STRING)
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
    (multislot oferta_de
        (type INSTANCE)
        (create-accessor read-write))
    ;;; Fianza de la vivienda
    (slot fianza
        (type STRING)
        (create-accessor read-write))
    (multislot precio
        (type INTEGER)
        (create-accessor read-write))
)

(defclass Persona
    (is-a USER)
    (role concrete)
    (pattern-match reactive)
    ;;; Se solicita una
    (multislot solicita
        (type INSTANCE)
        (create-accessor read-write))
    (multislot coches
        (type INTEGER)
        (create-accessor read-write))
    (slot cocinar
        (type SYMBOL)
        (create-accessor read-write))
    (slot compañeros_piso
        (type INTEGER)
        (create-accessor read-write))
    ;;; Baloncesto/Futbol/Otro/No
    (multislot deporte
        (type STRING)
        (create-accessor read-write))
    ;;; Distancia del centro
    (slot dist_centro
        (type INTEGER)
        (create-accessor read-write))
    ;;; Distancia que recorre por la acera?(No acabo de entender este atributo)
    (slot dist_recorrer
        (type INTEGER)
        (create-accessor read-write))
    (slot edad
        (type INTEGER)
        (create-accessor read-write))
    ;;; Ejercicio en parque?
    (slot ejer_parque
        (type SYMBOL)
        (create-accessor read-write))
    (slot estudio
        (type SYMBOL)
        (create-accessor read-write))
    (slot gimnasio
        (type SYMBOL)
        (create-accessor read-write))
    (slot hijos
        (type INTEGER)
        (create-accessor read-write))
    ;;; Edad de los hijos
    (multislot hijos_edad
        (type INTEGER)
        (create-accessor read-write))
    (slot mascota
        (type SYMBOL)
        (create-accessor read-write))
    (slot nombre
        (type STRING)
        (create-accessor read-write))
    (slot num_baños
        (type INTEGER)
        (create-accessor read-write))
    (slot num_dorm
        (type INTEGER)
        (create-accessor read-write))
    (slot pareja
        (type SYMBOL)
        (create-accessor read-write))
    ;;; Planta Baja, Atico, Indiferente, en medio
    (slot pref_altura
        (type STRING)
        (create-accessor read-write))
    (slot pref_amueblada
        (type SYMBOL)
        (create-accessor read-write))
    (slot pref_ascensor
        (type SYMBOL)
        (create-accessor read-write))
    (slot pref_bañera
        (type SYMBOL)
        (create-accessor read-write))
    ;;; Si prefiere Plurifamiliar/Unifamiliar
    (slot pref_casa
        (type STRING)
        (create-accessor read-write))
    ;;; Induccion/Fogones/Indiferente
    (slot pref_fogones
        (type STRING)
        (create-accessor read-write))
    (slot pref_jardin
        (type SYMBOL)
        (create-accessor read-write))
    (slot pref_piscina
        (type SYMBOL)
        (create-accessor read-write))
    (slot pref_sol
        (type SYMBOL)
        (create-accessor read-write))
    (slot pref_vistas
        (type SYMBOL)
        (create-accessor read-write))
    (slot problemas_movilidad
        (type SYMBOL)
        (create-accessor read-write))
    (slot subir_escaleras
        (type SYMBOL)
        (create-accessor read-write))
    (slot sueldo
        (type INTEGER)
        (create-accessor read-write))
    (slot trabajo
        (type SYMBOL)
        (create-accessor read-write))
    (slot transporte_publico
        (type SYMBOL)
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

(definstances instances
    ([Casa_1] of Unifamiliar
         (jardi  "false")
         (plantes  2)
         (seguretat  "true")
         (tipo_viv  "adosado")
         (localizado_en  [Loc_Casa_1])
         (acceso_mov_red  "true")
         (agua  "true")
         (aire  "true")
         (amueblada  "false")
         (ascensor  "false")
         (balcon  "true")
         (calefacción  "true")
         (consumo  135)
         (electrodomesticos  "buen estado")
         (emisiones  50)
         (estado  "nuevo")
         (garaje  "true")
         (gas  "true")
         (iluminacion  "luz natural" "true")
         (luz  "true")
         (permiso_mascotas  "true")
         (piscina  "false")
         (soleado  "mañana")
         (superficie  200)
         (terraza  "true")
         (vistas  "buenas")
    )

    ([Casa_10] of Plurifamiliar
         (altura  "atico")
         (tipo_viv  "apartamento")
         (localizado_en  [Loc_Casa_10])
         (acceso_mov_red  "false")
         (agua  "true")
         (aire  "true")
         (amueblada  "true")
         (ascensor  "false")
         (balcon  "false")
         (calefacción  "true")
         (consumo  59)
         (electrodomesticos  "segunda mano")
         (emisiones  40)
         (estado  "nuevo")
         (garaje  "false")
         (gas  "true")
         (iluminacion  "luz natural" "true")
         (luz  "true")
         (permiso_mascotas  "false")
         (piscina  "true")
         (soleado  "mañana y tarde")
         (superficie  60)
         (terraza  "true")
         (vistas  "buenas")
    )

    ([Casa_10_Baño_1] of Baño
         (parte_de  [Casa_10])
         (bañera  "false")
         (bidet  "true")
         (ducha  "true")
         (lavabo  "true")
    )

    ([Casa_10_Cocina] of Cocina
         (parte_de  [Casa_10])
         (cocina_equipada  "true")
         (tamaño_cocina  "grande")
         (tipo_co  "en isla")
    )

    ([Casa_10_Dormitorio_1] of Dormitorio
         (parte_de  [Casa_10])
         (tipo_do  "individual")
    )

    ([Casa_10_Oferta] of Oferta_Alquiler
         (oferta_de  [Casa_10])
         (fianza  "2 meses")
         (precio  530)
    )

    ([Casa_11] of Unifamiliar
         (jardi  "true")
         (plantes  2)
         (seguretat  "false")
         (tipo_viv  "independiente")
         (localizado_en  [Loc_Casa_11])
         (acceso_mov_red  "true")
         (agua  "true")
         (aire  "true")
         (amueblada  "true")
         (ascensor  "false")
         (balcon  "false")
         (calefacción  "true")
         (consumo  105)
         (electrodomesticos  "nuevos")
         (emisiones  60)
         (estado  "nuevo")
         (garaje  "true")
         (gas  "true")
         (iluminacion  "luz artificial" "true")
         (luz  "true")
         (permiso_mascotas  "false")
         (piscina  "true")
         (soleado  "mañana")
         (superficie  100)
         (terraza  "true")
         (vistas  "no")
    )

    ([Casa_11_Baño_1] of Baño
         (parte_de  [Casa_11])
         (bañera  "true")
         (bidet  "true")
         (ducha  "false")
         (lavabo  "true")
    )

    ([Casa_11_Cocina] of Cocina
         (parte_de  [Casa_11])
         (cocina_equipada  "true")
         (tamaño_cocina  "grande")
         (tipo_co  "en 'u'")
    )

    ([Casa_11_Dormitorio_1] of Dormitorio
         (parte_de  [Casa_11])
         (tipo_do  "doble")
    )

    ([Casa_11_Dormitorio_2] of Dormitorio
         (parte_de  [Casa_11])
         (tipo_do  "doble")
    )

    ([Casa_11_Oferta] of Oferta_Alquiler
         (oferta_de  [Casa_11])
         (fianza  "2 meses")
         (precio  2370)
    )

    ([Casa_12] of Unifamiliar
         (jardi  "false")
         (plantes  1)
         (seguretat  "false")
         (tipo_viv  "pareado")
         (localizado_en  [Loc_Casa_12])
         (acceso_mov_red  "true")
         (agua  "true")
         (aire  "true")
         (amueblada  "false")
         (ascensor  "false")
         (balcon  "true")
         (calefacción  "true")
         (consumo  112)
         (electrodomesticos  "segunda mano")
         (emisiones  60)
         (estado  "segunda mano")
         (garaje  "false")
         (gas  "true")
         (iluminacion  "luz natural" "true")
         (luz  "true")
         (permiso_mascotas  "true")
         (piscina  "false")
         (soleado  "mañana")
         (superficie  85)
         (terraza  "true")
         (vistas  "buenas")
    )

    ([Casa_12_Baño_1] of Baño
         (parte_de  [Casa_12])
         (bañera  "false")
         (bidet  "true")
         (ducha  "false")
         (lavabo  "true")
    )

    ([Casa_12_Cocina] of Cocina
         (parte_de  [Casa_12])
         (cocina_equipada  "true")
         (tamaño_cocina  "mediana")
         (tipo_co  "en paralelo")
    )

    ([Casa_12_Dormitorio_1] of Dormitorio
         (parte_de  [Casa_12])
         (tipo_do  "doble")
    )

    ([Casa_12_Oferta] of Oferta_Alquiler
         (oferta_de  [Casa_12])
         (fianza  "1 meses")
         (precio  1170)
    )

    ([Casa_13] of Plurifamiliar
         (altura  "5a planta")
         (tipo_viv  "piso")
         (localizado_en  [Loc_Casa_13])
         (acceso_mov_red  "false")
         (agua  "true")
         (aire  "true")
         (amueblada  "true")
         (ascensor  "true")
         (balcon  "true")
         (calefacción  "true")
         (consumo  165)
         (electrodomesticos  "antiguos")
         (emisiones  50)
         (estado  "antiguo")
         (garaje  "false")
         (gas  "true")
         (iluminacion  "luz natural" "true")
         (luz  "true")
         (permiso_mascotas  "false")
         (piscina  "false")
         (soleado  "mañana")
         (superficie  65)
         (terraza  "false")
         (vistas  "no")
    )

    ([Casa_13_Baño_1] of Baño
         (parte_de  [Casa_13])
         (bañera  "false")
         (bidet  "false")
         (ducha  "true")
         (lavabo  "true")
    )

    ([Casa_13_Cocina] of Cocina
         (parte_de  [Casa_13])
         (cocina_equipada  "true")
         (tamaño_cocina  "pequeña")
         (tipo_co  "en 'u''")
    )

    ([Casa_13_Dormitorio_1] of Dormitorio
         (parte_de  [Casa_13])
         (tipo_do  "doble")
    )

    ([Casa_13_Dormitorio_2] of Dormitorio
         (parte_de  [Casa_13])
         (tipo_do  "individual")
    )

    ([Casa_13_Dormitorio_3] of Dormitorio
         (parte_de  [Casa_13])
         (tipo_do  "individual")
    )

    ([Casa_13_Oferta] of Oferta_Alquiler
         (oferta_de  [Casa_13])
         (fianza  "1 meses")
         (precio  950)
    )

    ([Casa_14] of Plurifamiliar
         (altura  "3a planta")
         (tipo_viv  "duplex")
         (localizado_en  [Loc_Casa_14])
         (acceso_mov_red  "true")
         (agua  "true")
         (aire  "true")
         (amueblada  "false")
         (ascensor  "true")
         (balcon  "true")
         (calefacción  "true")
         (consumo  185)
         (electrodomesticos  "nuevos")
         (emisiones  90)
         (estado  "nuevo")
         (garaje  "true")
         (gas  "true")
         (iluminacion  "luz natural" "true")
         (luz  "true")
         (permiso_mascotas  "true")
         (piscina  "true")
         (soleado  "mañana")
         (superficie  155)
         (terraza  "false")
         (vistas  "buenas")
    )

    ([Casa_14_Baño_1] of Baño
         (parte_de  [Casa_14])
         (bañera  "true")
         (bidet  "true")
         (ducha  "true")
         (lavabo  "true")
    )

    ([Casa_14_Baño_2] of Baño
         (parte_de  [Casa_14])
         (bañera  "false")
         (bidet  "false")
         (ducha  "true")
         (lavabo  "true")
    )

    ([Casa_14_Cocina] of Cocina
         (parte_de  [Casa_14])
         (cocina_equipada  "true")
         (tamaño_cocina  "grande")
         (tipo_co  "en 'l'")
    )

    ([Casa_14_Dormitorio_1] of Dormitorio
         (parte_de  [Casa_14])
         (tipo_do  "doble")
    )

    ([Casa_14_Dormitorio_2] of Dormitorio
         (parte_de  [Casa_14])
         (tipo_do  "individual")
    )

    ([Casa_14_Dormitorio_3] of Dormitorio
         (parte_de  [Casa_14])
         (tipo_do  "individual")
    )

    ([Casa_14_Dormitorio_4] of Dormitorio
         (parte_de  [Casa_14])
         (tipo_do  "individual")
    )

    ([Casa_14_Dormitorio_5] of Dormitorio
         (parte_de  [Casa_14])
         (tipo_do  "individual")
    )

    ([Casa_14_Oferta] of Oferta_Alquiler
         (oferta_de  [Casa_14])
         (fianza  "3 meses")
         (precio  1850)
    )

    ([Casa_15] of Plurifamiliar
         (altura  "1a planta")
         (tipo_viv  "piso")
         (localizado_en  [Loc_Casa_15])
         (acceso_mov_red  "false")
         (agua  "true")
         (aire  "true")
         (amueblada  "true")
         (ascensor  "false")
         (balcon  "true")
         (calefacción  "true")
         (consumo  115)
         (electrodomesticos  "segunda mano")
         (emisiones  50)
         (estado  "segunda mano")
         (garaje  "false")
         (gas  "true")
         (iluminacion  "no" "true")
         (luz  "true")
         (permiso_mascotas  "false")
         (piscina  "false")
         (soleado  "mañana")
         (superficie  75)
         (terraza  "false")
         (vistas  "no")
    )

    ([Casa_15_Baño_1] of Baño
         (parte_de  [Casa_15])
         (bañera  "true")
         (bidet  "true")
         (ducha  "true")
         (lavabo  "true")
    )

    ([Casa_15_Cocina] of Cocina
         (parte_de  [Casa_15])
         (cocina_equipada  "true")
         (tamaño_cocina  "mediana")
         (tipo_co  "en linea")
    )

    ([Casa_15_Dormitorio_1] of Dormitorio
         (parte_de  [Casa_15])
         (tipo_do  "doble")
    )

    ([Casa_15_Oferta] of Oferta_Alquiler
         (oferta_de  [Casa_15])
         (fianza  "1 meses")
         (precio  550)
    )

    ([Casa_16] of Plurifamiliar
         (altura  "planta baja")
         (tipo_viv  "apartamento")
         (localizado_en  [Loc_Casa_16])
         (acceso_mov_red  "true")
         (agua  "true")
         (aire  "true")
         (amueblada  "false")
         (ascensor  "true")
         (balcon  "false")
         (calefacción  "true")
         (consumo  100)
         (electrodomesticos  "segunda mano")
         (emisiones  45)
         (estado  "segunda mano")
         (garaje  "true")
         (gas  "true")
         (iluminacion  "luz natural" "true")
         (luz  "true")
         (permiso_mascotas  "true")
         (piscina  "false")
         (soleado  "no")
         (superficie  65)
         (terraza  "false")
         (vistas  "buenas")
    )

    ([Casa_16_Baño_1] of Baño
         (parte_de  [Casa_16])
         (bañera  "true")
         (bidet  "true")
         (ducha  "true")
         (lavabo  "true")
    )

    ([Casa_16_Cocina] of Cocina
         (parte_de  [Casa_16])
         (cocina_equipada  "true")
         (tamaño_cocina  "pequeña")
         (tipo_co  "en 'l'")
    )

    ([Casa_16_Dormitorio_1] of Dormitorio
         (parte_de  [Casa_16])
         (tipo_do  "doble")
    )

    ([Casa_16_Oferta] of Oferta_Alquiler
         (oferta_de  [Casa_16])
         (fianza  "2 meses")
         (precio  390)
    )

    ([Casa_17] of Plurifamiliar
         (altura  "2a planta")
         (tipo_viv  "piso")
         (localizado_en  [Loc_Casa_17])
         (acceso_mov_red  "false")
         (agua  "true")
         (aire  "true")
         (amueblada  "true")
         (ascensor  "true")
         (balcon  "true")
         (calefacción  "true")
         (consumo  120)
         (electrodomesticos  "no")
         (emisiones  58)
         (estado  "nuevo")
         (garaje  "false")
         (gas  "true")
         (iluminacion  "luz artificial" "true")
         (luz  "true")
         (permiso_mascotas  "false")
         (piscina  "false")
         (soleado  "mañana")
         (superficie  85)
         (terraza  "false")
         (vistas  "no")
    )

    ([Casa_17_Baño_1] of Baño
         (parte_de  [Casa_17])
         (bañera  "false")
         (bidet  "true")
         (ducha  "true")
         (lavabo  "true")
    )

    ([Casa_17_Cocina] of Cocina
         (parte_de  [Casa_17])
         (cocina_equipada  "false")
         (tamaño_cocina  "pequeña")
         (tipo_co  "en paralelo")
    )

    ([Casa_17_Dormitorio_1] of Dormitorio
         (parte_de  [Casa_17])
         (tipo_do  "individual")
    )

    ([Casa_17_Dormitorio_2] of Dormitorio
         (parte_de  [Casa_17])
         (tipo_do  "individual")
    )

    ([Casa_17_Oferta] of Oferta_Alquiler
         (oferta_de  [Casa_17])
         (fianza  "2 meses")
         (precio  1060)
    )

    ([Casa_18] of Unifamiliar
         (jardi  "true")
         (plantes  2)
         (seguretat  "true")
         (tipo_viv  "adosado")
         (localizado_en  [Loc_Casa_18])
         (acceso_mov_red  "false")
         (agua  "true")
         (aire  "true")
         (amueblada  "true")
         (ascensor  "false")
         (balcon  "false")
         (calefacción  "true")
         (consumo  122)
         (electrodomesticos  "nuevos")
         (emisiones  72)
         (estado  "nuevo")
         (garaje  "true")
         (gas  "true")
         (iluminacion  "luz artificial" "true")
         (luz  "true")
         (permiso_mascotas  "true")
         (piscina  "true")
         (soleado  "tarde")
         (superficie  125)
         (terraza  "true")
         (vistas  "no")
    )

    ([Casa_18_Baño_1] of Baño
         (parte_de  [Casa_18])
         (bañera  "true")
         (bidet  "true")
         (ducha  "true")
         (lavabo  "true")
    )

    ([Casa_18_Baño_2] of Baño
         (parte_de  [Casa_18])
         (bañera  "true")
         (bidet  "false")
         (ducha  "false")
         (lavabo  "true")
    )

    ([Casa_18_Baño_3] of Baño
         (parte_de  [Casa_18])
         (bañera  "false")
         (bidet  "false")
         (ducha  "false")
         (lavabo  "true")
    )

    ([Casa_18_Cocina] of Cocina
         (parte_de  [Casa_18])
         (cocina_equipada  "true")
         (tamaño_cocina  "grande")
         (tipo_co  "en isla")
    )

    ([Casa_18_Dormitorio_1] of Dormitorio
         (parte_de  [Casa_18])
         (tipo_do  "doble")
    )

    ([Casa_18_Dormitorio_2] of Dormitorio
         (parte_de  [Casa_18])
         (tipo_do  "doble")
    )

    ([Casa_18_Dormitorio_3] of Dormitorio
         (parte_de  [Casa_18])
         (tipo_do  "individual")
    )

    ([Casa_18_Oferta] of Oferta_Alquiler
         (oferta_de  [Casa_18])
         (fianza  "2 meses")
         (precio  3170)
    )

    ([Casa_19] of Plurifamiliar
         (altura  "4a planta")
         (tipo_viv  "piso")
         (localizado_en  [Loc_Casa_19])
         (acceso_mov_red  "true")
         (agua  "true")
         (aire  "true")
         (amueblada  "false")
         (ascensor  "false")
         (balcon  "true")
         (calefacción  "true")
         (consumo  135)
         (electrodomesticos  "antiguos")
         (emisiones  63)
         (estado  "antiguo")
         (garaje  "false")
         (gas  "true")
         (iluminacion  "luz natural" "true")
         (luz  "true")
         (permiso_mascotas  "true")
         (piscina  "false")
         (soleado  "mañana")
         (superficie  75)
         (terraza  "false")
         (vistas  "buenas")
    )

    ([Casa_19_Baño_1] of Baño
         (parte_de  [Casa_19])
         (bañera  "true")
         (bidet  "true")
         (ducha  "false")
         (lavabo  "true")
    )

    ([Casa_19_Cocina] of Cocina
         (parte_de  [Casa_19])
         (cocina_equipada  "true")
         (tamaño_cocina  "mediana")
         (tipo_co  "en linea")
    )

    ([Casa_19_Dormitorio_1] of Dormitorio
         (parte_de  [Casa_19])
         (tipo_do  "doble")
    )

    ([Casa_19_Dormitorio_2] of Dormitorio
         (parte_de  [Casa_19])
         (tipo_do  "individual")
    )

    ([Casa_19_Oferta] of Oferta_Alquiler
         (oferta_de  [Casa_19])
         (fianza  "2 meses")
         (precio  1560)
    )

    ([Casa_1_Baño_1] of Baño
         (parte_de  [Casa_1])
         (bañera  "true")
         (bidet  "true")
         (ducha  "true")
         (lavabo  "true")
    )

    ([Casa_1_Baño_2] of Baño
         (parte_de  [Casa_1])
         (bañera  "false")
         (bidet  "false")
         (ducha  "true")
         (lavabo  "true")
    )

    ([Casa_1_Cocina] of Cocina
         (parte_de  [Casa_1])
         (cocina_equipada  "true")
         (tamaño_cocina  "grande")
         (tipo_co  "en isla")
    )

    ([Casa_1_Dormitorio_1] of Dormitorio
         (parte_de  [Casa_1])
         (tipo_do  "doble")
    )

    ([Casa_1_Dormitorio_2] of Dormitorio
         (parte_de  [Casa_1])
         (tipo_do  "individual")
    )

    ([Casa_1_Dormitorio_3] of Dormitorio
         (parte_de  [Casa_1])
         (tipo_do  "individual")
    )

    ([Casa_1_Oferta] of Oferta_Alquiler
         (oferta_de  [Casa_1])
         (fianza  "2 meses")
         (precio  4000)
    )

    ([Casa_2] of Plurifamiliar
         (altura  "5a planta")
         (tipo_viv  "piso")
         (localizado_en  [Loc_Casa_2])
         (acceso_mov_red  "false")
         (agua  "true")
         (aire  "true")
         (amueblada  "true")
         (ascensor  "true")
         (balcon  "true")
         (calefacción  "true")
         (consumo  100)
         (electrodomesticos  "segunda mano")
         (emisiones  30)
         (estado  "segunda mano")
         (garaje  "false")
         (gas  "true")
         (iluminacion  "poca" "true")
         (luz  "true")
         (permiso_mascotas  "false")
         (piscina  "false")
         (soleado  "mañana")
         (superficie  80)
         (terraza  "true")
         (vistas  "no")
    )

    ([Casa_20] of Plurifamiliar
         (altura  "atico")
         (tipo_viv  "duplex")
         (localizado_en  [Loc_Casa_20])
         (acceso_mov_red  "false")
         (agua  "true")
         (aire  "true")
         (amueblada  "false")
         (ascensor  "true")
         (balcon  "false")
         (calefacción  "true")
         (consumo  145)
         (electrodomesticos  "no")
         (emisiones  68)
         (estado  "segunda mano")
         (garaje  "true")
         (gas  "true")
         (iluminacion  "luz natural" "true")
         (luz  "true")
         (permiso_mascotas  "true")
         (piscina  "false")
         (soleado  "tarde")
         (superficie  95)
         (terraza  "true")
         (vistas  "buenas")
    )

    ([Casa_20_Baño_1] of Baño
         (parte_de  [Casa_20])
         (bañera  "false")
         (bidet  "true")
         (ducha  "true")
         (lavabo  "true")
    )

    ([Casa_20_Baño_2] of Baño
         (parte_de  [Casa_20])
         (bañera  "false")
         (bidet  "true")
         (ducha  "true")
         (lavabo  "true")
    )

    ([Casa_20_Cocina] of Cocina
         (parte_de  [Casa_20])
         (cocina_equipada  "false")
         (tamaño_cocina  "grande")
         (tipo_co  "en 'u'")
    )

    ([Casa_20_Dormitorio_1] of Dormitorio
         (parte_de  [Casa_20])
         (tipo_do  "doble")
    )

    ([Casa_20_Dormitorio_2] of Dormitorio
         (parte_de  [Casa_20])
         (tipo_do  "individual")
    )

    ([Casa_20_Dormitorio_3] of Dormitorio
         (parte_de  [Casa_20])
         (tipo_do  "individual")
    )

    ([Casa_20_Oferta] of Oferta_Alquiler
         (oferta_de  [Casa_20])
         (fianza  "2 meses")
         (precio  2260)
    )

    ([Casa_21] of Plurifamiliar
         (altura  "3a planta")
         (tipo_viv  "apartamento")
         (localizado_en  [Loc_Casa_21])
         (acceso_mov_red  "false")
         (agua  "true")
         (aire  "true")
         (amueblada  "true")
         (ascensor  "true")
         (balcon  "true")
         (calefacción  "true")
         (consumo  115)
         (electrodomesticos  "nuevos")
         (emisiones  65)
         (estado  "segunda mano")
         (garaje  "true")
         (gas  "true")
         (iluminacion  "no" "true")
         (luz  "true")
         (permiso_mascotas  "true")
         (piscina  "true")
         (soleado  "no")
         (superficie  95)
         (terraza  "false")
         (vistas  "no")
    )

    ([Casa_21_Baño_1] of Baño
         (parte_de  [Casa_21])
         (bañera  "false")
         (bidet  "false")
         (ducha  "true")
         (lavabo  "true")
    )

    ([Casa_21_Cocina] of Cocina
         (parte_de  [Casa_21])
         (cocina_equipada  "true")
         (tamaño_cocina  "mediana")
         (tipo_co  "en paralelo")
    )

    ([Casa_21_Dormitorio_1] of Dormitorio
         (parte_de  [Casa_21])
         (tipo_do  "doble")
    )

    ([Casa_21_Oferta] of Oferta_Alquiler
         (oferta_de  [Casa_21])
         (fianza  "1 meses")
         (precio  780)
    )

    ([Casa_22] of Plurifamiliar
         (altura  "2a planta")
         (tipo_viv  "piso")
         (localizado_en  [Loc_Casa_22])
         (acceso_mov_red  "true")
         (agua  "true")
         (aire  "true")
         (amueblada  "false")
         (ascensor  "false")
         (balcon  "true")
         (calefacción  "true")
         (consumo  135)
         (electrodomesticos  "buen estado")
         (emisiones  50)
         (estado  "segunda mano")
         (garaje  "true")
         (gas  "true")
         (iluminacion  "luz natural" "true")
         (luz  "true")
         (permiso_mascotas  "true")
         (piscina  "false")
         (soleado  "mañana")
         (superficie  200)
         (terraza  "true")
         (vistas  "buenas")
    )

    ([Casa_22_Baño_1] of Baño
         (parte_de  [Casa_22])
         (bañera  "false")
         (bidet  "false")
         (ducha  "true")
         (lavabo  "true")
    )

    ([Casa_22_Cocina] of Cocina
         (parte_de  [Casa_22])
         (cocina_equipada  "true")
         (tamaño_cocina  "pequeña")
         (tipo_co  "en linea")
    )

    ([Casa_22_Dormitorio_1] of Dormitorio
         (parte_de  [Casa_22])
         (tipo_do  "individual")
    )

    ([Casa_22_Dormitorio_2] of Dormitorio
         (parte_de  [Casa_22])
         (tipo_do  "individual")
    )

    ([Casa_22_Oferta] of Oferta_Alquiler
         (oferta_de  [Casa_22])
         (fianza  "1 meses")
         (precio  400)
    )

    ([Casa_23] of Unifamiliar
         (jardi  "false")
         (plantes  1)
         (seguretat  "false")
         (tipo_viv  "independiente")
         (localizado_en  [Loc_Casa_23])
         (acceso_mov_red  "false")
         (agua  "true")
         (aire  "true")
         (amueblada  "false")
         (ascensor  "false")
         (balcon  "true")
         (calefacción  "true")
         (consumo  132)
         (electrodomesticos  "segunda mano")
         (emisiones  62)
         (estado  "nuevo")
         (garaje  "true")
         (gas  "true")
         (iluminacion  "luz natural" "true")
         (luz  "true")
         (permiso_mascotas  "true")
         (piscina  "false")
         (soleado  "mañana")
         (superficie  155)
         (terraza  "false")
         (vistas  "buenas")
    )

    ([Casa_23_Baño_1] of Baño
         (parte_de  [Casa_23])
         (bañera  "true")
         (bidet  "true")
         (ducha  "false")
         (lavabo  "true")
    )

    ([Casa_23_Baño_2] of Baño
         (parte_de  [Casa_23])
         (bañera  "true")
         (bidet  "false")
         (ducha  "false")
         (lavabo  "true")
    )

    ([Casa_23_Cocina] of Cocina
         (parte_de  [Casa_23])
         (cocina_equipada  "false")
         (tamaño_cocina  "mediana")
         (tipo_co  "en 'l'")
    )

    ([Casa_23_Dormitorio_1] of Dormitorio
         (parte_de  [Casa_23])
         (tipo_do  "doble")
    )

    ([Casa_23_Dormitorio_2] of Dormitorio
         (parte_de  [Casa_23])
         (tipo_do  "individual")
    )

    ([Casa_23_Oferta] of Oferta_Alquiler
         (oferta_de  [Casa_23])
         (fianza  "1 meses")
         (precio  1670)
    )

    ([Casa_24] of Plurifamiliar
         (altura  "6a planta")
         (tipo_viv  "piso")
         (localizado_en  [Loc_Casa_24])
         (acceso_mov_red  "false")
         (agua  "true")
         (aire  "true")
         (amueblada  "false")
         (ascensor  "true")
         (balcon  "true")
         (calefacción  "true")
         (consumo  125)
         (electrodomesticos  "segunda mano")
         (emisiones  67)
         (estado  "nuevo")
         (garaje  "false")
         (gas  "true")
         (iluminacion  "luz natural" "true")
         (luz  "true")
         (permiso_mascotas  "false")
         (piscina  "false")
         (soleado  "mañana")
         (superficie  55)
         (terraza  "false")
         (vistas  "buenas")
    )

    ([Casa_24_Baño_1] of Baño
         (parte_de  [Casa_24])
         (bañera  "false")
         (bidet  "true")
         (ducha  "true")
         (lavabo  "true")
    )

    ([Casa_24_Cocina] of Cocina
         (parte_de  [Casa_24])
         (cocina_equipada  "true")
         (tamaño_cocina  "pequeña")
         (tipo_co  "en linea")
    )

    ([Casa_24_Dormitorio_1] of Dormitorio
         (parte_de  [Casa_24])
         (tipo_do  "individual")
    )

    ([Casa_24_Oferta] of Oferta_Alquiler
         (oferta_de  [Casa_24])
         (fianza  "1 meses")
         (precio  380)
    )

    ([Casa_25] of Plurifamiliar
         (altura  "6a planta")
         (tipo_viv  "piso")
         (localizado_en  [Loc_Casa_25])
         (acceso_mov_red  "false")
         (agua  "true")
         (aire  "true")
         (amueblada  "false")
         (ascensor  "true")
         (balcon  "true")
         (calefacción  "true")
         (consumo  125)
         (electrodomesticos  "segunda mano")
         (emisiones  67)
         (estado  "nuevo")
         (garaje  "false")
         (gas  "true")
         (iluminacion  "luz natural" "true")
         (luz  "true")
         (permiso_mascotas  "false")
         (piscina  "false")
         (soleado  "mañana")
         (superficie  55)
         (terraza  "false")
         (vistas  "buenas")
    )

    ([Casa_25_Baño_1] of Baño
         (parte_de  [Casa_25])
         (bañera  "false")
         (bidet  "true")
         (ducha  "true")
         (lavabo  "true")
    )

    ([Casa_25_Cocina] of Cocina
         (parte_de  [Casa_25])
         (cocina_equipada  "true")
         (tamaño_cocina  "pequeña")
         (tipo_co  "en linea")
    )

    ([Casa_25_Dormitorio_1] of Dormitorio
         (parte_de  [Casa_25])
         (tipo_do  "individual")
    )

    ([Casa_25_Dormitorio_2] of Dormitorio
         (parte_de  [Casa_25])
         (tipo_do  "individual")
    )

    ([Casa_25_Dormitorio_3] of Dormitorio
         (parte_de  [Casa_25])
         (tipo_do  "individual")
    )

    ([Casa_25_Dormitorio_4] of Dormitorio
         (parte_de  [Casa_25])
         (tipo_do  "individual")
    )

    ([Casa_25_Oferta] of Oferta_Alquiler
         (oferta_de  [Casa_25])
         (fianza  "1 meses")
         (precio  1380)
    )

    ([Casa_26] of Unifamiliar
         (jardi  "true")
         (plantes  2)
         (seguretat  "true")
         (tipo_viv  "adosado")
         (localizado_en  [Loc_Casa_26])
         (acceso_mov_red  "true")
         (agua  "true")
         (aire  "true")
         (amueblada  "false")
         (ascensor  "false")
         (balcon  "true")
         (calefacción  "true")
         (consumo  205)
         (electrodomesticos  "no")
         (emisiones  100)
         (estado  "nuevo")
         (garaje  "false")
         (gas  "true")
         (iluminacion  "luz natural" "true")
         (luz  "true")
         (permiso_mascotas  "true")
         (piscina  "false")
         (soleado  "mañana")
         (superficie  300)
         (terraza  "true")
         (vistas  "no")
    )

    ([Casa_26_Baño_1] of Baño
         (parte_de  [Casa_26])
         (bañera  "true")
         (bidet  "true")
         (ducha  "true")
         (lavabo  "true")
    )

    ([Casa_26_Baño_2] of Baño
         (parte_de  [Casa_26])
         (bañera  "true")
         (bidet  "false")
         (ducha  "false")
         (lavabo  "true")
    )

    ([Casa_26_Baño_3] of Baño
         (parte_de  [Casa_26])
         (bañera  "false")
         (bidet  "false")
         (ducha  "false")
         (lavabo  "false")
    )

    ([Casa_26_Cocina] of Cocina
         (parte_de  [Casa_26])
         (cocina_equipada  "false")
         (tamaño_cocina  "grande")
         (tipo_co  "en 'u'")
    )

    ([Casa_26_Dormitorio_1] of Dormitorio
         (parte_de  [Casa_26])
         (tipo_do  "doble")
    )

    ([Casa_26_Dormitorio_2] of Dormitorio
         (parte_de  [Casa_26])
         (tipo_do  "doble")
    )

    ([Casa_26_Dormitorio_3] of Dormitorio
         (parte_de  [Casa_26])
         (tipo_do  "doble")
    )

    ([Casa_26_Dormitorio_4] of Dormitorio
         (parte_de  [Casa_26])
         (tipo_do  "individual")
    )

    ([Casa_26_Dormitorio_5] of Dormitorio
         (parte_de  [Casa_26])
         (tipo_do  "individual")
    )

    ([Casa_26_Oferta] of Oferta_Alquiler
         (oferta_de  [Casa_26])
         (fianza  "2 meses")
         (precio  6230)
    )

    ([Casa_27] of Plurifamiliar
         (altura  "4a planta")
         (tipo_viv  "piso")
         (localizado_en  [Loc_Casa_27])
         (acceso_mov_red  "true")
         (agua  "true")
         (aire  "true")
         (amueblada  "true")
         (ascensor  "true")
         (balcon  "false")
         (calefacción  "true")
         (consumo  95)
         (electrodomesticos  "segunda mano")
         (emisiones  59)
         (estado  "segunda mano")
         (garaje  "true")
         (gas  "true")
         (iluminacion  "luz natural" "true")
         (luz  "true")
         (permiso_mascotas  "true")
         (piscina  "true")
         (soleado  "no")
         (superficie  50)
         (terraza  "false")
         (vistas  "no")
    )

    ([Casa_27_Baño_1] of Baño
         (parte_de  [Casa_27])
         (bañera  "false")
         (bidet  "false")
         (ducha  "true")
         (lavabo  "true")
    )

    ([Casa_27_Cocina] of Cocina
         (parte_de  [Casa_27])
         (cocina_equipada  "true")
         (tamaño_cocina  "pequeña")
         (tipo_co  "en paralelo")
    )

    ([Casa_27_Dormitorio_1] of Dormitorio
         (parte_de  [Casa_27])
         (tipo_do  "doble")
    )

    ([Casa_27_Dormitorio_2] of Dormitorio
         (parte_de  [Casa_27])
         (tipo_do  "individual")
    )

    ([Casa_27_Oferta] of Oferta_Alquiler
         (oferta_de  [Casa_27])
         (fianza  "2 meses")
         (precio  510)
    )

    ([Casa_28] of Plurifamiliar
         (altura  "atico")
         (tipo_viv  "duplex")
         (localizado_en  [Loc_Casa_28])
         (acceso_mov_red  "false")
         (agua  "true")
         (aire  "true")
         (amueblada  "true")
         (ascensor  "true")
         (balcon  "true")
         (calefacción  "true")
         (consumo  115)
         (electrodomesticos  "nuevos")
         (emisiones  78)
         (estado  "nuevo")
         (garaje  "true")
         (gas  "true")
         (iluminacion  "luz artificial" "true")
         (luz  "true")
         (permiso_mascotas  "true")
         (piscina  "false")
         (soleado  "no")
         (superficie  110)
         (terraza  "true")
         (vistas  "buenas")
    )

    ([Casa_28_Baño_1] of Baño
         (parte_de  [Casa_28])
         (bañera  "true")
         (bidet  "false")
         (ducha  "true")
         (lavabo  "true")
    )

    ([Casa_28_Baño_2] of Baño
         (parte_de  [Casa_28])
         (bañera  "true")
         (bidet  "false")
         (ducha  "false")
         (lavabo  "true")
    )

    ([Casa_28_Cocina] of Cocina
         (parte_de  [Casa_28])
         (cocina_equipada  "true")
         (tamaño_cocina  "mediana")
         (tipo_co  "en 'u'")
    )

    ([Casa_28_Dormitorio_1] of Dormitorio
         (parte_de  [Casa_28])
         (tipo_do  "doble")
    )

    ([Casa_28_Oferta] of Oferta_Alquiler
         (oferta_de  [Casa_28])
         (fianza  "1 meses")
         (precio  2510)
    )

    ([Casa_29] of Unifamiliar
         (jardi  "false")
         (plantes  1)
         (seguretat  "true")
         (tipo_viv  "pareado")
         (localizado_en  [Loc_Casa_29])
         (acceso_mov_red  "true")
         (agua  "true")
         (aire  "true")
         (amueblada  "true")
         (ascensor  "false")
         (balcon  "false")
         (calefacción  "true")
         (consumo  112)
         (electrodomesticos  "no")
         (emisiones  62)
         (estado  "segunda mano")
         (garaje  "true")
         (gas  "true")
         (iluminacion  "no" "true")
         (luz  "true")
         (permiso_mascotas  "false")
         (piscina  "true")
         (soleado  "tarde")
         (superficie  145)
         (terraza  "false")
         (vistas  "no")
    )

    ([Casa_29_Baño_1] of Baño
         (parte_de  [Casa_29])
         (bañera  "false")
         (bidet  "true")
         (ducha  "true")
         (lavabo  "true")
    )

    ([Casa_29_Baño_2] of Baño
         (parte_de  [Casa_29])
         (bañera  "false")
         (bidet  "false")
         (ducha  "true")
         (lavabo  "true")
    )

    ([Casa_29_Baño_3] of Baño
         (parte_de  [Casa_29])
         (bañera  "true")
         (bidet  "false")
         (ducha  "true")
         (lavabo  "true")
    )

    ([Casa_29_Cocina] of Cocina
         (parte_de  [Casa_29])
         (cocina_equipada  "true")
         (tamaño_cocina  "grande")
         (tipo_co  "en isla")
    )

    ([Casa_29_Dormitorio_1] of Dormitorio
         (parte_de  [Casa_29])
         (tipo_do  "doble")
    )

    ([Casa_29_Dormitorio_2] of Dormitorio
         (parte_de  [Casa_29])
         (tipo_do  "doble")
    )

    ([Casa_29_Dormitorio_3] of Dormitorio
         (parte_de  [Casa_29])
         (tipo_do  "individual")
    )

    ([Casa_29_Oferta] of Oferta_Alquiler
         (oferta_de  [Casa_29])
         (fianza  "2 meses")
         (precio  1170)
    )

    ([Casa_2_Baño_1] of Baño
         (parte_de  [Casa_2])
         (bañera  "false")
         (bidet  "false")
         (ducha  "true")
         (lavabo  "true")
    )

    ([Casa_2_Baño_2] of Baño
         (parte_de  [Casa_2])
         (bañera  "false")
         (bidet  "false")
         (ducha  "false")
         (lavabo  "true")
    )

    ([Casa_2_Cocina] of Cocina
         (parte_de  [Casa_2])
         (cocina_equipada  "false")
         (tamaño_cocina  "pequeña")
         (tipo_co  "en paralelo")
    )

    ([Casa_2_Dormitorio_1] of Dormitorio
         (parte_de  [Casa_2])
         (tipo_do  "individual")
    )

    ([Casa_2_Dormitorio_2] of Dormitorio
         (parte_de  [Casa_2])
         (tipo_do  "individual")
    )

    ([Casa_2_Dormitorio_3] of Dormitorio
         (parte_de  [Casa_2])
         (tipo_do  "individual")
    )

    ([Casa_2_Oferta] of Oferta_Alquiler
         (oferta_de  [Casa_2])
         (fianza  "2 meses")
         (precio  1100)
    )

    ([Casa_3] of Unifamiliar
         (jardi  "true")
         (plantes  4)
         (seguretat  "false")
         (tipo_viv  "independiente")
         (localizado_en  [Loc_Casa_3])
         (acceso_mov_red  "true")
         (agua  "true")
         (aire  "true")
         (amueblada  "true")
         (ascensor  "true")
         (balcon  "false")
         (calefacción  "true")
         (consumo  185)
         (electrodomesticos  "nuevos")
         (emisiones  80)
         (estado  "antiguo")
         (garaje  "true")
         (gas  "true")
         (iluminacion  "luz artificial" "true")
         (luz  "true")
         (permiso_mascotas  "false")
         (piscina  "true")
         (soleado  "mañana y tarde")
         (superficie  500)
         (terraza  "true")
         (vistas  "no")
    )

    ([Casa_30] of Plurifamiliar
         (altura  "5a planta")
         (tipo_viv  "piso")
         (localizado_en  [Loc_Casa_30])
         (acceso_mov_red  "false")
         (agua  "true")
         (aire  "true")
         (amueblada  "true")
         (ascensor  "true")
         (balcon  "true")
         (calefacción  "true")
         (consumo  165)
         (electrodomesticos  "segunda mano")
         (emisiones  90)
         (estado  "segunda mano")
         (garaje  "false")
         (gas  "true")
         (iluminacion  "luz artificial" "true")
         (luz  "true")
         (permiso_mascotas  "true")
         (piscina  "true")
         (soleado  "mañana")
         (superficie  85)
         (terraza  "false")
         (vistas  "buenas")
    )

    ([Casa_30_Baño_1] of Baño
         (parte_de  [Casa_30])
         (bañera  "false")
         (bidet  "true")
         (ducha  "true")
         (lavabo  "true")
    )

    ([Casa_30_Baño_2] of Baño
         (parte_de  [Casa_30])
         (bañera  "false")
         (bidet  "false")
         (ducha  "true")
         (lavabo  "true")
    )

    ([Casa_30_Cocina] of Cocina
         (parte_de  [Casa_30])
         (cocina_equipada  "true")
         (tamaño_cocina  "grande")
         (tipo_co  "en 'l'")
    )

    ([Casa_30_Dormitorio_1] of Dormitorio
         (parte_de  [Casa_30])
         (tipo_do  "doble")
    )

    ([Casa_30_Dormitorio_2] of Dormitorio
         (parte_de  [Casa_30])
         (tipo_do  "individual")
    )

    ([Casa_30_Dormitorio_3] of Dormitorio
         (parte_de  [Casa_30])
         (tipo_do  "individual")
    )

    ([Casa_30_Dormitorio_4] of Dormitorio
         (parte_de  [Casa_30])
         (tipo_do  "individual")
    )

    ([Casa_30_Oferta] of Oferta_Alquiler
         (oferta_de  [Casa_30])
         (fianza  "2 meses")
         (precio  1380)
    )

    ([Casa_31] of Plurifamiliar
         (altura  "planta baja")
         (tipo_viv  "piso")
         (localizado_en  [Loc_Casa_31])
         (acceso_mov_red  "false")
         (agua  "true")
         (aire  "true")
         (amueblada  "false")
         (ascensor  "true")
         (balcon  "false")
         (calefacción  "true")
         (consumo  125)
         (electrodomesticos  "segunda mano")
         (emisiones  87)
         (estado  "nuevo")
         (garaje  "true")
         (gas  "true")
         (iluminacion  "luz natural" "true")
         (luz  "true")
         (permiso_mascotas  "false")
         (piscina  "false")
         (soleado  "no")
         (superficie  65)
         (terraza  "false")
         (vistas  "no")
    )

    ([Casa_31_Baño_1] of Baño
         (parte_de  [Casa_31])
         (bañera  "false")
         (bidet  "false")
         (ducha  "true")
         (lavabo  "true")
    )

    ([Casa_31_Cocina] of Cocina
         (parte_de  [Casa_31])
         (cocina_equipada  "false")
         (tamaño_cocina  "pequeña")
         (tipo_co  "en 'u'")
    )

    ([Casa_31_Dormitorio_1] of Dormitorio
         (parte_de  [Casa_31])
         (tipo_do  "individual")
    )

    ([Casa_31_Dormitorio_2] of Dormitorio
         (parte_de  [Casa_31])
         (tipo_do  "individual")
    )

    ([Casa_31_Oferta] of Oferta_Alquiler
         (oferta_de  [Casa_31])
         (fianza  "2 meses")
         (precio  880)
    )

    ([Casa_32] of Unifamiliar
         (jardi  "true")
         (plantes  2)
         (seguretat  "false")
         (tipo_viv  "pareado")
         (localizado_en  [Loc_Casa_32])
         (acceso_mov_red  "true")
         (agua  "true")
         (aire  "true")
         (amueblada  "false")
         (ascensor  "false")
         (balcon  "true")
         (calefacción  "true")
         (consumo  195)
         (electrodomesticos  "no")
         (emisiones  100)
         (estado  "nuevp")
         (garaje  "true")
         (gas  "true")
         (iluminacion  "luz natural" "true")
         (luz  "true")
         (permiso_mascotas  "true")
         (piscina  "false")
         (soleado  "no")
         (superficie  250)
         (terraza  "false")
         (vistas  "no")
    )

    ([Casa_32_Baño_1] of Baño
         (parte_de  [Casa_32])
         (bañera  "true")
         (bidet  "true")
         (ducha  "true")
         (lavabo  "true")
    )

    ([Casa_32_Baño_2] of Baño
         (parte_de  [Casa_32])
         (bañera  "true")
         (bidet  "true")
         (ducha  "true")
         (lavabo  "true")
    )

    ([Casa_32_Cocina] of Cocina
         (parte_de  [Casa_32])
         (cocina_equipada  "false")
         (tamaño_cocina  "madiana")
         (tipo_co  "en paralelo")
    )

    ([Casa_32_Dormitorio_1] of Dormitorio
         (parte_de  [Casa_32])
         (tipo_do  "doble")
    )

    ([Casa_32_Dormitorio_2] of Dormitorio
         (parte_de  [Casa_32])
         (tipo_do  "doble")
    )

    ([Casa_32_Dormitorio_3] of Dormitorio
         (parte_de  [Casa_32])
         (tipo_do  "doble")
    )

    ([Casa_32_Dormitorio_4] of Dormitorio
         (parte_de  [Casa_32])
         (tipo_do  "individual")
    )

    ([Casa_32_Oferta] of Oferta_Alquiler
         (oferta_de  [Casa_32])
         (fianza  "2 meses")
         (precio  5125)
    )

    ([Casa_33] of Plurifamiliar
         (altura  "2a planta")
         (tipo_viv  "apartamento")
         (localizado_en  [Loc_Casa_33])
         (acceso_mov_red  "false")
         (agua  "true")
         (aire  "true")
         (amueblada  "true")
         (ascensor  "false")
         (balcon  "true")
         (calefacción  "true")
         (consumo  65)
         (electrodomesticos  "segunda mano")
         (emisiones  27)
         (estado  "segunda mano")
         (garaje  "true")
         (gas  "true")
         (iluminacion  "luz artificial" "true")
         (luz  "true")
         (permiso_mascotas  "true")
         (piscina  "false")
         (soleado  "no")
         (superficie  95)
         (terraza  "false")
         (vistas  "no")
    )

    ([Casa_33_Baño_1] of Baño
         (parte_de  [Casa_33])
         (bañera  "true")
         (bidet  "true")
         (ducha  "false")
         (lavabo  "true")
    )

    ([Casa_33_Baño_2] of Baño
         (parte_de  [Casa_33])
         (bañera  "false")
         (bidet  "true")
         (ducha  "false")
         (lavabo  "true")
    )

    ([Casa_33_Cocina] of Cocina
         (parte_de  [Casa_33])
         (cocina_equipada  "true")
         (tamaño_cocina  "grande")
         (tipo_co  "en isla")
    )

    ([Casa_33_Dormitorio_1] of Dormitorio
         (parte_de  [Casa_33])
         (tipo_do  "doble")
    )

    ([Casa_33_Dormitorio_2] of Dormitorio
         (parte_de  [Casa_33])
         (tipo_do  "individual")
    )

    ([Casa_33_Dormitorio_3] of Dormitorio
         (parte_de  [Casa_33])
         (tipo_do  "individual")
    )

    ([Casa_33_Dormitorio_4] of Dormitorio
         (parte_de  [Casa_33])
         (tipo_do  "individual")
    )

    ([Casa_33_Oferta] of Oferta_Alquiler
         (oferta_de  [Casa_33])
         (fianza  "1 meses")
         (precio  1580)
    )

    ([Casa_34] of Plurifamiliar
         (altura  "5a planta")
         (tipo_viv  "piso")
         (localizado_en  [Loc_Casa_34])
         (acceso_mov_red  "true")
         (agua  "true")
         (aire  "true")
         (amueblada  "true")
         (ascensor  "true")
         (balcon  "true")
         (calefacción  "true")
         (consumo  132)
         (electrodomesticos  "no")
         (emisiones  53)
         (estado  "segunda mano")
         (garaje  "false")
         (gas  "true")
         (iluminacion  "luz natural" "true")
         (luz  "true")
         (permiso_mascotas  "true")
         (piscina  "false")
         (soleado  "mañana")
         (superficie  90)
         (terraza  "false")
         (vistas  "buenas")
    )

    ([Casa_34_Baño_1] of Baño
         (parte_de  [Casa_34])
         (bañera  "false")
         (bidet  "false")
         (ducha  "true")
         (lavabo  "true")
    )

    ([Casa_34_Cocina] of Cocina
         (parte_de  [Casa_34])
         (cocina_equipada  "true")
         (tamaño_cocina  "mediana")
         (tipo_co  "en linea")
    )

    ([Casa_34_Dormitorio_1] of Dormitorio
         (parte_de  [Casa_34])
         (tipo_do  "doble")
    )

    ([Casa_34_Dormitorio_2] of Dormitorio
         (parte_de  [Casa_34])
         (tipo_do  "individual")
    )

    ([Casa_34_Dormitorio_3] of Dormitorio
         (parte_de  [Casa_34])
         (tipo_do  "individual")
    )

    ([Casa_34_Oferta] of Oferta_Alquiler
         (oferta_de  [Casa_34])
         (fianza  "1 meses")
         (precio  900)
    )

    ([Casa_35] of Plurifamiliar
         (altura  "3a planta")
         (tipo_viv  "apartamento")
         (localizado_en  [Loc_Casa_35])
         (acceso_mov_red  "false")
         (agua  "true")
         (aire  "true")
         (amueblada  "false")
         (ascensor  "false")
         (balcon  "false")
         (calefacción  "true")
         (consumo  144)
         (electrodomesticos  "no")
         (emisiones  83)
         (estado  "antiguo")
         (garaje  "false")
         (gas  "true")
         (iluminacion  "luz artificial" "true")
         (luz  "true")
         (permiso_mascotas  "false")
         (piscina  "false")
         (soleado  "mañana")
         (superficie  55)
         (terraza  "false")
         (vistas  "no")
    )

    ([Casa_35_Baño_1] of Baño
         (parte_de  [Casa_35])
         (bañera  "false")
         (bidet  "false")
         (ducha  "true")
         (lavabo  "true")
    )

    ([Casa_35_Cocina] of Cocina
         (parte_de  [Casa_35])
         (cocina_equipada  "false")
         (tamaño_cocina  "pequeña")
         (tipo_co  "en 'u''")
    )

    ([Casa_35_Dormitorio_1] of Dormitorio
         (parte_de  [Casa_35])
         (tipo_do  "doble")
    )

    ([Casa_35_Dormitorio_2] of Dormitorio
         (parte_de  [Casa_35])
         (tipo_do  "individual")
    )

    ([Casa_35_Oferta] of Oferta_Alquiler
         (oferta_de  [Casa_35])
         (fianza  "2 meses")
         (precio  760)
    )

    ([Casa_3_Baño_1] of Baño
         (parte_de  [Casa_3])
         (bañera  "true")
         (bidet  "true")
         (ducha  "true")
         (lavabo  "true")
    )

    ([Casa_3_Baño_2] of Baño
         (parte_de  [Casa_3])
         (bañera  "true")
         (bidet  "true")
         (ducha  "true")
         (lavabo  "true")
    )

    ([Casa_3_Baño_3] of Baño
         (parte_de  [Casa_3])
         (bañera  "false")
         (bidet  "false")
         (ducha  "true")
         (lavabo  "false")
    )

    ([Casa_3_Baño_4] of Baño
         (parte_de  [Casa_3])
         (bañera  "false")
         (bidet  "false")
         (ducha  "false")
         (lavabo  "true")
    )

    ([Casa_3_Cocina] of Cocina
         (parte_de  [Casa_3])
         (cocina_equipada  "true")
         (tamaño_cocina  "grande")
         (tipo_co  "en 'l'")
    )

    ([Casa_3_Dormitorio_1] of Dormitorio
         (parte_de  [Casa_3])
         (tipo_do  "doble")
    )

    ([Casa_3_Dormitorio_2] of Dormitorio
         (parte_de  [Casa_3])
         (tipo_do  "doble")
    )

    ([Casa_3_Dormitorio_3] of Dormitorio
         (parte_de  [Casa_3])
         (tipo_do  "individual")
    )

    ([Casa_3_Dormitorio_4] of Dormitorio
         (parte_de  [Casa_3])
         (tipo_do  "individual")
    )

    ([Casa_3_Dormitorio_5] of Dormitorio
         (parte_de  [Casa_3])
         (tipo_do  "individual")
    )

    ([Casa_3_Oferta] of Oferta_Alquiler
         (oferta_de  [Casa_3])
         (fianza  "6 meses")
         (precio  8000)
    )

    ([Casa_4] of Plurifamiliar
         (altura  "atico")
         (tipo_viv  "apartamento")
         (localizado_en  [Loc_Casa_4])
         (acceso_mov_red  "false")
         (agua  "true")
         (aire  "true")
         (amueblada  "true")
         (ascensor  "true")
         (balcon  "true")
         (calefacción  "true")
         (consumo  105)
         (electrodomesticos  "no")
         (emisiones  30)
         (estado  "segunda mano")
         (garaje  "false")
         (gas  "true")
         (iluminacion  "luz natural" "true")
         (luz  "true")
         (permiso_mascotas  "false")
         (piscina  "true")
         (soleado  "no")
         (superficie  80)
         (terraza  "true")
         (vistas  "buenas")
    )

    ([Casa_4_Baño_1] of Baño
         (parte_de  [Casa_4])
         (bañera  "true")
         (bidet  "false")
         (ducha  "true")
         (lavabo  "true")
    )

    ([Casa_4_Baño_2] of Baño
         (parte_de  [Casa_4])
         (bañera  "true")
         (bidet  "false")
         (ducha  "false")
         (lavabo  "true")
    )

    ([Casa_4_Cocina] of Cocina
         (parte_de  [Casa_4])
         (cocina_equipada  "false")
         (tamaño_cocina  "mediana")
         (tipo_co  "en 'u'")
    )

    ([Casa_4_Dormitorio_1] of Dormitorio
         (parte_de  [Casa_4])
         (tipo_do  "individual")
    )

    ([Casa_4_Dormitorio_2] of Dormitorio
         (parte_de  [Casa_4])
         (tipo_do  "doble")
    )

    ([Casa_4_Dormitorio_3] of Dormitorio
         (parte_de  [Casa_4])
         (tipo_do  "individual")
    )

    ([Casa_4_Dormitorio_4] of Dormitorio
         (parte_de  [Casa_4])
         (tipo_do  "individual")
    )

    ([Casa_4_Oferta] of Oferta_Alquiler
         (oferta_de  [Casa_4])
         (fianza  "3 meses")
         (precio  1720)
    )

    ([Casa_5] of Plurifamiliar
         (altura  "planta baja")
         (tipo_viv  "piso")
         (localizado_en  [Loc_Casa_5])
         (acceso_mov_red  "true")
         (agua  "true")
         (aire  "true")
         (amueblada  "false")
         (ascensor  "true")
         (balcon  "false")
         (calefacción  "true")
         (consumo  115)
         (electrodomesticos  "nuevos")
         (emisiones  45)
         (estado  "segunda mano")
         (garaje  "true")
         (gas  "true")
         (iluminacion  "poca" "true")
         (luz  "true")
         (permiso_mascotas  "true")
         (piscina  "true")
         (soleado  "no")
         (superficie  60)
         (terraza  "false")
         (vistas  "no")
    )

    ([Casa_5_Baño_1] of Baño
         (parte_de  [Casa_5])
         (bañera  "true")
         (bidet  "true")
         (ducha  "true")
         (lavabo  "true")
    )

    ([Casa_5_Cocina] of Cocina
         (parte_de  [Casa_5])
         (cocina_equipada  "true")
         (tamaño_cocina  "pequeña")
         (tipo_co  "en linea")
    )

    ([Casa_5_Dormitorio_1] of Dormitorio
         (parte_de  [Casa_5])
         (tipo_do  "doble")
    )

    ([Casa_5_Dormitorio_2] of Dormitorio
         (parte_de  [Casa_5])
         (tipo_do  "individual")
    )

    ([Casa_5_Oferta] of Oferta_Alquiler
         (oferta_de  [Casa_5])
         (fianza  "2 meses")
         (precio  980)
    )

    ([Casa_6] of Plurifamiliar
         (altura  "4a planta")
         (tipo_viv  "apartamento")
         (localizado_en  [Loc_Casa_6])
         (acceso_mov_red  "false")
         (agua  "true")
         (aire  "true")
         (amueblada  "true")
         (ascensor  "true")
         (balcon  "true")
         (calefacción  "true")
         (consumo  90)
         (electrodomesticos  "segunda mano")
         (emisiones  25)
         (estado  "segunda mano")
         (garaje  "false")
         (gas  "true")
         (iluminacion  "luz natural" "true")
         (luz  "true")
         (permiso_mascotas  "false")
         (piscina  "false")
         (soleado  "no")
         (superficie  45)
         (terraza  "false")
         (vistas  "no")
    )

    ([Casa_6_Baño_1] of Baño
         (parte_de  [Casa_6])
         (bañera  "false")
         (bidet  "true")
         (ducha  "true")
         (lavabo  "true")
    )

    ([Casa_6_Cocina] of Cocina
         (parte_de  [Casa_6])
         (cocina_equipada  "true")
         (tamaño_cocina  "pequeña")
         (tipo_co  "en linea")
    )

    ([Casa_6_Dormitorio_1] of Dormitorio
         (parte_de  [Casa_6])
         (tipo_do  "doble")
    )

    ([Casa_6_Oferta] of Oferta_Alquiler
         (oferta_de  [Casa_6])
         (fianza  "1 meses")
         (precio  280)
    )

    ([Casa_7] of Plurifamiliar
         (altura  "2a planta")
         (tipo_viv  "piso")
         (localizado_en  [Loc_Casa_6])
         (acceso_mov_red  "true")
         (agua  "true")
         (aire  "true")
         (amueblada  "true")
         (ascensor  "true")
         (balcon  "true")
         (calefacción  "true")
         (consumo  95)
         (electrodomesticos  "segunda mano")
         (emisiones  35)
         (estado  "nuevo")
         (garaje  "false")
         (gas  "true")
         (iluminacion  "artificial" "true")
         (luz  "true")
         (permiso_mascotas  "true")
         (piscina  "false")
         (soleado  "mañana")
         (superficie  45)
         (terraza  "false")
         (vistas  "buenas")
    )

    ([Casa_7_Baño_1] of Baño
         (parte_de  [Casa_7])
         (bañera  "true")
         (bidet  "false")
         (ducha  "false")
         (lavabo  "true")
    )

    ([Casa_7_Cocina] of Cocina
         (parte_de  [Casa_7])
         (cocina_equipada  "false")
         (tamaño_cocina  "mediana")
         (tipo_co  "en paralelo")
    )

    ([Casa_7_Dormitorio_1] of Dormitorio
         (parte_de  [Casa_7])
         (tipo_do  "doble")
    )

    ([Casa_7_Dormitorio_2] of Dormitorio
         (parte_de  [Casa_7])
         (tipo_do  "individual")
    )

    ([Casa_7_Oferta] of Oferta_Alquiler
         (oferta_de  [Casa_7])
         (fianza  "2 meses")
         (precio  620)
    )

    ([Casa_8] of Unifamiliar
         (jardi  "false")
         (plantes  1)
         (seguretat  "true")
         (tipo_viv  "pareado")
         (localizado_en  [Loc_Casa_8])
         (acceso_mov_red  "false")
         (agua  "true")
         (aire  "true")
         (amueblada  "false")
         (ascensor  "false")
         (balcon  "true")
         (calefacción  "true")
         (consumo  155)
         (electrodomesticos  "no")
         (emisiones  70)
         (estado  "segunda mano")
         (garaje  "false")
         (gas  "true")
         (iluminacion  "luz natural" "true")
         (luz  "true")
         (permiso_mascotas  "true")
         (piscina  "false")
         (soleado  "tarde")
         (superficie  120)
         (terraza  "false")
         (vistas  "buenas")
    )

    ([Casa_8_Baño_1] of Baño
         (parte_de  [Casa_8])
         (bañera  "true")
         (bidet  "false")
         (ducha  "true")
         (lavabo  "true")
    )

    ([Casa_8_Baño_2] of Baño
         (parte_de  [Casa_8])
         (bañera  "false")
         (bidet  "false")
         (ducha  "false")
         (lavabo  "true")
    )

    ([Casa_8_Cocina] of Cocina
         (parte_de  [Casa_8])
         (cocina_equipada  "false")
         (tamaño_cocina  "mediana")
         (tipo_co  "en isla")
    )

    ([Casa_8_Dormitorio_1] of Dormitorio
         (parte_de  [Casa_8])
         (tipo_do  "doble")
    )

    ([Casa_8_Dormitorio_2] of Dormitorio
         (parte_de  [Casa_8])
         (tipo_do  "individual")
    )

    ([Casa_8_Oferta] of Oferta_Alquiler
         (oferta_de  [Casa_8])
         (fianza  "2 meses")
         (precio  1870)
    )

    ([Casa_9] of Plurifamiliar
         (altura  "7a planta")
         (tipo_viv  "duplex")
         (localizado_en  [Loc_Casa_9])
         (acceso_mov_red  "false")
         (agua  "true")
         (aire  "true")
         (amueblada  "false")
         (ascensor  "true")
         (balcon  "false")
         (calefacción  "true")
         (consumo  155)
         (electrodomesticos  "buen estado")
         (emisiones  53)
         (estado  "nuevo")
         (garaje  "false")
         (gas  "true")
         (iluminacion  "luz natural" "true")
         (luz  "true")
         (permiso_mascotas  "false")
         (piscina  "true")
         (soleado  "no")
         (superficie  160)
         (terraza  "true")
         (vistas  "no")
    )

    ([Casa_9_Baño_1] of Baño
         (parte_de  [Casa_9])
         (bañera  "true")
         (bidet  "true")
         (ducha  "true")
         (lavabo  "true")
    )

    ([Casa_9_Baño_2] of Baño
         (parte_de  [Casa_9])
         (bañera  "true")
         (bidet  "false")
         (ducha  "false")
         (lavabo  "true")
    )

    ([Casa_9_Baño_3] of Baño
         (parte_de  [Casa_9])
         (bañera  "false")
         (bidet  "true")
         (ducha  "true")
         (lavabo  "true")
    )

    ([Casa_9_Cocina] of Cocina
         (parte_de  [Casa_9])
         (cocina_equipada  "true")
         (tamaño_cocina  "grande")
         (tipo_co  "en isla")
    )

    ([Casa_9_Dormitorio_1] of Dormitorio
         (parte_de  [Casa_9])
         (tipo_do  "doble")
    )

    ([Casa_9_Dormitorio_2] of Dormitorio
         (parte_de  [Casa_9])
         (tipo_do  "doble")
    )

    ([Casa_9_Dormitorio_3] of Dormitorio
         (parte_de  [Casa_9])
         (tipo_do  "individual")
    )

    ([Casa_9_Dormitorio_4] of Dormitorio
         (parte_de  [Casa_9])
         (tipo_do  "individual")
    )

    ([Casa_9_Oferta] of Oferta_Alquiler
         (oferta_de  [Casa_9])
         (fianza  "2 meses")
         (precio  1500)
    )

    ([Centro] of Servicio
         (localizado_en  [Loc_Centro])
         (tipo_ser  "centro")
    )

    ([Club_Esp_1] of Servicio
         (localizado_en  [Loc_Club_Esp_1])
         (tipo_ser  "deporte")
    )

    ([Club_Esp_10] of Servicio
         (localizado_en  [Loc_Club_Esp_10])
         (tipo_ser  "deporte")
    )

    ([Club_Esp_11] of Servicio
         (localizado_en  [Loc_Club_Esp_11])
         (tipo_ser  "deporte")
    )

    ([Club_Esp_12] of Servicio
         (localizado_en  [Loc_Club_Esp_12])
         (tipo_ser  "deporte")
    )

    ([Club_Esp_13] of Servicio
         (localizado_en  [Loc_Club_Esp_13])
         (tipo_ser  "deporte")
    )

    ([Club_Esp_2] of Servicio
         (localizado_en  [Loc_Club_Esp_2])
         (tipo_ser  "deporte")
    )

    ([Club_Esp_3] of Servicio
         (localizado_en  [Loc_Club_Esp_3])
         (tipo_ser  "deporte")
    )

    ([Club_Esp_4] of Servicio
         (localizado_en  [Loc_Club_Esp_4])
         (tipo_ser  "deporte")
    )

    ([Club_Esp_5] of Servicio
         (localizado_en  [Loc_Club_Esp_5])
         (tipo_ser  "deporte")
    )

    ([Club_Esp_6] of Servicio
         (localizado_en  [Loc_Club_Esp_6])
         (tipo_ser  "deporte")
    )

    ([Club_Esp_7] of Servicio
         (localizado_en  [Loc_Club_Esp_7])
         (tipo_ser  "deporte")
    )

    ([Club_Esp_8] of Servicio
         (localizado_en  [Loc_Club_Esp_8])
         (tipo_ser  "deporte")
    )

    ([Club_Esp_9] of Servicio
         (localizado_en  [Loc_Club_Esp_9])
         (tipo_ser  "deporte")
    )

    ([Cole_1] of Servicio
         (localizado_en  [Loc_Cole_1])
         (tipo_ser  "colegio")
    )

    ([Cole_10] of Servicio
         (localizado_en  [Loc_Cole_10])
         (tipo_ser  "colegio")
    )

    ([Cole_2] of Servicio
         (localizado_en  [Loc_Cole_2])
         (tipo_ser  "colegio")
    )

    ([Cole_3] of Servicio
         (localizado_en  [Loc_Cole_3])
         (tipo_ser  "colegio")
    )

    ([Cole_4] of Servicio
         (localizado_en  [Loc_Cole_4])
         (tipo_ser  "colegio")
    )

    ([Cole_5] of Servicio
         (localizado_en  [Loc_Cole_5])
         (tipo_ser  "colegio")
    )

    ([Cole_6] of Servicio
         (localizado_en  [Loc_Cole_6])
         (tipo_ser  "colegio")
    )

    ([Cole_7] of Servicio
         (localizado_en  [Loc_Cole_7])
         (tipo_ser  "colegio")
    )

    ([Cole_8] of Servicio
         (localizado_en  [Loc_Cole_8])
         (tipo_ser  "colegio")
    )

    ([Cole_9] of Servicio
         (localizado_en  [Loc_Cole_9])
         (tipo_ser  "colegio")
    )

    ([Gym_1] of Servicio
         (localizado_en  [Loc_Gym_1])
         (tipo_ser  "gimnasio")
    )

    ([Gym_2] of Servicio
         (localizado_en  [Loc_Gym_2])
         (tipo_ser  "gimnasio")
    )

    ([Gym_3] of Servicio
         (localizado_en  [Loc_Gym_3])
         (tipo_ser  "gimnasio")
    )

    ([Gym_4] of Servicio
         (localizado_en  [Loc_Gym_4])
         (tipo_ser  "gimnasio")
    )

    ([Gym_5] of Servicio
         (localizado_en  [Loc_Gym_5])
         (tipo_ser  "gimnasio")
    )

    ([Gym_6] of Servicio
         (localizado_en  [Loc_Gym_6])
         (tipo_ser  "gimnasio")
    )

    ([Gym_7] of Servicio
         (localizado_en  [Loc_Gym_7])
         (tipo_ser  "gimnasio")
    )

    ([Hospital_1] of Servicio
         (localizado_en  [Loc_Hospital_1])
         (tipo_ser  "hospital")
    )

    ([Hospital_2] of Servicio
         (localizado_en  [Loc_Hospital_2])
         (tipo_ser  "hospital")
    )

    ([Hospital_3] of Servicio
         (localizado_en  [Loc_Hospital_3])
         (tipo_ser  "hospital")
    )

    ([Hospital_4] of Servicio
         (localizado_en  [Loc_Hospital_4])
         (tipo_ser  "hospital")
    )

    ([Loc_Casa_1] of Localización
         (ciudad  "Barcelona")
         (direccion  "Casa 1")
         (distrito  "Les Corts")
         (latitud  41.395561930895816)
         (longitud  2.114309997537524)
    )

    ([Loc_Casa_10] of Localización
         (ciudad  "Barcelona")
         (direccion  "Casa 10")
         (distrito  "Gracia")
         (latitud  41.404142168492974)
         (longitud  2.147200726373559)
    )

    ([Loc_Casa_11] of Localización
         (ciudad  "Barcelona")
         (direccion  "Casa 11")
         (distrito  "Horta")
         (latitud  41.417911933661856)
         (longitud  2.1697985398669193)
    )

    ([Loc_Casa_12] of Localización
         (ciudad  "Barcelona")
         (direccion  "Casa 12")
         (distrito  "Sant Andreu")
         (latitud  41.43275432938129)
         (longitud  2.1879621840460417)
    )

    ([Loc_Casa_13] of Localización
         (ciudad  "Barcelona")
         (direccion  "Casa 13")
         (distrito  "Les Corts")
         (latitud  41.382308029274114)
         (longitud  2.1158585398656116)
    )

    ([Loc_Casa_14] of Localización
         (ciudad  "Barcelona")
         (direccion  "Casa 14")
         (distrito  "Les Corts")
         (latitud  41.3879241272098)
         (longitud  2.125409997537242)
    )

    ([Loc_Casa_15] of Localización
         (ciudad  "Barcelona")
         (direccion  "Casa 15")
         (distrito  "Gracia")
         (latitud  41.400721931534356)
         (longitud  2.1585707263734224)
    )

    ([Loc_Casa_16] of Localización
         (ciudad  "Barcelona")
         (direccion  "Casa 16")
         (distrito  "Gracia")
         (latitud  41.41030607234841)
         (longitud  2.1666992687023496)
    )

    ([Loc_Casa_17] of Localización
         (ciudad  "Barcelona")
         (direccion  "Casa 17")
         (distrito  "Sant Andreu")
         (latitud  41.41908607017247)
         (longitud  2.1841999975383652)
    )

    ([Loc_Casa_18] of Localización
         (ciudad  "Barcelona")
         (direccion  "Casa 18")
         (distrito  "Sant Andreu")
         (latitud  41.42725606814734)
         (longitud  2.1948978110315287)
    )

    ([Loc_Casa_19] of Localización
         (ciudad  "Barcelona")
         (direccion  "Casa 19")
         (distrito  "Sant Andreu")
         (latitud  41.41274021047772)
         (longitud  2.1786092687024348)
    )

    ([Loc_Casa_2] of Localización
         (ciudad  "Barcelona")
         (direccion  "Casa 2")
         (distrito  "Les Corts")
         (latitud  41.404764120952706)
         (longitud  2.1236099975378693)
    )

    ([Loc_Casa_20] of Localización
         (ciudad  "Barcelona")
         (direccion  "Casa 20")
         (distrito  "Sant Andreu")
         (latitud  41.426242157540734)
         (longitud  2.2048799975386446)
    )

    ([Loc_Casa_21] of Localización
         (ciudad  "Barcelona")
         (direccion  "Casa 21")
         (distrito  "Sants")
         (latitud  41.38462607871055)
         (longitud  2.136569268701414)
    )

    ([Loc_Casa_22] of Localización
         (ciudad  "Barcelona")
         (direccion  "Casa 22")
         (distrito  "Eixample")
         (latitud  41.39814607536146)
         (longitud  2.1488707263733544)
    )

    ([Loc_Casa_23] of Localización
         (ciudad  "Barcelona")
         (direccion  "Casa 23")
         (distrito  "Sant Marti")
         (latitud  41.42054584344439)
         (longitud  2.196719268702725)
    )

    ([Loc_Casa_24] of Localización
         (ciudad  "Barcelona")
         (direccion  "Casa 24")
         (distrito  "Sants")
         (latitud  41.38690607814583)
         (longitud  2.15092926870148)
    )

    ([Loc_Casa_25] of Localización
         (ciudad  "Barcelona")
         (direccion  "Casa 25")
         (distrito  "Eixample")
         (latitud  41.39268802798813)
         (longitud  2.1625192687016876)
    )

    ([Loc_Casa_26] of Localización
         (ciudad  "Barcelona")
         (direccion  "Casa 26")
         (distrito  "Eixample")
         (latitud  41.40285193179794)
         (longitud  2.1837770821949314)
    )

    ([Loc_Casa_27] of Localización
         (ciudad  "Barcelona")
         (direccion  "Casa 27")
         (distrito  "Sant Marti")
         (latitud  41.412862164172054)
         (longitud  2.192299268702445)
    )

    ([Loc_Casa_28] of Localización
         (ciudad  "Barcelona")
         (direccion  "Casa 28")
         (distrito  "Sant Marti")
         (latitud  41.41689802498765)
         (longitud  2.2044199975383156)
    )

    ([Loc_Casa_29] of Localización
         (ciudad  "Barcelona")
         (direccion  "Casa 29")
         (distrito  "Sant Marti")
         (latitud  41.41076193277689)
         (longitud  2.206379268702357)
    )

    ([Loc_Casa_3] of Localización
         (ciudad  "Barcelona")
         (direccion  "Casa 3")
         (distrito  "Nou Barris")
         (latitud  41.43877040946577)
         (longitud  2.1685907263748234)
    )

    ([Loc_Casa_30] of Localización
         (ciudad  "Barcelona")
         (direccion  "Casa 30")
         (distrito  "Ciutat Vella")
         (latitud  41.3980460753862)
         (longitud  2.199237811030474)
    )

    ([Loc_Casa_31] of Localización
         (ciudad  "Barcelona")
         (direccion  "Casa 31")
         (distrito  "Ciutat Vella")
         (latitud  41.38901802844292)
         (longitud  2.1770663533587076)
    )

    ([Loc_Casa_32] of Localización
         (ciudad  "Barcelona")
         (direccion  "Casa 32")
         (distrito  "Ciutat Vella")
         (latitud  41.3833121788113)
         (longitud  2.1680092687013723)
    )

    ([Loc_Casa_33] of Localización
         (ciudad  "Barcelona")
         (direccion  "Casa 33")
         (distrito  "Sants")
         (latitud  41.37554192841918)
         (longitud  2.137119268701059)
    )

    ([Loc_Casa_34] of Localización
         (ciudad  "Barcelona")
         (direccion  "Casa 34")
         (distrito  "Sants")
         (latitud  41.37850582783046)
         (longitud  2.1556414552083396)
    )

    ([Loc_Casa_35] of Localización
         (ciudad  "Barcelona")
         (direccion  "Casa 35")
         (distrito  "Ciutat Vella")
         (latitud  41.39397997926363)
         (longitud  2.187429997537463)
    )

    ([Loc_Casa_4] of Localización
         (ciudad  "Barcelona")
         (direccion  "Casa 4")
         (distrito  "Les Corts")
         (latitud  41.38784192994066)
         (longitud  2.1089692687015207)
    )

    ([Loc_Casa_5] of Localización
         (ciudad  "Barcelona")
         (direccion  "Casa 5")
         (distrito  "Sarria")
         (latitud  41.40873607273743)
         (longitud  2.1377614552094424)
    )

    ([Loc_Casa_6] of Localización
         (ciudad  "Barcelona")
         (direccion  "Casa 6")
         (distrito  "Gracia")
         (latitud  41.416786070742546)
         (longitud  2.1490270821954316)
    )

    ([Loc_Casa_7] of Localización
         (ciudad  "Barcelona")
         (direccion  "Casa 7")
         (distrito  "Horta")
         (latitud  41.42442997926081)
         (longitud  2.1563599975385874)
    )

    ([Loc_Casa_8] of Localización
         (ciudad  "Barcelona")
         (direccion  "Casa 8")
         (distrito  "Horta")
         (latitud  41.42736411255207)
         (longitud  2.165979268702986)
    )

    ([Loc_Casa_9] of Localización
         (ciudad  "Barcelona")
         (direccion  "Casa 9")
         (distrito  "Sarria")
         (latitud  41.39762412360588)
         (longitud  2.1316392687018926)
    )

    ([Loc_Centro] of Localización
         (ciudad  "Barcelona")
         (direccion  "Barcelona")
         (distrito  "Ciutat Vella")
         (latitud  41.387389979264086)
         (longitud  2.1685707263729355)
    )

    ([Loc_Club_Esp_1] of Localización
         (ciudad  "Barcelona")
         (direccion  "Club Esp 1")
         (distrito  "Nou Barris")
         (latitud  41.436294759224936)
         (longitud  2.163989268703306)
    )

    ([Loc_Club_Esp_10] of Localización
         (ciudad  "Barcelona")
         (direccion  "Club Esp 10")
         (distrito  "Sant Marti")
         (latitud  41.42072411502062)
         (longitud  2.2019407263741853)
    )

    ([Loc_Club_Esp_11] of Localización
         (ciudad  "Barcelona")
         (direccion  "Club Esp 11")
         (distrito  "Sant Marti")
         (latitud  41.40928021262079)
         (longitud  2.202110726373751)
    )

    ([Loc_Club_Esp_12] of Localización
         (ciudad  "Barcelona")
         (direccion  "Club Esp 12")
         (distrito  "Sarria")
         (latitud  41.39435217334304)
         (longitud  2.146799268701771)
    )

    ([Loc_Club_Esp_13] of Localización
         (ciudad  "Barcelona")
         (direccion  "Club Esp 13")
         (distrito  "Sants")
         (latitud  41.376529979265165)
         (longitud  2.1651907263725536)
    )

    ([Loc_Club_Esp_2] of Localización
         (ciudad  "Barcelona")
         (direccion  "Club Esp 2")
         (distrito  "Sarria")
         (latitud  41.40658021429299)
         (longitud  2.1323992687022)
    )

    ([Loc_Club_Esp_3] of Localización
         (ciudad  "Barcelona")
         (direccion  "Club Esp 3")
         (distrito  "Gracia")
         (latitud  41.41478802524925)
         (longitud  2.15230926870251)
    )

    ([Loc_Club_Esp_4] of Localización
         (ciudad  "Barcelona")
         (direccion  "Club Esp 4")
         (distrito  "Sant Andreu")
         (latitud  41.42930455379656)
         (longitud  2.185959268703051)
    )

    ([Loc_Club_Esp_5] of Localización
         (ciudad  "Barcelona")
         (direccion  "Club Esp 5")
         (distrito  "Horta")
         (latitud  41.42370020368816)
         (longitud  2.176031455209987)
    )

    ([Loc_Club_Esp_6] of Localización
         (ciudad  "Barcelona")
         (direccion  "Club Esp 6")
         (distrito  "Les Corts")
         (latitud  41.39270241780338)
         (longitud  2.1193599975374133)
    )

    ([Loc_Club_Esp_7] of Localización
         (ciudad  "Barcelona")
         (direccion  "Club Esp 7")
         (distrito  "Gracia")
         (latitud  41.40480435708302)
         (longitud  2.1590199975378788)
    )

    ([Loc_Club_Esp_8] of Localización
         (ciudad  "Barcelona")
         (direccion  "Club Esp 8")
         (distrito  "Sants")
         (latitud  41.37927218081208)
         (longitud  2.138770726372669)
    )

    ([Loc_Club_Esp_9] of Localización
         (ciudad  "Barcelona")
         (direccion  "Club Esp 9")
         (distrito  "Sant Marti")
         (latitud  41.40248435938179)
         (longitud  2.1911092687020552)
    )

    ([Loc_Cole_1] of Localización
         (ciudad  "Barcelona")
         (direccion  "Cole 1")
         (distrito  "Les Corts")
         (latitud  41.391356321509846)
         (longitud  2.1078692687016374)
    )

    ([Loc_Cole_10] of Localización
         (ciudad  "Barcelona")
         (direccion  "Cole 10")
         (distrito  "Sants")
         (latitud  41.376939043630315)
         (longitud  2.1536241668510945)
    )

    ([Loc_Cole_2] of Localización
         (ciudad  "Barcelona")
         (direccion  "Cole 2")
         (distrito  "Sant Andreu")
         (latitud  41.435514978161926)
         (longitud  2.1777912515104)
    )

    ([Loc_Cole_3] of Localización
         (ciudad  "Barcelona")
         (direccion  "Cole 3")
         (distrito  "Horta")
         (latitud  41.42626238039096)
         (longitud  2.170423641717255)
    )

    ([Loc_Cole_4] of Localización
         (ciudad  "Barcelona")
         (direccion  "Cole 4")
         (distrito  "Sarria")
         (latitud  41.40734505843084)
         (longitud  2.1403943705522677)
    )

    ([Loc_Cole_5] of Localización
         (ciudad  "Barcelona")
         (direccion  "Cole 5")
         (distrito  "Sant Marti")
         (latitud  41.42752282321861)
         (longitud  2.197160726374415)
    )

    ([Loc_Cole_6] of Localización
         (ciudad  "Barcelona")
         (direccion  "Cole 6")
         (distrito  "Sant Andreu")
         (latitud  41.41998847809238)
         (longitud  2.191107811031268)
    )

    ([Loc_Cole_7] of Localización
         (ciudad  "Barcelona")
         (direccion  "Cole 7")
         (distrito  "Horta")
         (latitud  41.41481434716363)
         (longitud  2.180829268702514)
    )

    ([Loc_Cole_8] of Localización
         (ciudad  "Barcelona")
         (direccion  "Cole 8")
         (distrito  "Eixample")
         (latitud  41.40446678291798)
         (longitud  2.177208539866408)
    )

    ([Loc_Cole_9] of Localización
         (ciudad  "Barcelona")
         (direccion  "Cole 9")
         (distrito  "Sants")
         (latitud  41.37941243261219)
         (longitud  2.1274607263726284)
    )

    ([Loc_Gym_1] of Localización
         (ciudad  "Barcelona")
         (direccion  "Gym 1")
         (distrito  "Sarria")
         (latitud  41.41275262670747)
         (longitud  2.142126353359575)
    )

    ([Loc_Gym_2] of Localización
         (ciudad  "Barcelona")
         (direccion  "Gym 2")
         (distrito  "Nou Barris")
         (latitud  41.42794673347099)
         (longitud  2.1785363533601365)
    )

    ([Loc_Gym_3] of Localización
         (ciudad  "Barcelona")
         (direccion  "Gym 3")
         (distrito  "Gracia")
         (latitud  41.41258918234278)
         (longitud  2.1661685398666966)
    )

    ([Loc_Gym_4] of Localización
         (ciudad  "Barcelona")
         (direccion  "Gym 4")
         (distrito  "Les Corts")
         (latitud  41.38940437233973)
         (longitud  2.1271192687015725)
    )

    ([Loc_Gym_5] of Localización
         (ciudad  "Barcelona")
         (direccion  "Gym 5")
         (distrito  "Sant Marti")
         (latitud  41.41245434950256)
         (longitud  2.200567811030973)
    )

    ([Loc_Gym_6] of Localización
         (ciudad  "Barcelona")
         (direccion  "Gym 6")
         (distrito  "Eixample")
         (latitud  41.39782265259499)
         (longitud  2.1832170821947163)
    )

    ([Loc_Gym_7] of Localización
         (ciudad  "Barcelona")
         (direccion  "Gym 1")
         (distrito  "Gracia")
         (latitud  41.40180459808298)
         (longitud  2.1515321840449055)
    )

    ([Loc_Hospital_1] of Localización
         (ciudad  "Barcelona")
         (direccion  "Hospital 1")
         (distrito  "Les Corts")
         (latitud  41.399106554484895)
         (longitud  2.117662912880511)
    )

    ([Loc_Hospital_2] of Localización
         (ciudad  "Barcelona")
         (direccion  "Hospital 2")
         (distrito  "Nou Barris")
         (latitud  41.439502365624136)
         (longitud  2.172625099389163)
    )

    ([Loc_Hospital_3] of Localización
         (ciudad  "Barcelona")
         (direccion  "Hospital 3")
         (distrito  "Gracia")
         (latitud  41.40891872681394)
         (longitud  2.170649268702294)
    )

    ([Loc_Hospital_4] of Localización
         (ciudad  "Barcelona")
         (direccion  "Hospital 4")
         (distrito  "Sants")
         (latitud  41.37557489459057)
         (longitud  2.1479292687010867)
    )

    ([Loc_Oci_1] of Localización
         (ciudad  "Barcelona")
         (direccion  "Oci 1")
         (distrito  "Sarria")
         (latitud  41.40780630724919)
         (longitud  2.150181455209397)
    )

    ([Loc_Oci_2] of Localización
         (ciudad  "Barcelona")
         (direccion  "Oci 2")
         (distrito  "Sant Andreu")
         (latitud  41.42332411405409)
         (longitud  2.1843792687028425)
    )

    ([Loc_Oci_3] of Localización
         (ciudad  "Barcelona")
         (direccion  "Oci 3")
         (distrito  "Sants")
         (latitud  41.38898876630258)
         (longitud  2.139579268701572)
    )

    ([Loc_Oci_4] of Localización
         (ciudad  "Barcelona")
         (direccion  "Oci 4")
         (distrito  "Ciutat Vella")
         (latitud  41.38739607802438)
         (longitud  2.1721099975372207)
    )

    ([Loc_Parc_1] of Localización
         (ciudad  "Barcelona")
         (direccion  "Parc 1")
         (distrito  "Horta")
         (latitud  41.43163303314954)
         (longitud  2.162457811031697)
    )

    ([Loc_Parc_2] of Localización
         (ciudad  "Barcelona")
         (direccion  "Parc 2")
         (distrito  "Les Corts")
         (latitud  41.394762657899946)
         (longitud  2.12244999753749)
    )

    ([Loc_Parc_3] of Localización
         (ciudad  "Barcelona")
         (direccion  "Parc 3")
         (distrito  "Gracia")
         (latitud  41.41057849091512)
         (longitud  2.160018539866634)
    )

    ([Loc_Parc_4] of Localización
         (ciudad  "Barcelona")
         (direccion  "Parc 4")
         (distrito  "Sant Marti")
         (latitud  41.42374087701905)
         (longitud  2.2018285398671193)
    )

    ([Loc_Parc_5] of Localización
         (ciudad  "Barcelona")
         (direccion  "Parc 5")
         (distrito  "Eixample")
         (latitud  41.38941851974045)
         (longitud  2.1502550993873246)
    )

    ([Loc_Parc_6] of Localización
         (ciudad  "Barcelona")
         (direccion  "Parc 6")
         (distrito  "Sants")
         (latitud  41.38236877941591)
         (longitud  2.163411455208472)
    )

    ([Loc_Parc_7] of Localización
         (ciudad  "Barcelona")
         (direccion  "Parc 7")
         (distrito  "Sant Marti")
         (latitud  41.39328656313333)
         (longitud  2.191789268701732)
    )

    ([Loc_Parking_1] of Localización
         (ciudad  "Barcelona")
         (direccion  "Parking 1")
         (distrito  "Gracia")
         (latitud  41.419515023758606)
         (longitud  2.1475685398669695)
    )

    ([Loc_Parking_2] of Localización
         (ciudad  "Barcelona")
         (direccion  "Parking 2")
         (distrito  "Sant Andreu")
         (latitud  41.424738695457464)
         (longitud  2.1809007263743205)
    )

    ([Loc_Parking_3] of Localización
         (ciudad  "Barcelona")
         (direccion  "Parking 3")
         (distrito  "Sarria")
         (latitud  41.39498265751859)
         (longitud  2.1336692687017815)
    )

    ([Loc_Parking_4] of Localización
         (ciudad  "Barcelona")
         (direccion  "Parking 4")
         (distrito  "Eixample")
         (latitud  41.39744874954209)
         (longitud  2.1628163533590166)
    )

    ([Loc_Super_1] of Localización
         (ciudad  "Barcelona")
         (direccion  "Super 1")
         (distrito  "Sarria")
         (latitud  41.40099997926292)
         (longitud  2.12899218404488)
    )

    ([Loc_Super_2] of Localización
         (ciudad  "Barcelona")
         (direccion  "Super 2")
         (distrito  "Horta")
         (latitud  41.42443606884649)
         (longitud  2.1612192687028706)
    )

    ([Loc_Super_3] of Localización
         (ciudad  "Barcelona")
         (direccion  "Super 3")
         (distrito  "Eixample")
         (latitud  41.40587412054029)
         (longitud  2.168779997537913)
    )

    ([Loc_Super_4] of Localización
         (ciudad  "Barcelona")
         (direccion  "Super 4")
         (distrito  "Eixample")
         (latitud  41.41068435125654)
         (longitud  2.1898685398666524)
    )

    ([Loc_Super_5] of Localización
         (ciudad  "Barcelona")
         (direccion  "Super 5")
         (distrito  "Sants")
         (latitud  41.38440632753359)
         (longitud  2.151789997537116)
    )

    ([Loc_Super_6] of Localización
         (ciudad  "Barcelona")
         (direccion  "Super 6")
         (distrito  "Sant Marti")
         (latitud  41.41396802535079)
         (longitud  2.2113499975382127)
    )

    ([Loc_Tp_1] of Localización
         (ciudad  "Barcelona")
         (direccion  "Tp 1")
         (distrito  "Nou Barris")
         (latitud  41.434680196884884)
         (longitud  2.1724121840461326)
    )

    ([Loc_Tp_10] of Localización
         (ciudad  "Barcelona")
         (direccion  "Tp 10")
         (distrito  "Sant Andreu")
         (latitud  41.43556432659521)
         (longitud  2.1890914552104324)
    )

    ([Loc_Tp_11] of Localización
         (ciudad  "Barcelona")
         (direccion  "Tp 11")
         (distrito  "Eixample")
         (latitud  41.395432656738436)
         (longitud  2.158387811030378)
    )

    ([Loc_Tp_12] of Localización
         (ciudad  "Barcelona")
         (direccion  "Tp 12")
         (distrito  "Sant Marti")
         (latitud  41.41413020961656)
         (longitud  2.195319997538196)
    )

    ([Loc_Tp_13] of Localización
         (ciudad  "Barcelona")
         (direccion  "Tp 13")
         (distrito  "Sant Marti")
         (latitud  41.41031044472825)
         (longitud  2.2110192687023567)
    )

    ([Loc_Tp_14] of Localización
         (ciudad  "Barcelona")
         (direccion  "Tp 14")
         (distrito  "Sant Marti")
         (latitud  41.40152826505662)
         (longitud  2.19374781103059)
    )

    ([Loc_Tp_15] of Localización
         (ciudad  "Barcelona")
         (direccion  "Tp 15")
         (distrito  "Ciutat Vella")
         (latitud  41.384978417932096)
         (longitud  2.1793577447803463)
    )

    ([Loc_Tp_16] of Localización
         (ciudad  "Barcelona")
         (direccion  "Tp 16")
         (distrito  "Ciutat Vella")
         (latitud  41.38596802882075)
         (longitud  2.166909997537193)
    )

    ([Loc_Tp_17] of Localización
         (ciudad  "Barcelona")
         (direccion  "Tp 1")
         (distrito  "Eixample")
         (latitud  41.38320607906213)
         (longitud  2.145689997537058)
    )

    ([Loc_Tp_18] of Localización
         (ciudad  "Barcelona")
         (direccion  "Tp 18")
         (distrito  "Sants")
         (latitud  41.374309050466564)
         (longitud  2.15189926870102)
    )

    ([Loc_Tp_2] of Localización
         (ciudad  "Barcelona")
         (direccion  "Tp 2")
         (distrito  "Nou Barris")
         (latitud  41.424356741032774)
         (longitud  2.16857853986716)
    )

    ([Loc_Tp_3] of Localización
         (ciudad  "Barcelona")
         (direccion  "Tp 3")
         (distrito  "Horta")
         (latitud  41.419128706578036)
         (longitud  2.154609997538405)
    )

    ([Loc_Tp_4] of Localización
         (ciudad  "Barcelona")
         (direccion  "Tp 4")
         (distrito  "Les Corts")
         (latitud  41.38426657653484)
         (longitud  2.1098363533585167)
    )

    ([Loc_Tp_5] of Localización
         (ciudad  "Barcelona")
         (direccion  "Tp 5")
         (distrito  "Les Corts")
         (latitud  41.39227632071259)
         (longitud  2.134870726373131)
    )

    ([Loc_Tp_6] of Localización
         (ciudad  "Barcelona")
         (direccion  "Tp 6")
         (distrito  "Sarria")
         (latitud  41.39961631434979)
         (longitud  2.143652184044827)
    )

    ([Loc_Tp_7] of Localización
         (ciudad  "Barcelona")
         (direccion  "Tp 7")
         (distrito  "Gracia")
         (latitud  41.403364358509826)
         (longitud  2.164952912880672)
    )

    ([Loc_Tp_8] of Localización
         (ciudad  "Barcelona")
         (direccion  "Tp 8")
         (distrito  "Horta")
         (latitud  41.415418254733346)
         (longitud  2.176199997538264)
    )

    ([Loc_Tp_9] of Localización
         (ciudad  "Barcelona")
         (direccion  "Tp 9")
         (distrito  "Sant Andreu")
         (latitud  41.42683606825152)
         (longitud  2.1879385398672566)
    )

    ([Loc_Uni_1] of Localización
         (ciudad  "Barcelona")
         (direccion  "IQS")
         (distrito  "Sarria")
         (latitud  41.40925884371995)
         (longitud  2.1269982331122432)
    )

    ([Loc_Uni_10] of Localización
         (ciudad  "Barcelona")
         (direccion  "UPF1")
         (distrito  "Sant Marti")
         (latitud  41.403669859664895)
         (longitud  2.192910994523812)
    )

    ([Loc_Uni_11] of Localización
         (ciudad  "Barcelona")
         (direccion  "UPF2")
         (distrito  "Ciutat Vella")
         (latitud  41.37798248198556)
         (longitud  2.176155082653507)
    )

    ([Loc_Uni_12] of Localización
         (ciudad  "Barcelona")
         (direccion  "UPF3")
         (distrito  "Ciutat Vella")
         (latitud  41.38566606318974)
         (longitud  2.185560662324326)
    )

    ([Loc_Uni_13] of Localización
         (ciudad  "Barcelona")
         (direccion  "UPC2")
         (distrito  "Sant Marti")
         (latitud  41.4187327921033)
         (longitud  2.2113981475123787)
    )

    ([Loc_Uni_14] of Localización
         (ciudad  "Barcelona")
         (direccion  "UPC3")
         (distrito  "Ciutat Vella")
         (latitud  41.38137364560006)
         (longitud  2.184609751284033)
    )

    ([Loc_Uni_2] of Localización
         (ciudad  "Barcelona")
         (direccion  "UIC")
         (distrito  "Sarria")
         (latitud  41.41298061755519)
         (longitud  2.134414650726346)
    )

    ([Loc_Uni_3] of Localización
         (ciudad  "Barcelona")
         (direccion  "URL")
         (distrito  "Gracia")
         (latitud  41.427817216854805)
         (longitud  2.149101983230563)
    )

    ([Loc_Uni_4] of Localización
         (ciudad  "Barcelona")
         (direccion  "UPC1")
         (distrito  "Les Corts")
         (latitud  41.3864131040675)
         (longitud  2.112817422419202)
    )

    ([Loc_Uni_5] of Localización
         (ciudad  "Barcelona")
         (direccion  "UB1")
         (distrito  "Les Corts")
         (latitud  41.38435535749256)
         (longitud  2.1150909259184245)
    )

    ([Loc_Uni_6] of Localización
         (ciudad  "Barcelona")
         (direccion  "UB2")
         (distrito  "Sants")
         (latitud  41.39295471486498)
         (longitud  2.152992610109936)
    )

    ([Loc_Uni_7] of Localización
         (ciudad  "Barcelona")
         (direccion  "UB3")
         (distrito  "Eixample")
         (latitud  41.38448297711208)
         (longitud  2.133231578776022)
    )

    ([Loc_Uni_8] of Localización
         (ciudad  "Barcelona")
         (direccion  "UB4")
         (distrito  "Eixample")
         (latitud  41.36965477974741)
         (longitud  2.1301114160799863)
    )

    ([Loc_Uni_9] of Localización
         (ciudad  "Barcelona")
         (direccion  "UB5")
         (distrito  "Sants")
         (latitud  41.39393861184673)
         (longitud  2.1674740862350994)
    )

    ([Oci_1] of Servicio
         (localizado_en  [Loc_Oci_1])
         (tipo_ser  "ocio nocturno")
    )

    ([Oci_2] of Servicio
         (localizado_en  [Loc_Oci_2])
         (tipo_ser  "ocio nocturno")
    )

    ([Oci_3] of Servicio
         (localizado_en  [Loc_Oci_3])
         (tipo_ser  "ocio nocturno")
    )

    ([Oci_4] of Servicio
         (localizado_en  [Loc_Oci_4])
         (tipo_ser  "ocio nocturno")
    )

    ([Parc_1] of Servicio
         (localizado_en  [Loc_Parc_1])
         (tipo_ser  "parque")
    )

    ([Parc_2] of Servicio
         (localizado_en  [Loc_Parc_2])
         (tipo_ser  "parque")
    )

    ([Parc_3] of Servicio
         (localizado_en  [Loc_Parc_3])
         (tipo_ser  "parque")
    )

    ([Parc_4] of Servicio
         (localizado_en  [Loc_Parc_4])
         (tipo_ser  "parque")
    )

    ([Parc_5] of Servicio
         (localizado_en  [Loc_Parc_5])
         (tipo_ser  "parque")
    )

    ([Parc_6] of Servicio
         (localizado_en  [Loc_Parc_6])
         (tipo_ser  "parque")
    )

    ([Parc_7] of Servicio
         (localizado_en  [Loc_Parc_7])
         (tipo_ser  "parque")
    )

    ([Parking_1] of Servicio
         (localizado_en  [Loc_Parking_1])
         (tipo_ser  "aparcamiento")
    )

    ([Parking_2] of Servicio
         (localizado_en  [Loc_Parking_2])
         (tipo_ser  "aparcamiento")
    )

    ([Parking_3] of Servicio
         (localizado_en  [Loc_Parking_3])
         (tipo_ser  "aparcamiento")
    )

    ([Parking_4] of Servicio
         (localizado_en  [Loc_Parking_4])
         (tipo_ser  "aparcamiento")
    )

    ([Super_1] of Servicio
         (localizado_en  [Loc_Super_1])
         (tipo_ser  "supermercado")
    )

    ([Super_2] of Servicio
         (localizado_en  [Loc_Super_2])
         (tipo_ser  "supermercado")
    )

    ([Super_3] of Servicio
         (localizado_en  [Loc_Super_3])
         (tipo_ser  "supermercado")
    )

    ([Super_4] of Servicio
         (localizado_en  [Loc_Super_4])
         (tipo_ser  "supermercado")
    )

    ([Super_5] of Servicio
         (localizado_en  [Loc_Super_5])
         (tipo_ser  "supermercado")
    )

    ([Super_6] of Servicio
         (localizado_en  [Loc_Super_6])
         (tipo_ser  "supermercado")
    )

    ([Tp_1] of Servicio
         (localizado_en  [Loc_Tp_1])
         (tipo_ser  "trasporte publico")
    )

    ([Tp_10] of Servicio
         (localizado_en  [Loc_Tp_10])
         (tipo_ser  "trasporte publico")
    )

    ([Tp_11] of Servicio
         (localizado_en  [Loc_Tp_11])
         (tipo_ser  "trasporte publico")
    )

    ([Tp_12] of Servicio
         (localizado_en  [Loc_Tp_12])
         (tipo_ser  "trasporte publico")
    )

    ([Tp_13] of Servicio
         (localizado_en  [Loc_Tp_13])
         (tipo_ser  "trasporte publico")
    )

    ([Tp_14] of Servicio
         (localizado_en  [Loc_Tp_14])
         (tipo_ser  "trasporte publico")
    )

    ([Tp_15] of Servicio
         (localizado_en  [Loc_Tp_15])
         (tipo_ser  "trasporte publico")
    )

    ([Tp_16] of Servicio
         (localizado_en  [Loc_Tp_16])
         (tipo_ser  "trasporte publico")
    )

    ([Tp_17] of Servicio
         (localizado_en  [Loc_Tp_17])
         (tipo_ser  "trasporte publico")
    )

    ([Tp_18] of Servicio
         (localizado_en  [Loc_Tp_18])
         (tipo_ser  "trasporte publico")
    )

    ([Tp_2] of Servicio
         (localizado_en  [Loc_Tp_2])
         (tipo_ser  "trasporte publico")
    )

    ([Tp_3] of Servicio
         (localizado_en  [Loc_Tp_3])
         (tipo_ser  "trasporte publico")
    )

    ([Tp_4] of Servicio
         (localizado_en  [Loc_Tp_4])
         (tipo_ser  "trasporte publico")
    )

    ([Tp_5] of Servicio
         (localizado_en  [Loc_Tp_5])
         (tipo_ser  "trasporte publico")
    )

    ([Tp_6] of Servicio
         (localizado_en  [Loc_Tp_6])
         (tipo_ser  "trasporte publico")
    )

    ([Tp_7] of Servicio
         (localizado_en  [Loc_Tp_7])
         (tipo_ser  "trasporte publico")
    )

    ([Tp_8] of Servicio
         (localizado_en  [Loc_Tp_8])
         (tipo_ser  "trasporte publico")
    )

    ([Tp_9] of Servicio
         (localizado_en  [Loc_Tp_9])
         (tipo_ser  "trasporte publico")
    )

    ([Uni_1] of Servicio
         (localizado_en  [Loc_Uni_1])
         (tipo_ser  "universidad")
    )

    ([Uni_10] of Servicio
         (localizado_en  [Loc_Uni_10])
         (tipo_ser  "universidad")
    )

    ([Uni_11] of Servicio
         (localizado_en  [Loc_Uni_11])
         (tipo_ser  "universidad")
    )

    ([Uni_12] of Servicio
         (localizado_en  [Loc_Uni_12])
         (tipo_ser  "universidad")
    )

    ([Uni_13] of Servicio
         (localizado_en  [Loc_Uni_13])
         (tipo_ser  "universidad")
    )

    ([Uni_14] of Servicio
         (localizado_en  [Loc_Uni_14])
         (tipo_ser  "universidad")
    )

    ([Uni_2] of Servicio
         (localizado_en  [Loc_Uni_2])
         (tipo_ser  "universidad")
    )

    ([Uni_3] of Servicio
         (localizado_en  [Loc_Uni_3])
         (tipo_ser  "universidad")
    )

    ([Uni_4] of Servicio
         (localizado_en  [Loc_Uni_4])
         (tipo_ser  "universidad")
    )

    ([Uni_5] of Servicio
         (localizado_en  [Loc_Uni_5])
         (tipo_ser  "universidad")
    )

    ([Uni_6] of Servicio
         (localizado_en  [Loc_Uni_6])
         (tipo_ser  "universidad")
    )

    ([Uni_7] of Servicio
         (localizado_en  [Loc_Uni_7])
         (tipo_ser  "universidad")
    )

    ([Uni_8] of Servicio
         (localizado_en  [Loc_Uni_8])
         (tipo_ser  "universidad")
    )

    ([Uni_9] of Servicio
         (localizado_en  [Loc_Uni_9])
         (tipo_ser  "universidad")
    )

)
