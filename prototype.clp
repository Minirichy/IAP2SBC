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
    (multislot calefaccion
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

(defclass Bano
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
    ;;; Si se busca un piso soleado
    (multislot soleado
        (type STRING)
        (create-accessor read-write))
    ;;; Las vistas de la vivienda si son: {buenas, malas...}
    (multislot vistas
        (type STRING)
        (create-accessor read-write))

    ;;;Cambiado de la ontologia original
    (slot precio
        (type FLOAT)
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
    (slot precio_max
        (type FLOAT)
        (create-accessor read-write))
    ;;; Precio minimo a pagar de la persona
    (slot precio_mim
        (type FLOAT)
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

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;; FIN ONTOLOGIA ;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;; INSTANCIAS ;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;;Instancias por ahora creadas sin protege

(definstances casas
	(casa1 of Vivienda (acceso_mov_red TRUE) (amueblada TRUE))
	(casa2 of Vivienda(acceso_mov_red FALSE) (amueblada TRUE))
	(casa3 of Vivienda (acceso_mov_red TRUE) (amueblada FALSE))
	(casa4 of Vivienda(acceso_mov_red FALSE) (amueblada FALSE))
)

(definstances ofertas
	(oferta1 of Oferta_Alquiler (oferta_de casa1) (precio 1000))
	(oferta2 of Oferta_Alquiler (oferta_de casa2) (precio 2000))
	(oferta3 of Oferta_Alquiler (oferta_de casa3) (precio 3000))
	(oferta4 of Oferta_Alquiler (oferta_de casa4) (precio 4000))
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

;TODO esto probablemente tendria que ir en la clase persona...
;en particular lo de usar varias instancias de un deftemplate con solo uno de los slots
;en cada una no me gusta, hay que hacerlo de otra forma.
(deftemplate preferencia
	(slot amueblada (type SYMBOL))
	(slot mov_reducida (type SYMBOL))
)

;Instancia de usuario donde guardamos sus datos. TODO esta bien hacerlo asi?
;make-instance no me funcionaba...

(definstances definstances-usuario
	(usuario of Persona (nombre "Usuario"))
)

(defrule primera_regla "regla inicial"
	=>
	(printout t "Bienvenido al sistema de recomendacion de alquileres" crlf)
	(focus preguntas)
)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;; MODULO PREGUNTAS ;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(defmodule preguntas
	 (export ?ALL)
	 (import MAIN ?ALL)
)




(deffunction pregunta (?pregunta)
	(format t "%s" ?pregunta)
 	(bind ?respuesta (read))
 	?respuesta
)

(deffunction pregunta-binaria (?pregunta)
	 (bind ?respuesta (pregunta ?pregunta))
	 (if (or (eq (lowcase ?respuesta) si) (eq (lowcase ?respuesta) s))
	 then TRUE
	 else FALSE
))

;TODO mas tipos de preguntas


(defrule preguntas::pregunta_edad "pregunta al usuario la edad"
	=>
	(send [usuario] put-edad (pregunta "Cuantos anyos tienes?"))
)

;TODO se usan assert de facts o se pone en el usuario??
(defrule preguntas::pregunta_amueblada "pregunta al usuario si prefiere vivienda amueblada"

	=>
	(if (pregunta-binaria "Prefieres la casa amueblada?") then (assert (preferencia (amueblada TRUE))) )
)

;Esto probablemente deberia estar en la clase persona
(defrule preguntas::pregunta_mov_reducida "pregunta al usuario si tiene movilidad reducida"

	=>
	(if (pregunta-binaria "Tienes movilidad reducida?") then (assert (preferencia (mov_reducida TRUE))))
)

(defrule preguntas::pregunta_precio_max "pregunta el precio maximo"
	=>
	(send [usuario] put-precio_max (pregunta "Cual es el precio maximo que estarias dispuesto a pagar?"))
)

;TODO: Hacer que la gestion de preguntas sea mas sofisticada?
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

(defrule abstraccion::regla_inicial "regla inicial abstraccion"
	=>
	(focus asociacion)

)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;; FIN MODULO ABSTRACCION ;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;; MODULO ASOCIACION ;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;Este modulo usa la informacion abstracta para hacer una lista de ofertas admisibles

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
	(preferencia (mov_reducida TRUE)) 
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
	(> ?precio (* (send [usuario] get-precio_max) 2))
)

(deffunction precio_ligeramente_excesivo(?precio)
	(and (not (precio_excesivo ?precio)) (> ?precio (send [usuario] get-precio_max)))
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

