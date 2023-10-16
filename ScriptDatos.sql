--
-- File generated with SQLiteStudio v3.4.4 on mié. oct. 11 19:09:55 2023
--
-- Text encoding used: System
--
PRAGMA foreign_keys = off;
BEGIN TRANSACTION;

-- Table: AppCursos_clases
DROP TABLE IF EXISTS AppCursos_clases;
CREATE TABLE IF NOT EXISTS "AppCursos_clases" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "nombre_clase" varchar(100) NOT NULL, "duracion_clase" integer NULL, "contenido_clase" varchar(200) NOT NULL, "descripcion_clase" text NOT NULL, "estado_clase" bool NOT NULL, "id_modulo_id" bigint NOT NULL REFERENCES "AppCursos_modulos" ("id") DEFERRABLE INITIALLY DEFERRED, "orden_clase" integer NULL);
INSERT INTO AppCursos_clases (id, nombre_clase, duracion_clase, contenido_clase, descripcion_clase, estado_clase, id_modulo_id, orden_clase) VALUES (1, 'sap pequeñito', 10, 'https://www.youtube.com/watch?v=sIUR49xqjYU', 'En este video aprenderemos a manejar el SAP', 1, 1, NULL);
INSERT INTO AppCursos_clases (id, nombre_clase, duracion_clase, contenido_clase, descripcion_clase, estado_clase, id_modulo_id, orden_clase) VALUES (2, 'matematicas01', 10, 'ww/matematicas0M61youtube/', 'Parte de las matemáticas que trata de la cantidad en general representándola por medio de letras u otros signos', 1, 3, NULL);
INSERT INTO AppCursos_clases (id, nombre_clase, duracion_clase, contenido_clase, descripcion_clase, estado_clase, id_modulo_id, orden_clase) VALUES (3, 'matematicas02', 10, 'ww/matematicas02youtube/', 'Parte de las matemáticas que estudia la extensión la forma de medirla las relaciones entre puntos líneas ángulos planos y figuras y la manera cómo se miden', 0, 3, NULL);
INSERT INTO AppCursos_clases (id, nombre_clase, duracion_clase, contenido_clase, descripcion_clase, estado_clase, id_modulo_id, orden_clase) VALUES (4, 'matematicas03', 10, 'ww/matematicas03youtube/', 'Acción de hacer las operaciones matemáticas necesarias para averiguar el resultado el valor o la medida de algo en expresión numérica', 1, 3, NULL);
INSERT INTO AppCursos_clases (id, nombre_clase, duracion_clase, contenido_clase, descripcion_clase, estado_clase, id_modulo_id, orden_clase) VALUES (5, 'seguridadentrabajo01', 10, 'ww/seguridadentrabajo01/cov', 'Elementos de protección personal adaptables e inteligentes', 0, 4, NULL);
INSERT INTO AppCursos_clases (id, nombre_clase, duracion_clase, contenido_clase, descripcion_clase, estado_clase, id_modulo_id, orden_clase) VALUES (6, 'seguridadentrabajo02', 10, 'ww/seguridadentrabajo02/cov', 'Perspectiva de género en la seguridad y salud en el trabajo', 1, 4, NULL);
INSERT INTO AppCursos_clases (id, nombre_clase, duracion_clase, contenido_clase, descripcion_clase, estado_clase, id_modulo_id, orden_clase) VALUES (7, 'seguridadentrabajo03', 10, 'ww/seguridadentrabajo03/cov', 'Educación capacitación y entrenamiento de trabajadores con uso de las TIC', 0, 4, NULL);
INSERT INTO AppCursos_clases (id, nombre_clase, duracion_clase, contenido_clase, descripcion_clase, estado_clase, id_modulo_id, orden_clase) VALUES (8, 'administracionempresa01', 10, 'ww/administracionempresa01/co', 'Estudio de prospectiva', 1, 5, NULL);
INSERT INTO AppCursos_clases (id, nombre_clase, duracion_clase, contenido_clase, descripcion_clase, estado_clase, id_modulo_id, orden_clase) VALUES (9, 'administracionempresa02', 10, 'ww/administracionempresa02/co', 'Lenguaje corporal', 0, 5, NULL);
INSERT INTO AppCursos_clases (id, nombre_clase, duracion_clase, contenido_clase, descripcion_clase, estado_clase, id_modulo_id, orden_clase) VALUES (10, 'administracionempresa03', 10, 'ww/administracionempresa03/co', 'Normas de información financiera', 1, 5, NULL);
INSERT INTO AppCursos_clases (id, nombre_clase, duracion_clase, contenido_clase, descripcion_clase, estado_clase, id_modulo_id, orden_clase) VALUES (11, 'ventas01', 10, 'ww/ventas01/cov', 'Comunicación eficaz', 0, 6, NULL);
INSERT INTO AppCursos_clases (id, nombre_clase, duracion_clase, contenido_clase, descripcion_clase, estado_clase, id_modulo_id, orden_clase) VALUES (12, 'ventas02', 10, 'ww/ventas02/cov', 'Estrategias de venta', 1, 6, NULL);
INSERT INTO AppCursos_clases (id, nombre_clase, duracion_clase, contenido_clase, descripcion_clase, estado_clase, id_modulo_id, orden_clase) VALUES (13, 'ventas03', 10, 'ww/ventas03/cov', ' Conocimiento del producto', 0, 6, NULL);
INSERT INTO AppCursos_clases (id, nombre_clase, duracion_clase, contenido_clase, descripcion_clase, estado_clase, id_modulo_id, orden_clase) VALUES (18, 'comunicaciones02', 10, 'ww/comunicaciones02/cov', 'Comunicación intercultural', 1, 8, NULL);
INSERT INTO AppCursos_clases (id, nombre_clase, duracion_clase, contenido_clase, descripcion_clase, estado_clase, id_modulo_id, orden_clase) VALUES (19, 'comunicaciones03', 10, 'ww/comunicaciones03/cov', 'Comunicación e información', 0, 8, NULL);
INSERT INTO AppCursos_clases (id, nombre_clase, duracion_clase, contenido_clase, descripcion_clase, estado_clase, id_modulo_id, orden_clase) VALUES (20, 'agentecomercial01', 10, 'ww/agentecomercial01/cov', 'Percepción de la Empresa Un agente decidirá trabajar contigo por la percepción que tenga de tu empresa', 1, 9, NULL);
INSERT INTO AppCursos_clases (id, nombre_clase, duracion_clase, contenido_clase, descripcion_clase, estado_clase, id_modulo_id, orden_clase) VALUES (21, 'agentecomercial02', 10, 'ww/agentecomercial02/cov', 'Muestras y apoyos para la venta', 0, 9, NULL);
INSERT INTO AppCursos_clases (id, nombre_clase, duracion_clase, contenido_clase, descripcion_clase, estado_clase, id_modulo_id, orden_clase) VALUES (22, 'agentecomercial03', 10, 'ww/agentecomercial03/cov', 'Forma de pago', 1, 9, NULL);
INSERT INTO AppCursos_clases (id, nombre_clase, duracion_clase, contenido_clase, descripcion_clase, estado_clase, id_modulo_id, orden_clase) VALUES (23, 'contadorpublico01', 10, 'ww/conntadorpublico01/cov', 'Contabilidad', 0, 10, NULL);
INSERT INTO AppCursos_clases (id, nombre_clase, duracion_clase, contenido_clase, descripcion_clase, estado_clase, id_modulo_id, orden_clase) VALUES (24, 'contadorpublico02', 10, 'ww/conntadorpublico02/cov', 'Matemática y finanzas', 1, 10, NULL);
INSERT INTO AppCursos_clases (id, nombre_clase, duracion_clase, contenido_clase, descripcion_clase, estado_clase, id_modulo_id, orden_clase) VALUES (25, 'contadorpublico03', 10, 'ww/conntadorpublico03/cov', 'Costos y presupuestos', 0, 10, NULL);
INSERT INTO AppCursos_clases (id, nombre_clase, duracion_clase, contenido_clase, descripcion_clase, estado_clase, id_modulo_id, orden_clase) VALUES (26, 'negociosinternacionales01', 10, 'ww/negociosinternacionales01/cov', 'La globalización en los negocios', 1, 11, NULL);
INSERT INTO AppCursos_clases (id, nombre_clase, duracion_clase, contenido_clase, descripcion_clase, estado_clase, id_modulo_id, orden_clase) VALUES (27, 'negociosinternacionales02', 10, 'ww/negociosinternacionales02/cov', 'Diferencias entre países', 0, 11, NULL);
INSERT INTO AppCursos_clases (id, nombre_clase, duracion_clase, contenido_clase, descripcion_clase, estado_clase, id_modulo_id, orden_clase) VALUES (28, 'negociosinternacionales03', 10, 'ww/negociosinternacionales03/cov', 'Comercio mundial e inversiones internacionales', 1, 11, NULL);
INSERT INTO AppCursos_clases (id, nombre_clase, duracion_clase, contenido_clase, descripcion_clase, estado_clase, id_modulo_id, orden_clase) VALUES (29, 'informatica01', 10, 'ww/informatica01/cov', 'la inteligencia artificial', 0, 2, NULL);
INSERT INTO AppCursos_clases (id, nombre_clase, duracion_clase, contenido_clase, descripcion_clase, estado_clase, id_modulo_id, orden_clase) VALUES (30, 'informatica02', 10, 'ww/informatica02/cov', 'la ciencia de los datos', 1, 2, NULL);
INSERT INTO AppCursos_clases (id, nombre_clase, duracion_clase, contenido_clase, descripcion_clase, estado_clase, id_modulo_id, orden_clase) VALUES (31, 'informatica03', 10, 'ww/informatica03/cov', ' la interacción persona-ordenador', 0, 2, NULL);
INSERT INTO AppCursos_clases (id, nombre_clase, duracion_clase, contenido_clase, descripcion_clase, estado_clase, id_modulo_id, orden_clase) VALUES (32, 'recursoshumanos01', 10, 'ww/recursoshumanos01/cov', 'Planificación y organización del personal', 1, 13, NULL);
INSERT INTO AppCursos_clases (id, nombre_clase, duracion_clase, contenido_clase, descripcion_clase, estado_clase, id_modulo_id, orden_clase) VALUES (33, 'recursoshumanos02', 10, 'ww/recursoshumanos02/cov', 'Procesos de reclutamiento', 0, 13, NULL);
INSERT INTO AppCursos_clases (id, nombre_clase, duracion_clase, contenido_clase, descripcion_clase, estado_clase, id_modulo_id, orden_clase) VALUES (34, 'recursoshumanos03', 10, 'ww/recursoshumanos03/cov', 'Evaluación del desempeño', 1, 13, NULL);
INSERT INTO AppCursos_clases (id, nombre_clase, duracion_clase, contenido_clase, descripcion_clase, estado_clase, id_modulo_id, orden_clase) VALUES (35, 'igenieriaindustrial01', 10, 'ww/igenieriaindustrial01/cov', 'Sistemas de Manufactura', 0, 14, NULL);
INSERT INTO AppCursos_clases (id, nombre_clase, duracion_clase, contenido_clase, descripcion_clase, estado_clase, id_modulo_id, orden_clase) VALUES (36, 'igenieriaindustrial02', 10, 'ww/igenieriaindustrial02/cov', 'Higiene y Seguridad Industrial', 1, 14, NULL);
INSERT INTO AppCursos_clases (id, nombre_clase, duracion_clase, contenido_clase, descripcion_clase, estado_clase, id_modulo_id, orden_clase) VALUES (37, 'igenieriaindustrial03', 10, 'ww/igenieriaindustrial03/cov', 'Psicología Industrial', 0, 14, NULL);
INSERT INTO AppCursos_clases (id, nombre_clase, duracion_clase, contenido_clase, descripcion_clase, estado_clase, id_modulo_id, orden_clase) VALUES (38, 'derecho01', 10, 'ww/derecho01/cov', 'Espacio cívico y democracia', 1, 15, NULL);
INSERT INTO AppCursos_clases (id, nombre_clase, duracion_clase, contenido_clase, descripcion_clase, estado_clase, id_modulo_id, orden_clase) VALUES (39, 'derecho02', 10, 'ww/derecho02/cov', 'Desarrollo y vivir con dignidad', 0, 15, NULL);
INSERT INTO AppCursos_clases (id, nombre_clase, duracion_clase, contenido_clase, descripcion_clase, estado_clase, id_modulo_id, orden_clase) VALUES (40, 'derecho03', 10, 'ww/derecho03/cov', 'Igualdad y no discriminación', 1, 15, NULL);
INSERT INTO AppCursos_clases (id, nombre_clase, duracion_clase, contenido_clase, descripcion_clase, estado_clase, id_modulo_id, orden_clase) VALUES (41, 'cienciascomunicacion01', 10, 'ww/cienciascomunicacion01/cov', 'Periodismo', 0, 16, NULL);
INSERT INTO AppCursos_clases (id, nombre_clase, duracion_clase, contenido_clase, descripcion_clase, estado_clase, id_modulo_id, orden_clase) VALUES (42, 'cienciascomunicacion02', 10, 'ww/cienciascomunicacion02/cov', 'Relaciones públicas', 1, 16, NULL);
INSERT INTO AppCursos_clases (id, nombre_clase, duracion_clase, contenido_clase, descripcion_clase, estado_clase, id_modulo_id, orden_clase) VALUES (43, 'cienciascomunicacion03', 10, 'ww/cienciascomunicacion03/cov', 'Mercadotecnia', 0, 16, NULL);
INSERT INTO AppCursos_clases (id, nombre_clase, duracion_clase, contenido_clase, descripcion_clase, estado_clase, id_modulo_id, orden_clase) VALUES (44, 'mercadotecnia01', 10, 'ww/mercadotecnia01/cov', 'Dirección de producto', 1, 17, NULL);
INSERT INTO AppCursos_clases (id, nombre_clase, duracion_clase, contenido_clase, descripcion_clase, estado_clase, id_modulo_id, orden_clase) VALUES (45, 'mercadotecnia02', 10, 'ww/mercadotecnia02/cov', ' Fijación de precios', 0, 17, NULL);
INSERT INTO AppCursos_clases (id, nombre_clase, duracion_clase, contenido_clase, descripcion_clase, estado_clase, id_modulo_id, orden_clase) VALUES (46, 'mercadotecnia03', 10, 'ww/mercadotecnia03/cov', 'Publicidad', 1, 17, NULL);
INSERT INTO AppCursos_clases (id, nombre_clase, duracion_clase, contenido_clase, descripcion_clase, estado_clase, id_modulo_id, orden_clase) VALUES (47, 'gastronomia01', 10, 'ww/gastronomia01/cov', 'Alimentos originarios', 0, 18, NULL);
INSERT INTO AppCursos_clases (id, nombre_clase, duracion_clase, contenido_clase, descripcion_clase, estado_clase, id_modulo_id, orden_clase) VALUES (48, 'gastronomia02', 10, 'ww/gastronomia02/cov', 'Cocina prehispánica', 1, 18, NULL);
INSERT INTO AppCursos_clases (id, nombre_clase, duracion_clase, contenido_clase, descripcion_clase, estado_clase, id_modulo_id, orden_clase) VALUES (49, 'gastronomia03', 10, 'ww/gastronomia03/cov', 'Restaurantes y cafeterías', 0, 18, NULL);
INSERT INTO AppCursos_clases (id, nombre_clase, duracion_clase, contenido_clase, descripcion_clase, estado_clase, id_modulo_id, orden_clase) VALUES (50, 'animaciondigital01', 10, 'ww/animaciondigital01/cov', 'imágenes', 1, 19, NULL);
INSERT INTO AppCursos_clases (id, nombre_clase, duracion_clase, contenido_clase, descripcion_clase, estado_clase, id_modulo_id, orden_clase) VALUES (51, 'animaciondigital02', 10, 'ww/animaciondigital01/cov', 'dibujo', 0, 19, NULL);
INSERT INTO AppCursos_clases (id, nombre_clase, duracion_clase, contenido_clase, descripcion_clase, estado_clase, id_modulo_id, orden_clase) VALUES (52, 'php 1', 3, 'https://www.youtube.com/watch?v=gG2bqgt_6po&ab_channel=STAC10N', 'manejo de php', 1, 101, NULL);

-- Table: AppCursos_cursos
DROP TABLE IF EXISTS AppCursos_cursos;
CREATE TABLE IF NOT EXISTS "AppCursos_cursos" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "nombre_curso" varchar(100) NOT NULL, "descripcion_curso" varchar(500) NOT NULL, "estado_curso" bool NOT NULL, "duracion_curso" integer NULL, "iconoCurso" varchar(100) NULL, "id_cargo_id" bigint NULL REFERENCES "AppUsuarios_cargo" ("id") DEFERRABLE INITIALLY DEFERRED);
INSERT INTO AppCursos_cursos (id, nombre_curso, descripcion_curso, estado_curso, duracion_curso, iconoCurso, id_cargo_id) VALUES (3, 'Informatica', 'El curso esta basado en clases', 0, 3, '', NULL);
INSERT INTO AppCursos_cursos (id, nombre_curso, descripcion_curso, estado_curso, duracion_curso, iconoCurso, id_cargo_id) VALUES (4, 'Ingles', 'El curso esta basado en nada', 1, 5, 'IconosCurso/EvidenciasMaraton1_fLkfMEX.png', NULL);
INSERT INTO AppCursos_cursos (id, nombre_curso, descripcion_curso, estado_curso, duracion_curso, iconoCurso, id_cargo_id) VALUES (21, 'Contabilidad', 'gh,{ñlklkjbvjb', 0, 6, 'IconosCurso/CertificadodeEstudio_mB0sMWS.jpg', NULL);
INSERT INTO AppCursos_cursos (id, nombre_curso, descripcion_curso, estado_curso, duracion_curso, iconoCurso, id_cargo_id) VALUES (24, 'Contabilidad', 'gh,{ñlklkjbvjb', 0, 6, 'IconosCurso/yo.jpeg', NULL);
INSERT INTO AppCursos_cursos (id, nombre_curso, descripcion_curso, estado_curso, duracion_curso, iconoCurso, id_cargo_id) VALUES (25, 'Informatica', 'top´ñlkjhbnm', 1, 6, 'IconosCurso/CertificadodeEstudio.jpg', NULL);
INSERT INTO AppCursos_cursos (id, nombre_curso, descripcion_curso, estado_curso, duracion_curso, iconoCurso, id_cargo_id) VALUES (26, 'Informatica', 'top´ñlkjhbnm', 1, 6, 'IconosCurso/CertificadodeEstudio_lyUTRfo.jpg', NULL);
INSERT INTO AppCursos_cursos (id, nombre_curso, descripcion_curso, estado_curso, duracion_curso, iconoCurso, id_cargo_id) VALUES (34, 'SAP', 'Este curso introduce al manejo del SAP', 1, 4, 'IconosCurso/arepachorizo.jpg', NULL);
INSERT INTO AppCursos_cursos (id, nombre_curso, descripcion_curso, estado_curso, duracion_curso, iconoCurso, id_cargo_id) VALUES (35, 'Informatica', 'El curso nos permitira aprendre', 0, 10, 'IconosCurso/WhatsApp_Image_2023-05-04_at_3.39.54_PM.jpeg', NULL);
INSERT INTO AppCursos_cursos (id, nombre_curso, descripcion_curso, estado_curso, duracion_curso, iconoCurso, id_cargo_id) VALUES (40, 'Matematicas', 'Las matemáticas se pueden definir como “la ciencia que estudia las relaciones entre cantidades', 0, 18, 'iconoscurso/matematicas.jpg', NULL);
INSERT INTO AppCursos_cursos (id, nombre_curso, descripcion_curso, estado_curso, duracion_curso, iconoCurso, id_cargo_id) VALUES (41, 'seguridad en el trabajo', 'es una disciplina que se encarga de la prevención de las lesiones y enfermedades causadas por las condiciones de trabajo y la protección y promoción de la salud de los trabajadores', 1, 18, 'IconosCurso/WhatsApp_Image_2023-04-03_at_11.23.46_PM.jpeg', NULL);
INSERT INTO AppCursos_cursos (id, nombre_curso, descripcion_curso, estado_curso, duracion_curso, iconoCurso, id_cargo_id) VALUES (42, ' administracion de empresa', ' ciencia social económica y de carácter técnico', 0, 18, ' iconoscurso/administracion de empresa.jpg', NULL);
INSERT INTO AppCursos_cursos (id, nombre_curso, descripcion_curso, estado_curso, duracion_curso, iconoCurso, id_cargo_id) VALUES (43, ' ventas', ' entrega de un determinado bien o servicio bajo un precio estipulado o convenido y a cambio de una contraprestación económica en forma de dinero por parte de un vendedor o proveedor', 0, 18, 'iconoscurso/ventas.jpg', NULL);
INSERT INTO AppCursos_cursos (id, nombre_curso, descripcion_curso, estado_curso, duracion_curso, iconoCurso, id_cargo_id) VALUES (44, 'economia', 'Ciencia que estudia los recursos la creación de riqueza y la producción distribución y consumo de bienes y servicios para satisfacer las necesidades humanas', 1, 18, 'IconosCurso/WhatsApp_Image_2023-04-03_at_11.23.46_PM_ElRhbyT.jpeg', NULL);
INSERT INTO AppCursos_cursos (id, nombre_curso, descripcion_curso, estado_curso, duracion_curso, iconoCurso, id_cargo_id) VALUES (45, 'administracion de comunicaciones ', 'Las comunicaciones se pueden referir a cualquier sistema para distribuir sonidos imágenes o información', 1, 18, ' iconoscurso/administracion de comunicaciones.jpg', NULL);
INSERT INTO AppCursos_cursos (id, nombre_curso, descripcion_curso, estado_curso, duracion_curso, iconoCurso, id_cargo_id) VALUES (46, 'agente comercial', 'persona responsable de ejecutar las actividades de comercialización y venta de productos y/o servicios', 1, 18, 'IconosCurso/FB_IMG_1688172360371.jpg', 2);
INSERT INTO AppCursos_cursos (id, nombre_curso, descripcion_curso, estado_curso, duracion_curso, iconoCurso, id_cargo_id) VALUES (47, 'contador publico ', 'un contador público o contable es un profesional que ejerce la disciplina de la contabilidad o contaduría dentro de un ámbito económico', 0, 18, 'iconoscurso/contador publico.jpg', NULL);
INSERT INTO AppCursos_cursos (id, nombre_curso, descripcion_curso, estado_curso, duracion_curso, iconoCurso, id_cargo_id) VALUES (48, 'negocio internacionales', 'Los negocios internacionales en definitiva abarcan a las actividades comerciales que se desarrollan en más de un país', 1, 18, 'iconoscurso/negocio internacionales.jpg', 1);
INSERT INTO AppCursos_cursos (id, nombre_curso, descripcion_curso, estado_curso, duracion_curso, iconoCurso, id_cargo_id) VALUES (50, 'recursos humanos ', 'En la administración y economía de la empresa se denomina función de recurso humano al órgano de gestión empresarial responsable de las decisiones y acciones', 1, 18, 'iconoscurso/recursos humanos.jpg', NULL);
INSERT INTO AppCursos_cursos (id, nombre_curso, descripcion_curso, estado_curso, duracion_curso, iconoCurso, id_cargo_id) VALUES (51, 'ingenieria industrial ', 'La ingeniería industrial es una profesión de ingeniería que se ocupa de la optimización de procesos', 0, 18, 'iconoscurso/ingenieria industrial.jpg', NULL);
INSERT INTO AppCursos_cursos (id, nombre_curso, descripcion_curso, estado_curso, duracion_curso, iconoCurso, id_cargo_id) VALUES (52, 'dereho', 'El derecho? puede definirse como un sistema de principios y normas.', 1, 18, 'iconoscurso/dereho.jpg', 3);
INSERT INTO AppCursos_cursos (id, nombre_curso, descripcion_curso, estado_curso, duracion_curso, iconoCurso, id_cargo_id) VALUES (53, 'ciencias de comunicación', 'Las ciencias de la comunicación analizan estudian y discuten los fenómenos relacionados con la información y el efecto de la acción de la comunicación humana', 0, 18, 'iconoscurso/ciencias de comunicación.jpg', 1);
INSERT INTO AppCursos_cursos (id, nombre_curso, descripcion_curso, estado_curso, duracion_curso, iconoCurso, id_cargo_id) VALUES (54, 'mercadotecnia', 'Mercadotecnia es el conjunto de acciones y estrategias llevadas a cabo para promocionar una marca y sus productos o servicios.', 1, 18, 'iconoscurso/mercadotecnia.jpg', 3);
INSERT INTO AppCursos_cursos (id, nombre_curso, descripcion_curso, estado_curso, duracion_curso, iconoCurso, id_cargo_id) VALUES (55, 'gastronomia', 'La gastronomía ? es el arte que estudia la relación del ser humano con su alimentación y su medio ambiente o entorno.', 1, 18, 'iconoscurso/gastronomia.jpg', 1);
INSERT INTO AppCursos_cursos (id, nombre_curso, descripcion_curso, estado_curso, duracion_curso, iconoCurso, id_cargo_id) VALUES (56, 'animacion digital ', 'La animación por computadora es la técnica que consiste en crear imágenes en movimiento mediante el uso de una computadora.', 1, 18, 'iconoscurso/animacion digital.jpg', NULL);
INSERT INTO AppCursos_cursos (id, nombre_curso, descripcion_curso, estado_curso, duracion_curso, iconoCurso, id_cargo_id) VALUES (58, 'administrador de logistica', 'profesional que se encarga de ejecutar actividades relacionadas con los procesos de compra almacenaje control de inventario distribución y transporte', 1, 18, 'iconoscurso/administrador de logistica.jpg', 2);
INSERT INTO AppCursos_cursos (id, nombre_curso, descripcion_curso, estado_curso, duracion_curso, iconoCurso, id_cargo_id) VALUES (59, 'ingenieria en software', 'La Ingeniería de Software es una de las ramas de las ciencias de la computación que estudia la creación de software confiable y de calidad basándose en métodos y técnicas de ingeniería y brindando soporte operacional y de mantenimiento', 0, 18, 'iconoscurso/igenieria en software.jpg', NULL);
INSERT INTO AppCursos_cursos (id, nombre_curso, descripcion_curso, estado_curso, duracion_curso, iconoCurso, id_cargo_id) VALUES (84, 'Informatica', 'El curso esta basado en clases', 1, 2, 'IconosCurso/FB_IMG_1688176348403_gd6jalH.jpg', NULL);
INSERT INTO AppCursos_cursos (id, nombre_curso, descripcion_curso, estado_curso, duracion_curso, iconoCurso, id_cargo_id) VALUES (85, 'Informatica', 'El curso esta basado en clases', 1, 2, 'IconosCurso/FB_IMG_1688176348403_GlaXRTm.jpg', NULL);
INSERT INTO AppCursos_cursos (id, nombre_curso, descripcion_curso, estado_curso, duracion_curso, iconoCurso, id_cargo_id) VALUES (86, 'Informatica', 'El curso esta basado en clases', 1, 2, 'IconosCurso/FB_IMG_1688176348403_K1PCpaV.jpg', NULL);
INSERT INTO AppCursos_cursos (id, nombre_curso, descripcion_curso, estado_curso, duracion_curso, iconoCurso, id_cargo_id) VALUES (87, 'Recursos', 'Curso introductorio', 0, 4, 'IconosCurso/20230617_163240_a9aVrjH.jpg', NULL);
INSERT INTO AppCursos_cursos (id, nombre_curso, descripcion_curso, estado_curso, duracion_curso, iconoCurso, id_cargo_id) VALUES (88, 'Recursos', 'Curso introductorio', 0, 4, 'IconosCurso/20230617_163240.jpg', NULL);
INSERT INTO AppCursos_cursos (id, nombre_curso, descripcion_curso, estado_curso, duracion_curso, iconoCurso, id_cargo_id) VALUES (89, 'Recursos', 'Curso introductorio', 0, 4, 'IconosCurso/20230617_163240_sRRluXU.jpg', NULL);
INSERT INTO AppCursos_cursos (id, nombre_curso, descripcion_curso, estado_curso, duracion_curso, iconoCurso, id_cargo_id) VALUES (90, 'Contabilidad', 'Conceptos basicos sobre gastronomia', 0, 6, 'IconosCurso/20230104_071937.jpg', NULL);
INSERT INTO AppCursos_cursos (id, nombre_curso, descripcion_curso, estado_curso, duracion_curso, iconoCurso, id_cargo_id) VALUES (91, 'Contabilidad', 'Conceptos basicos sobre gastronomia', 0, 6, 'IconosCurso/20230104_071937.jpg', NULL);
INSERT INTO AppCursos_cursos (id, nombre_curso, descripcion_curso, estado_curso, duracion_curso, iconoCurso, id_cargo_id) VALUES (92, 'Introduccion al SAP', 'no se cualquier cosa', 0, 3, 'IconosCurso/FirmaPilar.jpeg', NULL);
INSERT INTO AppCursos_cursos (id, nombre_curso, descripcion_curso, estado_curso, duracion_curso, iconoCurso, id_cargo_id) VALUES (93, 'Introduccion al SAP', 'no se cualquier cosa', 0, 3, 'IconosCurso/FirmaPilar_IE4GL4k.jpeg', NULL);
INSERT INTO AppCursos_cursos (id, nombre_curso, descripcion_curso, estado_curso, duracion_curso, iconoCurso, id_cargo_id) VALUES (94, 'Informatica', 'El curso nos permitira aprendre', 0, 3, 'IconosCurso/20230629_125040.jpg', NULL);
INSERT INTO AppCursos_cursos (id, nombre_curso, descripcion_curso, estado_curso, duracion_curso, iconoCurso, id_cargo_id) VALUES (95, 'Informatica', 'El curso nos permitira aprendre', 0, 3, 'media/IconosCurso/20230629_125040.jpg', NULL);
INSERT INTO AppCursos_cursos (id, nombre_curso, descripcion_curso, estado_curso, duracion_curso, iconoCurso, id_cargo_id) VALUES (96, 'Informatica', 'El curso nos permitira aprendre', 0, 3, 'media/IconosCurso/20230629_125040_tUqSuRV.jpg', NULL);
INSERT INTO AppCursos_cursos (id, nombre_curso, descripcion_curso, estado_curso, duracion_curso, iconoCurso, id_cargo_id) VALUES (97, 'Introduccion al SAP', 'Conceptos basicos sobre gastronomia', 0, 5, 'media/IconosCurso/FB_IMG_1688172360371.jpg', NULL);
INSERT INTO AppCursos_cursos (id, nombre_curso, descripcion_curso, estado_curso, duracion_curso, iconoCurso, id_cargo_id) VALUES (98, 'NNNNNNNNN', 'perdon por hacer este curso asi', 0, 2, 'IconosCurso/Captura_de_pantalla_2023-07-25_212458.png', NULL);
INSERT INTO AppCursos_cursos (id, nombre_curso, descripcion_curso, estado_curso, duracion_curso, iconoCurso, id_cargo_id) VALUES (99, 'NNNNNNNNN', 'perdon por hacer este curso asi', 0, 2, 'IconosCurso/Captura_de_pantalla_2023-07-25_212458_1skeqWj.png', NULL);
INSERT INTO AppCursos_cursos (id, nombre_curso, descripcion_curso, estado_curso, duracion_curso, iconoCurso, id_cargo_id) VALUES (100, 'NNNNNNNNN', 'perdon por hacer este curso asi', 0, 2, 'IconosCurso/Captura_de_pantalla_2023-07-25_212458_1NhuAr1.png', NULL);
INSERT INTO AppCursos_cursos (id, nombre_curso, descripcion_curso, estado_curso, duracion_curso, iconoCurso, id_cargo_id) VALUES (101, 'NNNNNNNNN', 'perdon por hacer este curso asi', 0, 2, 'IconosCurso/Captura_de_pantalla_2023-07-25_212458_k8KPFhR.png', NULL);
INSERT INTO AppCursos_cursos (id, nombre_curso, descripcion_curso, estado_curso, duracion_curso, iconoCurso, id_cargo_id) VALUES (102, 'Informatica', 'El curso esta basado en clases', 0, 3, 'IconosCurso/FB_IMG_1685840255386.jpg', NULL);
INSERT INTO AppCursos_cursos (id, nombre_curso, descripcion_curso, estado_curso, duracion_curso, iconoCurso, id_cargo_id) VALUES (103, 'Informatica', 'El curso esta basado en clases', 0, 3, 'IconosCurso/FB_IMG_1685840255386_bxgGO7l.jpg', NULL);
INSERT INTO AppCursos_cursos (id, nombre_curso, descripcion_curso, estado_curso, duracion_curso, iconoCurso, id_cargo_id) VALUES (104, 'Informatica', 'El curso esta basado en clases', 0, 3, 'IconosCurso/FB_IMG_1685840255386_ytxxKJ1.jpg', NULL);
INSERT INTO AppCursos_cursos (id, nombre_curso, descripcion_curso, estado_curso, duracion_curso, iconoCurso, id_cargo_id) VALUES (105, 'Informatica', 'El curso esta basado en clases', 0, 3, 'IconosCurso/FB_IMG_1685840255386_MZd8mD6.jpg', NULL);
INSERT INTO AppCursos_cursos (id, nombre_curso, descripcion_curso, estado_curso, duracion_curso, iconoCurso, id_cargo_id) VALUES (106, 'Informatica', 'El curso esta basado en clases', 0, 3, 'IconosCurso/FB_IMG_1685840255386_Ued1ZK9.jpg', NULL);
INSERT INTO AppCursos_cursos (id, nombre_curso, descripcion_curso, estado_curso, duracion_curso, iconoCurso, id_cargo_id) VALUES (107, 'Informatica', 'El curso esta basado en clases', 0, 3, 'IconosCurso/FB_IMG_1685840255386_fjPkge6.jpg', NULL);
INSERT INTO AppCursos_cursos (id, nombre_curso, descripcion_curso, estado_curso, duracion_curso, iconoCurso, id_cargo_id) VALUES (108, 'Informatica', 'El curso esta basado en clases', 1, 3, 'IconosCurso/FB_IMG_1688226308026.jpg', NULL);
INSERT INTO AppCursos_cursos (id, nombre_curso, descripcion_curso, estado_curso, duracion_curso, iconoCurso, id_cargo_id) VALUES (109, 'Informatica', 'El curso esta basado en clases', 1, 3, 'IconosCurso/FB_IMG_1688226308026_FZe1Ab6.jpg', NULL);
INSERT INTO AppCursos_cursos (id, nombre_curso, descripcion_curso, estado_curso, duracion_curso, iconoCurso, id_cargo_id) VALUES (110, 'Informatica', 'El curso esta basado en clases', 1, 4, 'IconosCurso/FB_IMG_1688172360371.jpg', NULL);
INSERT INTO AppCursos_cursos (id, nombre_curso, descripcion_curso, estado_curso, duracion_curso, iconoCurso, id_cargo_id) VALUES (111, 'Informatica', 'El curso esta basado en clases', 1, 4, 'IconosCurso/FB_IMG_1688172360371_w6AAHw2.jpg', NULL);
INSERT INTO AppCursos_cursos (id, nombre_curso, descripcion_curso, estado_curso, duracion_curso, iconoCurso, id_cargo_id) VALUES (112, 'Informatica', 'El curso esta basado en clases', 1, 4, 'IconosCurso/FB_IMG_1688172360371_lTumZ2w.jpg', NULL);
INSERT INTO AppCursos_cursos (id, nombre_curso, descripcion_curso, estado_curso, duracion_curso, iconoCurso, id_cargo_id) VALUES (113, 'Informatica', 'El curso esta basado en clases', 1, 2, 'IconosCurso/FB_IMG_1688172360371_zNhPXsv.jpg', NULL);
INSERT INTO AppCursos_cursos (id, nombre_curso, descripcion_curso, estado_curso, duracion_curso, iconoCurso, id_cargo_id) VALUES (114, 'Informatica', 'El curso esta basado en clases', 1, 2, 'IconosCurso/FB_IMG_1688172360371_8UbU63x.jpg', NULL);
INSERT INTO AppCursos_cursos (id, nombre_curso, descripcion_curso, estado_curso, duracion_curso, iconoCurso, id_cargo_id) VALUES (115, 'Introduccion al SAP', 'El curso esta basado en clases', 1, 5, 'IconosCurso/FB_IMG_1686955160163.jpg', NULL);
INSERT INTO AppCursos_cursos (id, nombre_curso, descripcion_curso, estado_curso, duracion_curso, iconoCurso, id_cargo_id) VALUES (116, 'Contabilidad', 'Curso introductorio', 0, 5, 'IconosCurso/FB_IMG_1685840238208.jpg', NULL);
INSERT INTO AppCursos_cursos (id, nombre_curso, descripcion_curso, estado_curso, duracion_curso, iconoCurso, id_cargo_id) VALUES (117, 'Gastronomia', 'Curso introductorio', 1, 4, 'IconosCurso/FB_IMG_1685840238208_N28IJq3.jpg', NULL);
INSERT INTO AppCursos_cursos (id, nombre_curso, descripcion_curso, estado_curso, duracion_curso, iconoCurso, id_cargo_id) VALUES (118, 'Informatica', 'Este curso introduce al manejo del SAP', 1, 3, 'IconosCurso/FB_IMG_1686955160163_P9ZgY54.jpg', NULL);
INSERT INTO AppCursos_cursos (id, nombre_curso, descripcion_curso, estado_curso, duracion_curso, iconoCurso, id_cargo_id) VALUES (119, 'Ingles', 'Conceptos basicos sobre gastronomia', 1, 5, 'IconosCurso/20230521_080515.jpg', NULL);
INSERT INTO AppCursos_cursos (id, nombre_curso, descripcion_curso, estado_curso, duracion_curso, iconoCurso, id_cargo_id) VALUES (120, 'Corazón Roto', 'Pensando como lo'' loco''', 1, 432, 'IconosCurso/chica-con-mascara-en-la-ciudad_3805x2140_xtrafondos.com.jpg', NULL);
INSERT INTO AppCursos_cursos (id, nombre_curso, descripcion_curso, estado_curso, duracion_curso, iconoCurso, id_cargo_id) VALUES (121, 'Introducción a PHP', 'aprenderaz las bases de php', 1, 30, 'IconosCurso/Captura_de_pantalla_2023-04-28_191055_gfxBXFF.png', NULL);
INSERT INTO AppCursos_cursos (id, nombre_curso, descripcion_curso, estado_curso, duracion_curso, iconoCurso, id_cargo_id) VALUES (122, 'cyres', 'Introducción', 1, 10, 'IconosCurso/1000219088.jpg', NULL);
INSERT INTO AppCursos_cursos (id, nombre_curso, descripcion_curso, estado_curso, duracion_curso, iconoCurso, id_cargo_id) VALUES (123, 'cyres', 'Introducción', 1, 10, 'IconosCurso/1000219088_trud5ZV.jpg', NULL);

-- Table: AppCursos_evaluaciones
DROP TABLE IF EXISTS AppCursos_evaluaciones;
CREATE TABLE IF NOT EXISTS "AppCursos_evaluaciones" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "nombre_evaluacion" varchar(100) NOT NULL, "numero_intentos" integer NOT NULL, "descripcion_evaluacion" varchar(300) NULL, "instrucciones_evaluacion" text NULL, "duracion_evaluacion_admin" integer NOT NULL, "finalizada" bool NOT NULL, "id_modulo_id" bigint NOT NULL REFERENCES "AppCursos_modulos" ("id") DEFERRABLE INITIALLY DEFERRED);
INSERT INTO AppCursos_evaluaciones (id, nombre_evaluacion, numero_intentos, descripcion_evaluacion, instrucciones_evaluacion, duracion_evaluacion_admin, finalizada, id_modulo_id) VALUES (4, 'Evaluación Matematicas 1', 2, 'Esta evaluación evaluara lo aprendido del modulo', 'leer atentamente y responda correctamente', 45, 0, 3);
INSERT INTO AppCursos_evaluaciones (id, nombre_evaluacion, numero_intentos, descripcion_evaluacion, instrucciones_evaluacion, duracion_evaluacion_admin, finalizada, id_modulo_id) VALUES (5, 'Evaluación Seguridad en el Trabajo v1', 2, 'Esta evalución evaluara lo aprendido del modulo', 'leer atentamente y responda correctamente', 45, 0, 4);
INSERT INTO AppCursos_evaluaciones (id, nombre_evaluacion, numero_intentos, descripcion_evaluacion, instrucciones_evaluacion, duracion_evaluacion_admin, finalizada, id_modulo_id) VALUES (6, 'Evaluación Administración de Empresa v1', 2, 'En esta evalución vas a demostrar todo lo que aprendiste en el modulo de administración de empresa', 'leer atentamente y responda correctamente', 45, 1, 5);
INSERT INTO AppCursos_evaluaciones (id, nombre_evaluacion, numero_intentos, descripcion_evaluacion, instrucciones_evaluacion, duracion_evaluacion_admin, finalizada, id_modulo_id) VALUES (7, 'Evaluación Ventas v1', 2, 'En esta evalución vas a demostrar todo sobre ventas y como convencer al cliente', 'leer atentamente y responda correctamente', 45, 0, 6);
INSERT INTO AppCursos_evaluaciones (id, nombre_evaluacion, numero_intentos, descripcion_evaluacion, instrucciones_evaluacion, duracion_evaluacion_admin, finalizada, id_modulo_id) VALUES (8, 'Evaluación Economía v1', 2, 'La economía es la ciencia social que estudia cómo las familias empresas y gobiernos organizan los recursos disponibles que suelen ser escasos para satisfacer las diferentes necesidades y así tener un mayor bienestar', 'leer atentamente y responda correctamente', 45, 1, 7);
INSERT INTO AppCursos_evaluaciones (id, nombre_evaluacion, numero_intentos, descripcion_evaluacion, instrucciones_evaluacion, duracion_evaluacion_admin, finalizada, id_modulo_id) VALUES (9, 'Evaluación Administración Comunicaciones v1', 2, 'Es la transmisión y recepción de información que se desarrolla en cada una de las diferentes fases de la actividad administrativa y que tiene como finalidad establecer canales o conductos de transmisión de mensajes  los que pueden ser orales o escritos', 'leer atentamente y responda correctamente', 45, 0, 8);
INSERT INTO AppCursos_evaluaciones (id, nombre_evaluacion, numero_intentos, descripcion_evaluacion, instrucciones_evaluacion, duracion_evaluacion_admin, finalizada, id_modulo_id) VALUES (10, 'Evaluación Agente Comercial v1', 2, 'El/la agente comercial es la persona responsable de ejecutar las actividades de comercialización y venta de productos y/o servicios  actuando de intermediario/aria entre la empresa fabricante o distribuidora de productos y/o servicios y la empresa compradora', 'leer atentamente y responda correctamente', 45, 0, 9);
INSERT INTO AppCursos_evaluaciones (id, nombre_evaluacion, numero_intentos, descripcion_evaluacion, instrucciones_evaluacion, duracion_evaluacion_admin, finalizada, id_modulo_id) VALUES (11, 'Evaluación Contador Público v1', 2, 'El contador público es el profesional dedicado a aplicar  manejar e interpretar la contabilidad de una organización o persona  con la finalidad de producir', 'leer atentamente y responda correctamente', 45, 0, 10);
INSERT INTO AppCursos_evaluaciones (id, nombre_evaluacion, numero_intentos, descripcion_evaluacion, instrucciones_evaluacion, duracion_evaluacion_admin, finalizada, id_modulo_id) VALUES (12, 'Evaluación Negocios Internacionales v1', 2, 'Se entiende por Negocios Internacionales a la disciplina que se encarga de articular las relaciones de un país con el resto del mundo a través de sus diferentes', 'leer atentamente y responda correctamente', 45, 0, 11);
INSERT INTO AppCursos_evaluaciones (id, nombre_evaluacion, numero_intentos, descripcion_evaluacion, instrucciones_evaluacion, duracion_evaluacion_admin, finalizada, id_modulo_id) VALUES (13, 'Evaluación Informática v1', 2, 'La informática es la ciencia que se encarga del estudio y aplicaciones de la información y automatiza la información a través de equipos electrónicos', 'leer atentamente y responda correctamente', 45, 1, 12);
INSERT INTO AppCursos_evaluaciones (id, nombre_evaluacion, numero_intentos, descripcion_evaluacion, instrucciones_evaluacion, duracion_evaluacion_admin, finalizada, id_modulo_id) VALUES (14, 'Evaluación Recursos Humanos v1', 2, 'Los recursos humanos son un departamento dentro de las empresas en el que se gestiona todo lo relacionado con las personas que trabajan en ella', 'leer atentamente y responda correctamente', 45, 1, 13);
INSERT INTO AppCursos_evaluaciones (id, nombre_evaluacion, numero_intentos, descripcion_evaluacion, instrucciones_evaluacion, duracion_evaluacion_admin, finalizada, id_modulo_id) VALUES (15, 'Evaluación Ingeniria Industrial v1', 2, 'La Ingeniería Industrial es por convicción una herramienta interdisciplinar de conocimientos  cuyo propósito es la integración de técnicas y tecnologías', 'leer atentamente y responda correctamente', 45, 1, 14);
INSERT INTO AppCursos_evaluaciones (id, nombre_evaluacion, numero_intentos, descripcion_evaluacion, instrucciones_evaluacion, duracion_evaluacion_admin, finalizada, id_modulo_id) VALUES (16, 'Evaluación Derecho v1', 2, 'El derecho es un conjunto de normas que regulan la conducta humana y ordenan la sociedad en un momento determinado a través de la imposición', 'leer atentamente y responda correctamente', 45, 1, 15);
INSERT INTO AppCursos_evaluaciones (id, nombre_evaluacion, numero_intentos, descripcion_evaluacion, instrucciones_evaluacion, duracion_evaluacion_admin, finalizada, id_modulo_id) VALUES (17, 'Evaluación Ciencias Comunicación v1', 2, 'Son aquellas disciplinas de las ciencias sociales que se encargan de estudiar la esencia de los procesos de comunicación como fenómenos', 'leer atentamente y responda correctamente', 45, 1, 16);
INSERT INTO AppCursos_evaluaciones (id, nombre_evaluacion, numero_intentos, descripcion_evaluacion, instrucciones_evaluacion, duracion_evaluacion_admin, finalizada, id_modulo_id) VALUES (18, 'Evaluación Mercadotecnia v1', 2, 'Mercadotecnia es el conjunto de acciones y estrategias llevadas a cabo para promocionar una marca y sus productos o servicios', 'leer atentamente y responda correctamente', 45, 1, 17);
INSERT INTO AppCursos_evaluaciones (id, nombre_evaluacion, numero_intentos, descripcion_evaluacion, instrucciones_evaluacion, duracion_evaluacion_admin, finalizada, id_modulo_id) VALUES (19, 'Evaluación Gastronómia v1', 2, 'El concepto de gastronomía se emplea con referencia a la destreza y los conocimientos para preparar los alimentos  El término puede aludir al arte', 'leer atentamente y responda correctamente', 45, 0, 18);
INSERT INTO AppCursos_evaluaciones (id, nombre_evaluacion, numero_intentos, descripcion_evaluacion, instrucciones_evaluacion, duracion_evaluacion_admin, finalizada, id_modulo_id) VALUES (20, 'Evaluación Animación Digital v1', 2, 'ásicamente  es la sucesión de imágenes fijas generadas por computadora  en donde se crea de forma consecutiva una secuencia de objetos', 'leer atentamente y responda correctamente', 45, 1, 19);
INSERT INTO AppCursos_evaluaciones (id, nombre_evaluacion, numero_intentos, descripcion_evaluacion, instrucciones_evaluacion, duracion_evaluacion_admin, finalizada, id_modulo_id) VALUES (21, 'Evaluación Diseño Grafico v1', 2, 'Diseño gráfico · Se denomina diseño gráfico a la actividad dedicada al desarrollo de contenidos que permiten entablar una comunicación visual', 'leer atentamente y responda correctamente', 45, 0, 20);
INSERT INTO AppCursos_evaluaciones (id, nombre_evaluacion, numero_intentos, descripcion_evaluacion, instrucciones_evaluacion, duracion_evaluacion_admin, finalizada, id_modulo_id) VALUES (22, 'Evaluación Administrador Logistica v1', 2, 'La gestión logística consiste en la administración de los flujos logísticos de su empresa  aquellos que envuelven las actividades relacionadas', 'leer atentamente y responda correctamente', 45, 1, 21);
INSERT INTO AppCursos_evaluaciones (id, nombre_evaluacion, numero_intentos, descripcion_evaluacion, instrucciones_evaluacion, duracion_evaluacion_admin, finalizada, id_modulo_id) VALUES (23, 'Evaluación Igenieria Software v1', 2, 'Esta evalucion evaluara lo aprendido del modulo', 'leer atentamente y responda correctamente', 45, 0, 22);
INSERT INTO AppCursos_evaluaciones (id, nombre_evaluacion, numero_intentos, descripcion_evaluacion, instrucciones_evaluacion, duracion_evaluacion_admin, finalizada, id_modulo_id) VALUES (24, 'php eva 1', 2, 'manejo de php', 'lea atentanmente y responda', 30, 0, 101);

-- Table: AppCursos_materialapoyo
DROP TABLE IF EXISTS AppCursos_materialapoyo;
CREATE TABLE IF NOT EXISTS "AppCursos_materialapoyo" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "NombreMaterialApoyo" varchar(255) NOT NULL, "DescripcionMaterialApoyo" text NOT NULL, "Archivo" varchar(200) NOT NULL, "id_curso_id" bigint NULL REFERENCES "AppCursos_cursos" ("id") DEFERRABLE INITIALLY DEFERRED);
INSERT INTO AppCursos_materialapoyo (id, NombreMaterialApoyo, DescripcionMaterialApoyo, Archivo, id_curso_id) VALUES (4, 'internet de las cosas', 'introduccion a la IoT', 'https://drive.google.com/file/d/1Zts-Mu0y8F38z8NIgtmAJB6wndiZiMyB/view?usp=drive_link', 59);
INSERT INTO AppCursos_materialapoyo (id, NombreMaterialApoyo, DescripcionMaterialApoyo, Archivo, id_curso_id) VALUES (5, 'Diagrama de flujo', 'internet de las cosas 3444', 'https://drive.google.com/file/d/1QKW7bZII7PWTnoFunAC7KwdRJBLhva00/view?usp=drive_link', 56);
INSERT INTO AppCursos_materialapoyo (id, NombreMaterialApoyo, DescripcionMaterialApoyo, Archivo, id_curso_id) VALUES (6, 'Administracion Publica', 'Introduccion', 'https://docs.google.com/document/d/1D5_GV3LegZgtXalMaNgP8ZBk1Q6slfWZ/edit?usp=drive_link&ouid=108479540038892206055&rtpof=true&sd=true', 45);
INSERT INTO AppCursos_materialapoyo (id, NombreMaterialApoyo, DescripcionMaterialApoyo, Archivo, id_curso_id) VALUES (7, 'Admin. de empresas', 'Introducción', 'https://drive.google.com/file/d/1ffr5ucQlO-wtLKNnl4xsvmysddR3owf4/view?usp=drive_link', 42);
INSERT INTO AppCursos_materialapoyo (id, NombreMaterialApoyo, DescripcionMaterialApoyo, Archivo, id_curso_id) VALUES (8, 'Admin. logistico', 'Introducción', 'https://drive.google.com/file/d/1jprgQqWC3P2vY4fzSbZlhuDsXZJzC2Py/view?usp=drive_link', 58);
INSERT INTO AppCursos_materialapoyo (id, NombreMaterialApoyo, DescripcionMaterialApoyo, Archivo, id_curso_id) VALUES (9, 'Agente comercial', 'Introducción', 'https://drive.google.com/file/d/1tYW2WA4ja0b0lT5QWW3ZfhemgQvdXGbI/view?usp=drive_link', 46);
INSERT INTO AppCursos_materialapoyo (id, NombreMaterialApoyo, DescripcionMaterialApoyo, Archivo, id_curso_id) VALUES (10, 'Animación digital', 'Introducción', 'https://drive.google.com/file/d/1a-K5Qs4KsITww7CpChBMYh3O0g6JW0no/view?usp=drive_link', 56);
INSERT INTO AppCursos_materialapoyo (id, NombreMaterialApoyo, DescripcionMaterialApoyo, Archivo, id_curso_id) VALUES (11, 'Contabilidad', 'Introducción', 'https://drive.google.com/file/d/1SGMq-sWyyKecx814GxIacdPG3GLSeTo7/view?usp=drive_link', 21);
INSERT INTO AppCursos_materialapoyo (id, NombreMaterialApoyo, DescripcionMaterialApoyo, Archivo, id_curso_id) VALUES (12, 'Derecho', 'Introducción', 'https://drive.google.com/file/d/1u_6DQdL5qCA3_0ittekBvyDRafWfn4fF/view?usp=drive_link', 52);
INSERT INTO AppCursos_materialapoyo (id, NombreMaterialApoyo, DescripcionMaterialApoyo, Archivo, id_curso_id) VALUES (13, 'Economia', 'Introducción', 'https://www.youtube.com/', 44);
INSERT INTO AppCursos_materialapoyo (id, NombreMaterialApoyo, DescripcionMaterialApoyo, Archivo, id_curso_id) VALUES (14, 'Gastronomia', 'Introducción', 'https://drive.google.com/file/d/1jnODMmE1k0hd39_BeLOxU6YiL2v1dMZd/view?usp=drive_link', 55);
INSERT INTO AppCursos_materialapoyo (id, NombreMaterialApoyo, DescripcionMaterialApoyo, Archivo, id_curso_id) VALUES (15, 'Informatica', 'Introducción', 'https://drive.google.com/file/d/1BYcsj9loYWuvlFaio3-mWi62KSt7kCvJ/view?usp=drive_link', 25);
INSERT INTO AppCursos_materialapoyo (id, NombreMaterialApoyo, DescripcionMaterialApoyo, Archivo, id_curso_id) VALUES (16, 'Ingenieria industrial', 'Introduccion', 'https://drive.google.com/file/d/11nyJgcTFiirYI_1GYsoSn9Jx7Mil5AaX/view?usp=drive_link', 51);
INSERT INTO AppCursos_materialapoyo (id, NombreMaterialApoyo, DescripcionMaterialApoyo, Archivo, id_curso_id) VALUES (17, 'PHP', 'Introduccióm', 'https://drive.google.com/file/d/115mCAhejCctN9gL4luTLQIqIofsfo-cs/view?usp=drive_link', 121);
INSERT INTO AppCursos_materialapoyo (id, NombreMaterialApoyo, DescripcionMaterialApoyo, Archivo, id_curso_id) VALUES (18, 'Mercadotecnia', 'Introducción', 'https://drive.google.com/file/d/1TSXDD3bpWCMndSfRPPMbCgzIHcs6Boaz/view?usp=drive_link', 54);
INSERT INTO AppCursos_materialapoyo (id, NombreMaterialApoyo, DescripcionMaterialApoyo, Archivo, id_curso_id) VALUES (19, 'hola', 'ddddd', 'https://docs.google.com/document/d/1D5_GV3LegZgtXalMaNgP8ZBk1Q6slfWZ/edit?usp=drive_link&ouid=108479540038892206055&rtpof=true&sd=true', 42);

-- Table: AppCursos_modulos
DROP TABLE IF EXISTS AppCursos_modulos;
CREATE TABLE IF NOT EXISTS "AppCursos_modulos" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "nombre_modulo" varchar(100) NOT NULL, "estado_modulo" bool NOT NULL, "id_curso_id" bigint NOT NULL REFERENCES "AppCursos_cursos" ("id") DEFERRABLE INITIALLY DEFERRED, "orden_modulo" integer NULL);
INSERT INTO AppCursos_modulos (id, nombre_modulo, estado_modulo, id_curso_id, orden_modulo) VALUES (1, 'Introduccion al SAP', 1, 34, NULL);
INSERT INTO AppCursos_modulos (id, nombre_modulo, estado_modulo, id_curso_id, orden_modulo) VALUES (2, 'Introduccion a Informatica', 0, 3, NULL);
INSERT INTO AppCursos_modulos (id, nombre_modulo, estado_modulo, id_curso_id, orden_modulo) VALUES (3, 'Introduccion a Matematicas', 1, 40, NULL);
INSERT INTO AppCursos_modulos (id, nombre_modulo, estado_modulo, id_curso_id, orden_modulo) VALUES (4, 'Introduccion a seguridad en el trabajo', 0, 41, NULL);
INSERT INTO AppCursos_modulos (id, nombre_modulo, estado_modulo, id_curso_id, orden_modulo) VALUES (5, 'Introduccion a administracion de empresas', 1, 42, NULL);
INSERT INTO AppCursos_modulos (id, nombre_modulo, estado_modulo, id_curso_id, orden_modulo) VALUES (6, 'Introduccion a ventas', 1, 43, NULL);
INSERT INTO AppCursos_modulos (id, nombre_modulo, estado_modulo, id_curso_id, orden_modulo) VALUES (7, 'Introduccion a economia', 0, 44, NULL);
INSERT INTO AppCursos_modulos (id, nombre_modulo, estado_modulo, id_curso_id, orden_modulo) VALUES (8, 'Introduccion a comunicaciones', 1, 45, NULL);
INSERT INTO AppCursos_modulos (id, nombre_modulo, estado_modulo, id_curso_id, orden_modulo) VALUES (9, 'Introduccion a agente comercial', 1, 46, NULL);
INSERT INTO AppCursos_modulos (id, nombre_modulo, estado_modulo, id_curso_id, orden_modulo) VALUES (10, 'Introducciona contabilidad', 0, 47, NULL);
INSERT INTO AppCursos_modulos (id, nombre_modulo, estado_modulo, id_curso_id, orden_modulo) VALUES (11, 'Introduccion a negocios internacionales', 0, 48, NULL);
INSERT INTO AppCursos_modulos (id, nombre_modulo, estado_modulo, id_curso_id, orden_modulo) VALUES (12, 'Introduccion a la informatica', 1, 26, NULL);
INSERT INTO AppCursos_modulos (id, nombre_modulo, estado_modulo, id_curso_id, orden_modulo) VALUES (13, 'Introduccion a recursos humanos', 1, 50, NULL);
INSERT INTO AppCursos_modulos (id, nombre_modulo, estado_modulo, id_curso_id, orden_modulo) VALUES (14, 'Introduccion a ingeniera industrial', 0, 51, NULL);
INSERT INTO AppCursos_modulos (id, nombre_modulo, estado_modulo, id_curso_id, orden_modulo) VALUES (15, 'Introduccion a derecho', 1, 52, NULL);
INSERT INTO AppCursos_modulos (id, nombre_modulo, estado_modulo, id_curso_id, orden_modulo) VALUES (16, 'introduccion a ciencias de comunicacion', 1, 53, NULL);
INSERT INTO AppCursos_modulos (id, nombre_modulo, estado_modulo, id_curso_id, orden_modulo) VALUES (17, 'Introduccion a mercadotecnia', 1, 54, NULL);
INSERT INTO AppCursos_modulos (id, nombre_modulo, estado_modulo, id_curso_id, orden_modulo) VALUES (18, 'Introduccion a gastronomia', 0, 55, NULL);
INSERT INTO AppCursos_modulos (id, nombre_modulo, estado_modulo, id_curso_id, orden_modulo) VALUES (19, 'Introduccion en animacion digital', 1, 56, NULL);
INSERT INTO AppCursos_modulos (id, nombre_modulo, estado_modulo, id_curso_id, orden_modulo) VALUES (20, 'Introduccion a diseño grafico', 0, 56, NULL);
INSERT INTO AppCursos_modulos (id, nombre_modulo, estado_modulo, id_curso_id, orden_modulo) VALUES (21, 'Introduccion a administrador de logistica', 1, 58, NULL);
INSERT INTO AppCursos_modulos (id, nombre_modulo, estado_modulo, id_curso_id, orden_modulo) VALUES (22, 'Introduccion a software', 1, 59, NULL);
INSERT INTO AppCursos_modulos (id, nombre_modulo, estado_modulo, id_curso_id, orden_modulo) VALUES (98, 'Introduccion a la fisica', 0, 58, NULL);
INSERT INTO AppCursos_modulos (id, nombre_modulo, estado_modulo, id_curso_id, orden_modulo) VALUES (100, 'Introduccion a python', 1, 59, NULL);
INSERT INTO AppCursos_modulos (id, nombre_modulo, estado_modulo, id_curso_id, orden_modulo) VALUES (101, 'php', 1, 121, NULL);

-- Table: AppCursos_preguntas
DROP TABLE IF EXISTS AppCursos_preguntas;
CREATE TABLE IF NOT EXISTS "AppCursos_preguntas" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "nombre_pregunta" text NOT NULL, "opcion_a" varchar(100) NULL, "opcion_b" varchar(100) NULL, "opcion_c" varchar(100) NULL, "opcion_d" varchar(100) NULL, "respuesta_correcta" varchar(1) NULL, "id_evaluacion_id" bigint NOT NULL REFERENCES "AppCursos_evaluaciones" ("id") DEFERRABLE INITIALLY DEFERRED);
INSERT INTO AppCursos_preguntas (id, nombre_pregunta, opcion_a, opcion_b, opcion_c, opcion_d, respuesta_correcta, id_evaluacion_id) VALUES (4, '¿Un número que no tiene un numérico propio?', 'DOS', 'TRES', 'CERO', 'CUATRO', 'a', 4);
INSERT INTO AppCursos_preguntas (id, nombre_pregunta, opcion_a, opcion_b, opcion_c, opcion_d, respuesta_correcta, id_evaluacion_id) VALUES (5, '¿Nombre el único número primo par?', 'TRES', 'NUEVE', 'SIETE', 'DOS', 'b', 4);
INSERT INTO AppCursos_preguntas (id, nombre_pregunta, opcion_a, opcion_b, opcion_c, opcion_d, respuesta_correcta, id_evaluacion_id) VALUES (6, '¿Nombre el único número primo par?', '32.000segundos', '86.400 segundos', '67.000 segundos', '12.300segundos', 'b', 4);
INSERT INTO AppCursos_preguntas (id, nombre_pregunta, opcion_a, opcion_b, opcion_c, opcion_d, respuesta_correcta, id_evaluacion_id) VALUES (7, '¿cual es el nunero neto real despues de 7?', 'DOCE', 'ONCE', 'OCHO', 'TRES', 'b', 4);
INSERT INTO AppCursos_preguntas (id, nombre_pregunta, opcion_a, opcion_b, opcion_c, opcion_d, respuesta_correcta, id_evaluacion_id) VALUES (8, '¿10.9*N es igual a 108.¿Cuanto es N?', 'N=9.9', 'N=23', 'N=15', 'N=20', 'a', 4);
INSERT INTO AppCursos_preguntas (id, nombre_pregunta, opcion_a, opcion_b, opcion_c, opcion_d, respuesta_correcta, id_evaluacion_id) VALUES (9, '¿Qué son los riesgos del trabajo?', 'area multidisciplinaria relacionada con la seguridad. salud y la calidad de vida de las personas.', 'medida de la magnitud de los da?os frente a una situacion peligrosa', 'Acccidentes y enfermedades a los que estan expuestos los trabajdores en elejercicio o con motivo del', 'Suceso repentino que sobrevenga por causa o en ocasión del trabajo y que produzca en el trabajador u', 'c', 5);
INSERT INTO AppCursos_preguntas (id, nombre_pregunta, opcion_a, opcion_b, opcion_c, opcion_d, respuesta_correcta, id_evaluacion_id) VALUES (10, 'Los riesgos del trabajo pueden producir', 'incapacidad Temporal', 'Incapacidad parcial', 'VERDADERO', 'Todas las Anteriores', 'd', 5);
INSERT INTO AppCursos_preguntas (id, nombre_pregunta, opcion_a, opcion_b, opcion_c, opcion_d, respuesta_correcta, id_evaluacion_id) VALUES (11, '¿Cual es la finalidad de la normativa medioambiental?', 'Regular la producci?n de sustancias peligrosas.', 'Indicar c?mo se pueden almacenar sustancias peligrosas.', 'Proteger al ser humano y el medio ambiente contra las sustancias peligrosas.', 'Todas las Anteriores', 'c', 5);
INSERT INTO AppCursos_preguntas (id, nombre_pregunta, opcion_a, opcion_b, opcion_c, opcion_d, respuesta_correcta, id_evaluacion_id) VALUES (12, 'cuando la empresa es menor de 10 empleados debe conformar un', 'Minicopasst', 'Mesa de negociacion', 'Vigia SST', 'ARL', 'c', 5);
INSERT INTO AppCursos_preguntas (id, nombre_pregunta, opcion_a, opcion_b, opcion_c, opcion_d, respuesta_correcta, id_evaluacion_id) VALUES (13, '¿La higine industrial y la seguridad industrial son pilares del subprograma?', 'COPASST', 'ARL', 'H & SI', 'Decreto 1443 de 2014', 'c', 5);
INSERT INTO AppCursos_preguntas (id, nombre_pregunta, opcion_a, opcion_b, opcion_c, opcion_d, respuesta_correcta, id_evaluacion_id) VALUES (20, '¿Que funcion cumplen las redes sociales en su proceso de ventas?', 'no ofrece nada para las ventas', 'sirve para atraer clientes', 'nos ayuda  dar publicidad para nuestras ventas o productos', 'sirve para que nos contanten', 'c', 7);
INSERT INTO AppCursos_preguntas (id, nombre_pregunta, opcion_a, opcion_b, opcion_c, opcion_d, respuesta_correcta, id_evaluacion_id) VALUES (21, '?En qu? momento deja de insistir a un cliente?', 'cuando el cliente dice no pero se que da para escuchar', 'cuando persona dice no se va', 'cuando el cliente dice que no gracias eso esta muy caro', 'cuando cliente dice no gracias', 'b', 7);
INSERT INTO AppCursos_preguntas (id, nombre_pregunta, opcion_a, opcion_b, opcion_c, opcion_d, respuesta_correcta, id_evaluacion_id) VALUES (22, '¿si venden productos ilegales que haces?', 'los vendes y los promocionas', 'le preguntas al jefe por que vende productos ilegales', 'llamas a la policia y les comentas', 'todas las anteriores', 'c', 7);
INSERT INTO AppCursos_preguntas (id, nombre_pregunta, opcion_a, opcion_b, opcion_c, opcion_d, respuesta_correcta, id_evaluacion_id) VALUES (23, 'los venderes tiene que tener un buen parlamento a la hora de ofrecer un producto eso es', 'confianza en si mismo', 'no tener miedo', 'saber defenderse', 'todas las anteriores', 'd', 7);
INSERT INTO AppCursos_preguntas (id, nombre_pregunta, opcion_a, opcion_b, opcion_c, opcion_d, respuesta_correcta, id_evaluacion_id) VALUES (26, 'El problema que aborda la Econom?a como ciencia se refiere a', 'Los precios que tienen los bienes', 'La abundancia de recursos que posee la sociedad', 'Los gustos de los consumidores', 'La escasez de recursos para satisfacer las necesidades de la sociedad', 'b', 8);
INSERT INTO AppCursos_preguntas (id, nombre_pregunta, opcion_a, opcion_b, opcion_c, opcion_d, respuesta_correcta, id_evaluacion_id) VALUES (27, 'La econom?a para establecer sus principios. leyes o modelos', 'Se basa en la experimentaci?n', 'Emplea un modelo deductivo.', 'Emplea un modelo inductivo.', 'Emplea un modelo hist?rico?inductivo?deductivo', 'd', 8);
INSERT INTO AppCursos_preguntas (id, nombre_pregunta, opcion_a, opcion_b, opcion_c, opcion_d, respuesta_correcta, id_evaluacion_id) VALUES (28, 'Los problemas centrales de todo sistema econ?mico son', 'Pol?tica. democracia y elecciones', 'Cu?nto dinero debe circular', 'Qué, cómo, cuánto y para quién producir', 'La forma como deben administrarse los bienes de una casa', 'c', 8);
INSERT INTO AppCursos_preguntas (id, nombre_pregunta, opcion_a, opcion_b, opcion_c, opcion_d, respuesta_correcta, id_evaluacion_id) VALUES (35, '¿Tienes clara tu propuesta de Valor?', '. El cerebro humano no compra características, compra beneficios y todos los cerebros tienen mucho e', 'Seguridad', 'Bienestar', 'Novedad', 'a', 10);
INSERT INTO AppCursos_preguntas (id, nombre_pregunta, opcion_a, opcion_b, opcion_c, opcion_d, respuesta_correcta, id_evaluacion_id) VALUES (36, '?Tienes materiales de prospecci?n adecuados?', 'estás utilizando las presentaciones del año pasado, ya estas haciendo tarde ya que el mercado cambi', 'es más pero una presentación debería Decir muy claramente quién es tu empresa, en que beneficia al c', 'muchas veces es mejor facilitarle al cliente el enlace a tu web', 'Todas las Anteriores', 'c', 10);
INSERT INTO AppCursos_preguntas (id, nombre_pregunta, opcion_a, opcion_b, opcion_c, opcion_d, respuesta_correcta, id_evaluacion_id) VALUES (37, '¿Tu o tu equipo, estás formado en ventas o dirección de equipos?', 'La formación es rentable, no te imaginas el coste de la no-formación. Hay múltiples formatos y hoy e', 'probablemente es la formación práctica la que se hace a medida del equipo y empresa a formar', 'directivos funciona muy bien la formación y entrenamiento Líder Coach para que ayude a convertir al', 'Todas las Anteriores', 'b', 10);
INSERT INTO AppCursos_preguntas (id, nombre_pregunta, opcion_a, opcion_b, opcion_c, opcion_d, respuesta_correcta, id_evaluacion_id) VALUES (40, 'En los ingresos personales existe dos tipos de bienes', 'Bien anormal y normal', 'Bien normal e inferior', 'Bien preferencia y precio', 'ingresos', 'b', 11);
INSERT INTO AppCursos_preguntas (id, nombre_pregunta, opcion_a, opcion_b, opcion_c, opcion_d, respuesta_correcta, id_evaluacion_id) VALUES (41, 'Nos ayudar a medir la sensibilidad de los consumidores ante los distintos cambios en el precio', 'La elasticidad', 'Las matem?ticas', 'La contabilidad', 'la estadistica', 'a', 11);
INSERT INTO AppCursos_preguntas (id, nombre_pregunta, opcion_a, opcion_b, opcion_c, opcion_d, respuesta_correcta, id_evaluacion_id) VALUES (42, 'Si sube el precio de los productos los consumidores dejaran de consumirlo, asi que es una demanda', 'Mundial', 'Global', 'El?stica', 'departamental', 'c', 11);
INSERT INTO AppCursos_preguntas (id, nombre_pregunta, opcion_a, opcion_b, opcion_c, opcion_d, respuesta_correcta, id_evaluacion_id) VALUES (43, 'Este tipo de demanda nos describe a los consumidores que son pocos sensibles al precio', 'Demanda laboral', 'Demanda inel?stica', 'Demanda activa', 'Demanda personal', 'b', 11);
INSERT INTO AppCursos_preguntas (id, nombre_pregunta, opcion_a, opcion_b, opcion_c, opcion_d, respuesta_correcta, id_evaluacion_id) VALUES (44, 'Las alianzas estrategicas', 'Son acuerdos con empresas extranjeras. donde la empresa nacional mantiene el 100 % de su capital', 'Comparte los costes, los riesgos y las capacidades, complementando los activos y el alcance de loses', 'las alianzas son negocios sucios', 'son acuerdos', 'b', 11);
INSERT INTO AppCursos_preguntas (id, nombre_pregunta, opcion_a, opcion_b, opcion_c, opcion_d, respuesta_correcta, id_evaluacion_id) VALUES (45, 'Ventajas de empresa subsidiaria comercial. Señala la respuesta incorrecta', 'La responsabilidad de la ?lial esta limitada a sus propios activos y no a los del grupo comercial', 'Este tipo de empresa suele ser adecuada para pymes o empresas con pocos recursos', 'Tiene mejores relaciones con la administracion por estar adaptados a la normativa, a los usos comerc', 'Todas las Anteriores', 'c', 12);
INSERT INTO AppCursos_preguntas (id, nombre_pregunta, opcion_a, opcion_b, opcion_c, opcion_d, respuesta_correcta, id_evaluacion_id) VALUES (48, 'Responder las siguientes afirmacion 1 + 1>2. si tu ganas yo tambien gano. siyo gano tu tambien ganas', 'Distributiva', 'cooperativa', 'integrativa', 'competitiva', 'c', 12);
INSERT INTO AppCursos_preguntas (id, nombre_pregunta, opcion_a, opcion_b, opcion_c, opcion_d, respuesta_correcta, id_evaluacion_id) VALUES (51, '¿Cual de estos no es un navegador?', 'Mozila', 'Chrome', 'Opera', 'Turbonet', 'd', 13);
INSERT INTO AppCursos_preguntas (id, nombre_pregunta, opcion_a, opcion_b, opcion_c, opcion_d, respuesta_correcta, id_evaluacion_id) VALUES (52, '¿Que entiende usted por Internet Explore. Mozila Firefox Y Google Chorme?', 'Son marcas de productos para computadores', 'Es hadware para computador', 'Son perif?ricos', 'Son navegadores de Internet.', 'd', 13);
INSERT INTO AppCursos_preguntas (id, nombre_pregunta, opcion_a, opcion_b, opcion_c, opcion_d, respuesta_correcta, id_evaluacion_id) VALUES (53, '¿El historial del navegador registra todas las paginas y sus fechas?', 'Solo fechas', 'Solo la Hora', 'Si guarda la fecha y la hora', 'Ninguna opci?n es correcta', 'd', 13);
INSERT INTO AppCursos_preguntas (id, nombre_pregunta, opcion_a, opcion_b, opcion_c, opcion_d, respuesta_correcta, id_evaluacion_id) VALUES (58, 'En la actualidad. los responsables de recursos humanos deber?an:', 'Participar cada vez m?s en el establecimiento de las pol?ticas estrat?gicas de la empresa.', 'Dedicarse principalmente a controlar al personal de la empresa y fijar límites claros', 'Estar al margen del proceso de formulación de las estrategias de la empresa', 'Evaluar la capacidad productiva de la empresa y adecuarla a las capacidades de los trabajadores.', 'a', 14);
INSERT INTO AppCursos_preguntas (id, nombre_pregunta, opcion_a, opcion_b, opcion_c, opcion_d, respuesta_correcta, id_evaluacion_id) VALUES (60, 'Si el valor de x = 3 en la ecuaci?n 9x- 4y = x + 4. el valor de y debe ser:', '3', '5', '7', '9', 'b', 15);
INSERT INTO AppCursos_preguntas (id, nombre_pregunta, opcion_a, opcion_b, opcion_c, opcion_d, respuesta_correcta, id_evaluacion_id) VALUES (63, '¿Cuál corresponde a la función objetivo del problema dual del modelo lineal adjunto?', 'Minimizar w = 4y1 + 5y2', 'Minimizar w = 2y1 + 3y2', 'Maximizar z = 2x1 + 3x2', 'Minimizar w = x1 + 2x2', 'a', 15);
INSERT INTO AppCursos_preguntas (id, nombre_pregunta, opcion_a, opcion_b, opcion_c, opcion_d, respuesta_correcta, id_evaluacion_id) VALUES (64, 'Conjunto de normas jurídicas que están en vigor en determinado lugar y época,y   que   el   Estado', 'Constituci?n', 'Sistema Jur?dico', 'Pol?tica', 'Derecho', 'b', 16);
INSERT INTO AppCursos_preguntas (id, nombre_pregunta, opcion_a, opcion_b, opcion_c, opcion_d, respuesta_correcta, id_evaluacion_id) VALUES (65, 'Es aquello que rige sobre todos los dem?s ordenamientos del sistema jur?dico', 'Ley', 'Estado', 'Senado', 'Constituci?n', 'd', 16);
INSERT INTO AppCursos_preguntas (id, nombre_pregunta, opcion_a, opcion_b, opcion_c, opcion_d, respuesta_correcta, id_evaluacion_id) VALUES (66, 'Tiene como misión conducir la política exterior de México, así como coordinarla   actuación   intern', 'Estado', 'El presidente de la Rep?blica', 'Secretar?a de Relaciones Exteriores', 'Diputados y senadores', 'c', 16);
INSERT INTO AppCursos_preguntas (id, nombre_pregunta, opcion_a, opcion_b, opcion_c, opcion_d, respuesta_correcta, id_evaluacion_id) VALUES (67, 'Es el acuerdo celebrado por escrito entre uno o varios Estados y una o varias organizaciones interna', 'Contrato', 'Pacto', 'Tratado', 'Convenio', 'c', 16);
INSERT INTO AppCursos_preguntas (id, nombre_pregunta, opcion_a, opcion_b, opcion_c, opcion_d, respuesta_correcta, id_evaluacion_id) VALUES (68, 'Conjunto de normas expedidas por el Congreso de la Unión que deben ser observadas  por  el gobierno', 'Leyes org?nicas', 'Leyes generales', 'Leyes locales', 'Leyes federales', 'b', 16);
INSERT INTO AppCursos_preguntas (id, nombre_pregunta, opcion_a, opcion_b, opcion_c, opcion_d, respuesta_correcta, id_evaluacion_id) VALUES (75, 'El ?xito de una empresa depende', 'capacidad de adaptacion y anticipacion a los caambios', 'capacidad de imaginacion y competitividad', 'capacidad de lograr los odjectivos', 'Ninguna de las anteriores', 'a', 18);
INSERT INTO AppCursos_preguntas (id, nombre_pregunta, opcion_a, opcion_b, opcion_c, opcion_d, respuesta_correcta, id_evaluacion_id) VALUES (76, 'Las compa?ias se mueven en un mercado altamente competitivo por ello debemos', 'Analizar el entorno competitivo', 'prepararnos para el cambio', 'Analizar las variables dato', 'luchar para sobrevivir', 'c', 18);
INSERT INTO AppCursos_preguntas (id, nombre_pregunta, opcion_a, opcion_b, opcion_c, opcion_d, respuesta_correcta, id_evaluacion_id) VALUES (77, 'El marketing indispensable para que una empresa pueda', 'Mantener su rentabilidad', 'Destacarse entre las demas', 'ser altermente competitiva', 'posicionarse en un lugar destacado', 'd', 18);
INSERT INTO AppCursos_preguntas (id, nombre_pregunta, opcion_a, opcion_b, opcion_c, opcion_d, respuesta_correcta, id_evaluacion_id) VALUES (78, '¿Cuando hablamos del número de líneas que se comercializan nos referimos?', 'Coherencia', 'Longitud de gama', 'Amplitud', 'Cartera de productos', 'c', 18);
INSERT INTO AppCursos_preguntas (id, nombre_pregunta, opcion_a, opcion_b, opcion_c, opcion_d, respuesta_correcta, id_evaluacion_id) VALUES (85, 'Cuando desglosamos una accion en niveles separados en capas de movimiento. Hablamos de', 'Accion superpuesta', 'Accion secundaria', 'Timing escalonado', 'Todas las anteriores', 'c', 20);
INSERT INTO AppCursos_preguntas (id, nombre_pregunta, opcion_a, opcion_b, opcion_c, opcion_d, respuesta_correcta, id_evaluacion_id) VALUES (86, 'Lo que proporciona a la accion su timing espec?fico y su calidad dinamica es:', 'El secuenciado', 'El segmentado', 'El espaciado', 'Todas las anteriores', 'c', 20);
INSERT INTO AppCursos_preguntas (id, nombre_pregunta, opcion_a, opcion_b, opcion_c, opcion_d, respuesta_correcta, id_evaluacion_id) VALUES (87, '¿Que es la tecnica de animacion?', 'Las dos son incorrectas', 'Es la reflexi?n rigurosa sobre el movimiento', 'Es una actividad de dibujo', 'Todas las anteriores', 'b', 20);
INSERT INTO AppCursos_preguntas (id, nombre_pregunta, opcion_a, opcion_b, opcion_c, opcion_d, respuesta_correcta, id_evaluacion_id) VALUES (88, 'La composici?n es lo mismo que el…:Seleccione una', 'Storyboard', 'Outline', 'Layout', 'todas las anteriores', 'c', 20);
INSERT INTO AppCursos_preguntas (id, nombre_pregunta, opcion_a, opcion_b, opcion_c, opcion_d, respuesta_correcta, id_evaluacion_id) VALUES (89, 'Subraye la respuesta correcta. ¿Como se expresa al diseño?', 'Como colores. dibujos y manchas', 'como el arte. la t?cnica de traducir ideas en im?genes y formas visuales.', 'Como formas. l?neas y letras', 'Todas las anteriores', 'b', 21);
INSERT INTO AppCursos_preguntas (id, nombre_pregunta, opcion_a, opcion_b, opcion_c, opcion_d, respuesta_correcta, id_evaluacion_id) VALUES (92, 'el diseño es', 'es mejorar la calidad de vida de las personas', 'la edicion. dise?o de todo tipo de libros. periodicos. y revistas', 'un proyectista con sentido estético que trabaja para la comunidad y no de forma personal', 'todas las anteriores', 'c', 21);
INSERT INTO AppCursos_preguntas (id, nombre_pregunta, opcion_a, opcion_b, opcion_c, opcion_d, respuesta_correcta, id_evaluacion_id) VALUES (93, '?Cu?l es el proceso o labor destinado del dise?o?', 'trazar. proyectar. alinear y diseñar', 'proyectar. coordinar. seleccionar y organizar', 'Comunicar. observar. seleccionar y alinear', 'todas las anteriores', 'a', 21);
INSERT INTO AppCursos_preguntas (id, nombre_pregunta, opcion_a, opcion_b, opcion_c, opcion_d, respuesta_correcta, id_evaluacion_id) VALUES (94, 'Para gerenciar la función log?stica. la clave pasa por minimizar el costo', 'Del nivel de servicio.', 'De los almacenes', 'Del transporte', 'total log?stico del sistema', 'd', 22);
INSERT INTO AppCursos_preguntas (id, nombre_pregunta, opcion_a, opcion_b, opcion_c, opcion_d, respuesta_correcta, id_evaluacion_id) VALUES (95, 'Los costos por inmovilización de inventarios no incluyen a los', 'Costos de espacio', 'Costos financieros', 'Costos de servicio', 'Costos de informaci?n.', 'd', 22);
INSERT INTO AppCursos_preguntas (id, nombre_pregunta, opcion_a, opcion_b, opcion_c, opcion_d, respuesta_correcta, id_evaluacion_id) VALUES (96, 'El objetivo log?stico de la reducción de capital esta directamente dirigido a', 'Maximizar el retorno de la inversi?n', 'Mejorar el servicio', 'Operar con econom?as de escala', 'Maximizar beneficios', 'a', 22);
INSERT INTO AppCursos_preguntas (id, nombre_pregunta, opcion_a, opcion_b, opcion_c, opcion_d, respuesta_correcta, id_evaluacion_id) VALUES (97, 'Los contratos de compras anticipadas. constituyen un nivel de planificaci?n', 'De largo plazo', 'Estrat?gico', 'Operativo', 'T?ctico', 'd', 22);
INSERT INTO AppCursos_preguntas (id, nombre_pregunta, opcion_a, opcion_b, opcion_c, opcion_d, respuesta_correcta, id_evaluacion_id) VALUES (98, 'Para controlar los niveles de inventario y planificar la ubicación de almacenes s necesario', 'Conocer el grado de arbitrariedad de la misma', 'Conocer la variaci?n de la demanda', 'Conocer la localizaci?n espacial de la demand', 'Conocer si es una demanda regular', 'c', 22);
INSERT INTO AppCursos_preguntas (id, nombre_pregunta, opcion_a, opcion_b, opcion_c, opcion_d, respuesta_correcta, id_evaluacion_id) VALUES (99, 'En el modelo de prototipos una iteración se realiza cuando', 'El prototipo ha pasado por las fases de especificaci?n y desarrollo.', 'El prototipo ha pasado por las fases de especificaci?n. modelado ydesarrollo.', 'El prototipo ha pasado por las fases de modelado y desarrollo', 'El prototipo ha pasado por fases de especificación, planeación,modelado, desarrollo e implantación', 'a', 23);
INSERT INTO AppCursos_preguntas (id, nombre_pregunta, opcion_a, opcion_b, opcion_c, opcion_d, respuesta_correcta, id_evaluacion_id) VALUES (100, 'que es php', 'xxx', 'cccc', 'sss', 'aaa', 'b', 24);

-- Table: AppUsuarios_cargo
DROP TABLE IF EXISTS AppUsuarios_cargo;
CREATE TABLE IF NOT EXISTS "AppUsuarios_cargo" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "nombre_cargo" varchar(100) NOT NULL, "estado_cargo" bool NOT NULL);
INSERT INTO AppUsuarios_cargo (id, nombre_cargo, estado_cargo) VALUES (1, 'Auxiliar de Contabilidad', 1);
INSERT INTO AppUsuarios_cargo (id, nombre_cargo, estado_cargo) VALUES (2, 'Contador Principal', 1);
INSERT INTO AppUsuarios_cargo (id, nombre_cargo, estado_cargo) VALUES (3, 'Bailarin', 1);
INSERT INTO AppUsuarios_cargo (id, nombre_cargo, estado_cargo) VALUES (4, 'diseñador', 1);
INSERT INTO AppUsuarios_cargo (id, nombre_cargo, estado_cargo) VALUES (5, 'contador', 1);

-- Table: AppUsuarios_clase_usuario
DROP TABLE IF EXISTS AppUsuarios_clase_usuario;
CREATE TABLE IF NOT EXISTS "AppUsuarios_clase_usuario" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "id_modulo_id" bigint NULL REFERENCES "AppCursos_modulos" ("id") DEFERRABLE INITIALLY DEFERRED, "id_clase_id" bigint NULL REFERENCES "AppCursos_clases" ("id") DEFERRABLE INITIALLY DEFERRED, "visto" bool NOT NULL, "id_usuario_cargo_id" bigint NULL REFERENCES "AppUsuarios_usuario_cargo" ("id") DEFERRABLE INITIALLY DEFERRED);
INSERT INTO AppUsuarios_clase_usuario (id, id_modulo_id, id_clase_id, visto, id_usuario_cargo_id) VALUES (1, 18, 47, 0, 1);
INSERT INTO AppUsuarios_clase_usuario (id, id_modulo_id, id_clase_id, visto, id_usuario_cargo_id) VALUES (2, 18, 48, 0, 1);
INSERT INTO AppUsuarios_clase_usuario (id, id_modulo_id, id_clase_id, visto, id_usuario_cargo_id) VALUES (3, 18, 49, 0, 1);
INSERT INTO AppUsuarios_clase_usuario (id, id_modulo_id, id_clase_id, visto, id_usuario_cargo_id) VALUES (4, 18, 47, 0, 1);
INSERT INTO AppUsuarios_clase_usuario (id, id_modulo_id, id_clase_id, visto, id_usuario_cargo_id) VALUES (5, 18, 48, 0, 1);
INSERT INTO AppUsuarios_clase_usuario (id, id_modulo_id, id_clase_id, visto, id_usuario_cargo_id) VALUES (6, 18, 49, 0, 1);
INSERT INTO AppUsuarios_clase_usuario (id, id_modulo_id, id_clase_id, visto, id_usuario_cargo_id) VALUES (7, 18, 47, 0, 1);
INSERT INTO AppUsuarios_clase_usuario (id, id_modulo_id, id_clase_id, visto, id_usuario_cargo_id) VALUES (8, 18, 48, 0, 1);
INSERT INTO AppUsuarios_clase_usuario (id, id_modulo_id, id_clase_id, visto, id_usuario_cargo_id) VALUES (9, 18, 49, 0, 1);
INSERT INTO AppUsuarios_clase_usuario (id, id_modulo_id, id_clase_id, visto, id_usuario_cargo_id) VALUES (10, 17, 44, 1, 2);
INSERT INTO AppUsuarios_clase_usuario (id, id_modulo_id, id_clase_id, visto, id_usuario_cargo_id) VALUES (11, 17, 45, 0, 2);
INSERT INTO AppUsuarios_clase_usuario (id, id_modulo_id, id_clase_id, visto, id_usuario_cargo_id) VALUES (12, 17, 46, 0, 2);
INSERT INTO AppUsuarios_clase_usuario (id, id_modulo_id, id_clase_id, visto, id_usuario_cargo_id) VALUES (13, 9, 20, 1, 2);
INSERT INTO AppUsuarios_clase_usuario (id, id_modulo_id, id_clase_id, visto, id_usuario_cargo_id) VALUES (14, 9, 21, 0, 2);
INSERT INTO AppUsuarios_clase_usuario (id, id_modulo_id, id_clase_id, visto, id_usuario_cargo_id) VALUES (15, 9, 22, 0, 2);
INSERT INTO AppUsuarios_clase_usuario (id, id_modulo_id, id_clase_id, visto, id_usuario_cargo_id) VALUES (16, 17, 44, 1, 4);
INSERT INTO AppUsuarios_clase_usuario (id, id_modulo_id, id_clase_id, visto, id_usuario_cargo_id) VALUES (17, 17, 45, 0, 4);
INSERT INTO AppUsuarios_clase_usuario (id, id_modulo_id, id_clase_id, visto, id_usuario_cargo_id) VALUES (18, 17, 46, 0, 4);

-- Table: AppUsuarios_usuario_cargo
DROP TABLE IF EXISTS AppUsuarios_usuario_cargo;
CREATE TABLE IF NOT EXISTS "AppUsuarios_usuario_cargo" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "id_cargo_id" bigint NOT NULL REFERENCES "AppUsuarios_cargo" ("id") DEFERRABLE INITIALLY DEFERRED, "id_usuario_id" integer NOT NULL REFERENCES "auth_user" ("id") DEFERRABLE INITIALLY DEFERRED);
INSERT INTO AppUsuarios_usuario_cargo (id, id_cargo_id, id_usuario_id) VALUES (1, 1, 1);
INSERT INTO AppUsuarios_usuario_cargo (id, id_cargo_id, id_usuario_id) VALUES (2, 2, 1);
INSERT INTO AppUsuarios_usuario_cargo (id, id_cargo_id, id_usuario_id) VALUES (3, 1, 4);
INSERT INTO AppUsuarios_usuario_cargo (id, id_cargo_id, id_usuario_id) VALUES (4, 3, 8);
INSERT INTO AppUsuarios_usuario_cargo (id, id_cargo_id, id_usuario_id) VALUES (5, 3, 16);

-- Table: auth_group
DROP TABLE IF EXISTS auth_group;
CREATE TABLE IF NOT EXISTS "auth_group" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "name" varchar(150) NOT NULL UNIQUE);

-- Table: auth_group_permissions
DROP TABLE IF EXISTS auth_group_permissions;
CREATE TABLE IF NOT EXISTS "auth_group_permissions" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "group_id" integer NOT NULL REFERENCES "auth_group" ("id") DEFERRABLE INITIALLY DEFERRED, "permission_id" integer NOT NULL REFERENCES "auth_permission" ("id") DEFERRABLE INITIALLY DEFERRED);

-- Table: auth_permission
DROP TABLE IF EXISTS auth_permission;
CREATE TABLE IF NOT EXISTS "auth_permission" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "content_type_id" integer NOT NULL REFERENCES "django_content_type" ("id") DEFERRABLE INITIALLY DEFERRED, "codename" varchar(100) NOT NULL, "name" varchar(255) NOT NULL);
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (1, 1, 'add_logentry', 'Can add log entry');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (2, 1, 'change_logentry', 'Can change log entry');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (3, 1, 'delete_logentry', 'Can delete log entry');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (4, 1, 'view_logentry', 'Can view log entry');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (5, 2, 'add_permission', 'Can add permission');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (6, 2, 'change_permission', 'Can change permission');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (7, 2, 'delete_permission', 'Can delete permission');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (8, 2, 'view_permission', 'Can view permission');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (9, 3, 'add_group', 'Can add group');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (10, 3, 'change_group', 'Can change group');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (11, 3, 'delete_group', 'Can delete group');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (12, 3, 'view_group', 'Can view group');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (13, 4, 'add_user', 'Can add user');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (14, 4, 'change_user', 'Can change user');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (15, 4, 'delete_user', 'Can delete user');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (16, 4, 'view_user', 'Can view user');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (17, 5, 'add_contenttype', 'Can add content type');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (18, 5, 'change_contenttype', 'Can change content type');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (19, 5, 'delete_contenttype', 'Can delete content type');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (20, 5, 'view_contenttype', 'Can view content type');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (21, 6, 'add_session', 'Can add session');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (22, 6, 'change_session', 'Can change session');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (23, 6, 'delete_session', 'Can delete session');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (24, 6, 'view_session', 'Can view session');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (25, 7, 'add_cursos', 'Can add cursos');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (26, 7, 'change_cursos', 'Can change cursos');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (27, 7, 'delete_cursos', 'Can delete cursos');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (28, 7, 'view_cursos', 'Can view cursos');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (29, 8, 'add_modulos', 'Can add modulos');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (30, 8, 'change_modulos', 'Can change modulos');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (31, 8, 'delete_modulos', 'Can delete modulos');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (32, 8, 'view_modulos', 'Can view modulos');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (33, 9, 'add_clases', 'Can add clases');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (34, 9, 'change_clases', 'Can change clases');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (35, 9, 'delete_clases', 'Can delete clases');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (36, 9, 'view_clases', 'Can view clases');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (37, 10, 'add_evaluaciones', 'Can add evaluaciones');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (38, 10, 'change_evaluaciones', 'Can change evaluaciones');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (39, 10, 'delete_evaluaciones', 'Can delete evaluaciones');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (40, 10, 'view_evaluaciones', 'Can view evaluaciones');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (41, 11, 'add_preguntas', 'Can add preguntas');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (42, 11, 'change_preguntas', 'Can change preguntas');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (43, 11, 'delete_preguntas', 'Can delete preguntas');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (44, 11, 'view_preguntas', 'Can view preguntas');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (45, 12, 'add_cargo', 'Can add cargo');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (46, 12, 'change_cargo', 'Can change cargo');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (47, 12, 'delete_cargo', 'Can delete cargo');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (48, 12, 'view_cargo', 'Can view cargo');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (49, 13, 'add_usuario_cargo', 'Can add usuario_ cargo');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (50, 13, 'change_usuario_cargo', 'Can change usuario_ cargo');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (51, 13, 'delete_usuario_cargo', 'Can delete usuario_ cargo');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (52, 13, 'view_usuario_cargo', 'Can view usuario_ cargo');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (53, 14, 'add_clase_usuario', 'Can add clase_ usuario');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (54, 14, 'change_clase_usuario', 'Can change clase_ usuario');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (55, 14, 'delete_clase_usuario', 'Can delete clase_ usuario');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (56, 14, 'view_clase_usuario', 'Can view clase_ usuario');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (57, 15, 'add_materialapoyo', 'Can add material apoyo');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (58, 15, 'change_materialapoyo', 'Can change material apoyo');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (59, 15, 'delete_materialapoyo', 'Can delete material apoyo');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (60, 15, 'view_materialapoyo', 'Can view material apoyo');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (61, 16, 'add_cargos', 'Can add cargos');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (62, 16, 'change_cargos', 'Can change cargos');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (63, 16, 'delete_cargos', 'Can delete cargos');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (64, 16, 'view_cargos', 'Can view cargos');

-- Table: auth_user
DROP TABLE IF EXISTS auth_user;
CREATE TABLE IF NOT EXISTS "auth_user" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "password" varchar(128) NOT NULL, "last_login" datetime NULL, "is_superuser" bool NOT NULL, "username" varchar(150) NOT NULL UNIQUE, "last_name" varchar(150) NOT NULL, "email" varchar(254) NOT NULL, "is_staff" bool NOT NULL, "is_active" bool NOT NULL, "date_joined" datetime NOT NULL, "first_name" varchar(150) NOT NULL);
INSERT INTO auth_user (id, password, last_login, is_superuser, username, last_name, email, is_staff, is_active, date_joined, first_name) VALUES (1, 'pbkdf2_sha256$390000$c1Ll2zN05QnTgzBDip5EiP$dz4U1lJlaKJQnByFgdO+DLKymtWnetUqGORXCCQbxD0=', '2023-10-11 01:15:54.414593', 1, 'admin', '', 'cyresmoduloformativo@gmail.com', 1, 1, '2023-04-17 00:02:07.628877', '');
INSERT INTO auth_user (id, password, last_login, is_superuser, username, last_name, email, is_staff, is_active, date_joined, first_name) VALUES (2, 'pbkdf2_sha256$390000$Q70pDuAS0NqZTOvRT8R2Ss$niauVWPKHaGTouiVwfQFUsoxk9pxS1yq10r3bI42lpM=', '2023-09-27 00:07:50.199257', 1, 'admin1', '', 'cyresmoduloformativo@gmail.com', 1, 1, '2023-09-27 00:07:27.583288', '');
INSERT INTO auth_user (id, password, last_login, is_superuser, username, last_name, email, is_staff, is_active, date_joined, first_name) VALUES (3, 'pbkdf2_sha256$390000$lnZZRKsa51rIvLkn0Gwcn6$6HMgtESAxfFGnQdORU5TX5BvNj0SAwTfXNJedXPb8kQ=', '2023-10-11 23:29:43.000830', 1, 'AdminOficial', '', 'cyresmoduloformativo@gmail.com', 1, 1, '2023-10-04 02:01:05.780538', '');
INSERT INTO auth_user (id, password, last_login, is_superuser, username, last_name, email, is_staff, is_active, date_joined, first_name) VALUES (4, 'pbkdf2_sha256$390000$TY8BXWY7JBeB7LiAEQvIbX$KfN7zGn1KjOMSyRjnAghxyVbgSX1wdquA2dCc4tLgmc=', '2023-10-07 12:55:15.563359', 0, 'Yuliana', '', '', 0, 1, '2023-10-05 23:04:25', '');
INSERT INTO auth_user (id, password, last_login, is_superuser, username, last_name, email, is_staff, is_active, date_joined, first_name) VALUES (6, 'pbkdf2_sha256$600000$LMVB8NujsrhC9zyGFsJx9I$+PgSBmHUulnVHqXD7yirg1gFAfIee5sV9jg8FX7Cj/o=', '2023-10-06 00:00:03.171791', 1, 'Admin', '', 'Admin@gmail.com', 1, 1, '2023-10-05 23:59:15.580298', '');
INSERT INTO auth_user (id, password, last_login, is_superuser, username, last_name, email, is_staff, is_active, date_joined, first_name) VALUES (7, 'pbkdf2_sha256$390000$YUVmqZu8FHUIkPjDSy7Ka8$FgdpvgvQEtMOYSTHsH75nOpqvMrRuPt+1nMMqK3Pgao=', NULL, 0, '', '', 'ledin56362@elixirsd.com', 0, 1, '2023-10-10 00:42:53.397632', '');
INSERT INTO auth_user (id, password, last_login, is_superuser, username, last_name, email, is_staff, is_active, date_joined, first_name) VALUES (8, 'pbkdf2_sha256$390000$J8PY0Cr96D15oC9cODkfNw$cuk0LN06zsVo8HrViKTw2mCJf8QJnfh/K/6dPl0a5SE=', '2023-10-11 01:11:09.632197', 0, 'CamilaB', '', 'ledin56362@elixirsd.com', 0, 1, '2023-10-10 00:45:50.033806', '');
INSERT INTO auth_user (id, password, last_login, is_superuser, username, last_name, email, is_staff, is_active, date_joined, first_name) VALUES (9, 'pbkdf2_sha256$390000$VTYjvbJbyNwjaOXUHn2KX5$ixTJyWuybSAJ/Z3o/5CZDGq6fV9WD+Gl83bd7mieq30=', '2023-10-10 00:53:28.446685', 0, 'Santiago', '', 'srlimon54@gmail.com', 0, 1, '2023-10-10 00:50:17.528538', '');
INSERT INTO auth_user (id, password, last_login, is_superuser, username, last_name, email, is_staff, is_active, date_joined, first_name) VALUES (11, 'pbkdf2_sha256$390000$lNOqJ350NTuHVLOHTmMtBq$wDhm+qzb1Xpv3BSN4O0qY247wE3hz8/8bvsC2NHkQ+E=', '2023-10-10 05:35:11', 0, 'Karol', '', 'ledin56362@elixirsd.com', 0, 1, '2023-10-10 05:34:55', '');
INSERT INTO auth_user (id, password, last_login, is_superuser, username, last_name, email, is_staff, is_active, date_joined, first_name) VALUES (13, 'pbkdf2_sha256$390000$y36nRbT4LpjvMXSI2RaJab$Unk2Q26c6Fj+CYF7IGNFcmEWKyyzvuufYcn3FENFaFQ=', '2023-10-10 05:41:08.141090', 0, 'Andres', '', 'ledin56362@elixirsd.com', 0, 1, '2023-10-10 05:38:22.953716', '');
INSERT INTO auth_user (id, password, last_login, is_superuser, username, last_name, email, is_staff, is_active, date_joined, first_name) VALUES (14, 'pbkdf2_sha256$390000$gvLjzZc9YcpNOdfB8tWYVo$5dFmDpamvFxWtp2EG2bx3eI5w0FBXA/rx611MWjNZPA=', '2023-10-10 06:17:26.068979', 0, 'Cristian', '', 'ledin56362@elixirsd.com', 0, 1, '2023-10-10 06:17:03.854600', '');
INSERT INTO auth_user (id, password, last_login, is_superuser, username, last_name, email, is_staff, is_active, date_joined, first_name) VALUES (15, 'pbkdf2_sha256$390000$XixkzPShoTWSyDb07nIIzn$2pti5fzztlaLASVJYyakRhn7HLTQnKX4qeuutbg1h9o=', NULL, 0, 'Pato', '', 'ledin56362@elixirsd.com', 0, 1, '2023-10-11 01:06:47.947453', '');
INSERT INTO auth_user (id, password, last_login, is_superuser, username, last_name, email, is_staff, is_active, date_joined, first_name) VALUES (16, 'pbkdf2_sha256$390000$1mMhbmtsORhrv4CYJZGINv$t6jDF9vlJ4aHrSPA/VUm4jRxzKtYZBrKPsEZ9WraQuM=', NULL, 0, 'clara', '', 'ledin56362@elixirsd.com', 0, 1, '2023-10-11 01:26:39.013744', '');

-- Table: auth_user_groups
DROP TABLE IF EXISTS auth_user_groups;
CREATE TABLE IF NOT EXISTS "auth_user_groups" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "user_id" integer NOT NULL REFERENCES "auth_user" ("id") DEFERRABLE INITIALLY DEFERRED, "group_id" integer NOT NULL REFERENCES "auth_group" ("id") DEFERRABLE INITIALLY DEFERRED);

-- Table: auth_user_user_permissions
DROP TABLE IF EXISTS auth_user_user_permissions;
CREATE TABLE IF NOT EXISTS "auth_user_user_permissions" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "user_id" integer NOT NULL REFERENCES "auth_user" ("id") DEFERRABLE INITIALLY DEFERRED, "permission_id" integer NOT NULL REFERENCES "auth_permission" ("id") DEFERRABLE INITIALLY DEFERRED);

-- Table: django_admin_log
DROP TABLE IF EXISTS django_admin_log;
CREATE TABLE IF NOT EXISTS "django_admin_log" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "object_id" text NULL, "object_repr" varchar(200) NOT NULL, "action_flag" smallint unsigned NOT NULL CHECK ("action_flag" >= 0), "change_message" text NOT NULL, "content_type_id" integer NULL REFERENCES "django_content_type" ("id") DEFERRABLE INITIALLY DEFERRED, "user_id" integer NOT NULL REFERENCES "auth_user" ("id") DEFERRABLE INITIALLY DEFERRED, "action_time" datetime NOT NULL);
INSERT INTO django_admin_log (id, object_id, object_repr, action_flag, change_message, content_type_id, user_id, action_time) VALUES (1, '1', 'mate', 1, '[{"added": {}}]', 7, 1, '2023-04-29 16:48:45.626672');
INSERT INTO django_admin_log (id, object_id, object_repr, action_flag, change_message, content_type_id, user_id, action_time) VALUES (2, '4', 'Ingles', 2, '[{"changed": {"fields": ["IconoCurso"]}}]', 7, 1, '2023-04-29 18:50:46.866992');
INSERT INTO django_admin_log (id, object_id, object_repr, action_flag, change_message, content_type_id, user_id, action_time) VALUES (3, '4', 'Ingles', 2, '[{"changed": {"fields": ["Estado curso"]}}]', 7, 1, '2023-04-29 18:50:55.386255');
INSERT INTO django_admin_log (id, object_id, object_repr, action_flag, change_message, content_type_id, user_id, action_time) VALUES (4, '12', 'SAP', 3, '', 7, 1, '2023-07-05 17:01:04.881735');
INSERT INTO django_admin_log (id, object_id, object_repr, action_flag, change_message, content_type_id, user_id, action_time) VALUES (5, '11', 'SAP', 3, '', 7, 1, '2023-07-05 17:01:04.912982');
INSERT INTO django_admin_log (id, object_id, object_repr, action_flag, change_message, content_type_id, user_id, action_time) VALUES (6, '10', 'SAP', 3, '', 7, 1, '2023-07-05 17:01:04.912982');
INSERT INTO django_admin_log (id, object_id, object_repr, action_flag, change_message, content_type_id, user_id, action_time) VALUES (7, '9', 'SAP', 3, '', 7, 1, '2023-07-05 17:01:04.928606');
INSERT INTO django_admin_log (id, object_id, object_repr, action_flag, change_message, content_type_id, user_id, action_time) VALUES (8, '8', 'SAP', 3, '', 7, 1, '2023-07-05 17:01:04.944230');
INSERT INTO django_admin_log (id, object_id, object_repr, action_flag, change_message, content_type_id, user_id, action_time) VALUES (9, '19', 'djfid', 3, '', 7, 1, '2023-07-05 17:01:23.234971');
INSERT INTO django_admin_log (id, object_id, object_repr, action_flag, change_message, content_type_id, user_id, action_time) VALUES (10, '18', 'SAP', 3, '', 7, 1, '2023-07-05 17:01:23.250582');
INSERT INTO django_admin_log (id, object_id, object_repr, action_flag, change_message, content_type_id, user_id, action_time) VALUES (11, '17', 'SAP', 3, '', 7, 1, '2023-07-05 17:01:23.266209');
INSERT INTO django_admin_log (id, object_id, object_repr, action_flag, change_message, content_type_id, user_id, action_time) VALUES (12, '16', 'SAP', 3, '', 7, 1, '2023-07-05 17:01:23.266209');
INSERT INTO django_admin_log (id, object_id, object_repr, action_flag, change_message, content_type_id, user_id, action_time) VALUES (13, '15', 'SAP', 3, '', 7, 1, '2023-07-05 17:01:23.284850');
INSERT INTO django_admin_log (id, object_id, object_repr, action_flag, change_message, content_type_id, user_id, action_time) VALUES (14, '14', 'SAP', 3, '', 7, 1, '2023-07-05 17:01:23.297863');
INSERT INTO django_admin_log (id, object_id, object_repr, action_flag, change_message, content_type_id, user_id, action_time) VALUES (15, '13', 'SAP', 3, '', 7, 1, '2023-07-05 17:01:23.313496');
INSERT INTO django_admin_log (id, object_id, object_repr, action_flag, change_message, content_type_id, user_id, action_time) VALUES (16, '7', 'SAP', 3, '', 7, 1, '2023-07-05 17:01:23.313496');
INSERT INTO django_admin_log (id, object_id, object_repr, action_flag, change_message, content_type_id, user_id, action_time) VALUES (17, '6', 'SAP', 3, '', 7, 1, '2023-07-05 17:01:23.329120');
INSERT INTO django_admin_log (id, object_id, object_repr, action_flag, change_message, content_type_id, user_id, action_time) VALUES (18, '5', 'SAP', 3, '', 7, 1, '2023-07-05 17:01:23.344743');
INSERT INTO django_admin_log (id, object_id, object_repr, action_flag, change_message, content_type_id, user_id, action_time) VALUES (19, '38', 'xxsx', 3, '', 7, 1, '2023-07-05 17:02:03.087547');
INSERT INTO django_admin_log (id, object_id, object_repr, action_flag, change_message, content_type_id, user_id, action_time) VALUES (20, '37', 'xxsx', 3, '', 7, 1, '2023-07-05 17:02:03.103173');
INSERT INTO django_admin_log (id, object_id, object_repr, action_flag, change_message, content_type_id, user_id, action_time) VALUES (21, '36', 'xxsx', 3, '', 7, 1, '2023-07-05 17:02:03.103173');
INSERT INTO django_admin_log (id, object_id, object_repr, action_flag, change_message, content_type_id, user_id, action_time) VALUES (22, '33', 'Recursos', 3, '', 7, 1, '2023-07-05 17:02:03.118794');
INSERT INTO django_admin_log (id, object_id, object_repr, action_flag, change_message, content_type_id, user_id, action_time) VALUES (23, '32', 'Recursos', 3, '', 7, 1, '2023-07-05 17:02:03.118794');
INSERT INTO django_admin_log (id, object_id, object_repr, action_flag, change_message, content_type_id, user_id, action_time) VALUES (24, '31', 'Recursos', 3, '', 7, 1, '2023-07-05 17:02:03.134418');
INSERT INTO django_admin_log (id, object_id, object_repr, action_flag, change_message, content_type_id, user_id, action_time) VALUES (25, '30', 'Recursos', 3, '', 7, 1, '2023-07-05 17:02:03.134418');
INSERT INTO django_admin_log (id, object_id, object_repr, action_flag, change_message, content_type_id, user_id, action_time) VALUES (26, '29', 'Recursos', 3, '', 7, 1, '2023-07-05 17:02:03.150042');
INSERT INTO django_admin_log (id, object_id, object_repr, action_flag, change_message, content_type_id, user_id, action_time) VALUES (27, '28', 'Introduccion al SAP', 3, '', 7, 1, '2023-07-05 17:02:03.150042');
INSERT INTO django_admin_log (id, object_id, object_repr, action_flag, change_message, content_type_id, user_id, action_time) VALUES (28, '23', 'Contabilidad', 3, '', 7, 1, '2023-07-05 17:02:03.161054');
INSERT INTO django_admin_log (id, object_id, object_repr, action_flag, change_message, content_type_id, user_id, action_time) VALUES (29, '22', 'Contabilidad', 3, '', 7, 1, '2023-07-05 17:02:03.166062');
INSERT INTO django_admin_log (id, object_id, object_repr, action_flag, change_message, content_type_id, user_id, action_time) VALUES (30, '20', 'djfid', 3, '', 7, 1, '2023-07-05 17:02:03.166062');
INSERT INTO django_admin_log (id, object_id, object_repr, action_flag, change_message, content_type_id, user_id, action_time) VALUES (31, '2', 'Informatica', 3, '', 7, 1, '2023-07-05 17:02:03.181688');
INSERT INTO django_admin_log (id, object_id, object_repr, action_flag, change_message, content_type_id, user_id, action_time) VALUES (32, '1', 'RRR', 3, '', 7, 1, '2023-07-05 17:02:03.181688');
INSERT INTO django_admin_log (id, object_id, object_repr, action_flag, change_message, content_type_id, user_id, action_time) VALUES (33, '27', 'Introduccion al SAP', 3, '', 7, 1, '2023-07-05 17:02:33.653373');
INSERT INTO django_admin_log (id, object_id, object_repr, action_flag, change_message, content_type_id, user_id, action_time) VALUES (34, '1', 'Introduccion al SAP', 1, '[{"added": {}}]', 8, 1, '2023-07-05 17:02:49.567974');
INSERT INTO django_admin_log (id, object_id, object_repr, action_flag, change_message, content_type_id, user_id, action_time) VALUES (35, '1', 'Introduccion al SAP', 2, '[]', 8, 1, '2023-07-05 17:02:58.624587');
INSERT INTO django_admin_log (id, object_id, object_repr, action_flag, change_message, content_type_id, user_id, action_time) VALUES (36, '2', 'Introduccion a Informatica', 1, '[{"added": {}}]', 8, 1, '2023-07-05 17:03:24.862644');
INSERT INTO django_admin_log (id, object_id, object_repr, action_flag, change_message, content_type_id, user_id, action_time) VALUES (37, '1', 'sap pequeño', 1, '[{"added": {}}]', 9, 1, '2023-07-05 17:06:18.433458');
INSERT INTO django_admin_log (id, object_id, object_repr, action_flag, change_message, content_type_id, user_id, action_time) VALUES (38, '1', 'Evalucion 1', 1, '[{"added": {}}]', 10, 1, '2023-07-22 12:36:08.871843');
INSERT INTO django_admin_log (id, object_id, object_repr, action_flag, change_message, content_type_id, user_id, action_time) VALUES (39, '2', 'Evaluacion 2', 1, '[{"added": {}}]', 10, 1, '2023-07-22 13:03:27.721122');
INSERT INTO django_admin_log (id, object_id, object_repr, action_flag, change_message, content_type_id, user_id, action_time) VALUES (40, '3', 'Evaluacion 3', 1, '[{"added": {}}]', 10, 1, '2023-07-22 13:06:50.677073');
INSERT INTO django_admin_log (id, object_id, object_repr, action_flag, change_message, content_type_id, user_id, action_time) VALUES (41, '1', 'Que es SAP?', 1, '[{"added": {}}]', 11, 1, '2023-07-22 13:22:27.751255');
INSERT INTO django_admin_log (id, object_id, object_repr, action_flag, change_message, content_type_id, user_id, action_time) VALUES (42, '2', 'QIEIEIE?', 1, '[{"added": {}}]', 11, 1, '2023-07-22 13:31:31.111680');
INSERT INTO django_admin_log (id, object_id, object_repr, action_flag, change_message, content_type_id, user_id, action_time) VALUES (43, '3', 'kkkkkk', 1, '[{"added": {}}]', 11, 1, '2023-07-22 13:32:09.629824');
INSERT INTO django_admin_log (id, object_id, object_repr, action_flag, change_message, content_type_id, user_id, action_time) VALUES (44, '83', 'Informatica', 3, '', 7, 1, '2023-09-24 20:20:18.589762');
INSERT INTO django_admin_log (id, object_id, object_repr, action_flag, change_message, content_type_id, user_id, action_time) VALUES (45, '82', 'Informatica', 3, '', 7, 1, '2023-09-24 20:20:18.596444');
INSERT INTO django_admin_log (id, object_id, object_repr, action_flag, change_message, content_type_id, user_id, action_time) VALUES (46, '81', 'Informatica', 3, '', 7, 1, '2023-09-24 20:20:18.602849');
INSERT INTO django_admin_log (id, object_id, object_repr, action_flag, change_message, content_type_id, user_id, action_time) VALUES (47, '80', 'Informatica', 3, '', 7, 1, '2023-09-24 20:20:18.603950');
INSERT INTO django_admin_log (id, object_id, object_repr, action_flag, change_message, content_type_id, user_id, action_time) VALUES (48, '79', 'Informatica', 3, '', 7, 1, '2023-09-24 20:20:18.603950');
INSERT INTO django_admin_log (id, object_id, object_repr, action_flag, change_message, content_type_id, user_id, action_time) VALUES (49, '78', 'Informatica', 3, '', 7, 1, '2023-09-24 20:20:18.621069');
INSERT INTO django_admin_log (id, object_id, object_repr, action_flag, change_message, content_type_id, user_id, action_time) VALUES (50, '77', 'Informatica', 3, '', 7, 1, '2023-09-24 20:20:18.627802');
INSERT INTO django_admin_log (id, object_id, object_repr, action_flag, change_message, content_type_id, user_id, action_time) VALUES (51, '76', 'Informatica', 3, '', 7, 1, '2023-09-24 20:20:18.634194');
INSERT INTO django_admin_log (id, object_id, object_repr, action_flag, change_message, content_type_id, user_id, action_time) VALUES (52, '75', 'Informatica', 3, '', 7, 1, '2023-09-24 20:20:18.637198');
INSERT INTO django_admin_log (id, object_id, object_repr, action_flag, change_message, content_type_id, user_id, action_time) VALUES (53, '74', 'Informatica', 3, '', 7, 1, '2023-09-24 20:20:18.637198');
INSERT INTO django_admin_log (id, object_id, object_repr, action_flag, change_message, content_type_id, user_id, action_time) VALUES (54, '73', 'Informatica', 3, '', 7, 1, '2023-09-24 20:20:18.653331');
INSERT INTO django_admin_log (id, object_id, object_repr, action_flag, change_message, content_type_id, user_id, action_time) VALUES (55, '72', 'Informatica', 3, '', 7, 1, '2023-09-24 20:20:18.658640');
INSERT INTO django_admin_log (id, object_id, object_repr, action_flag, change_message, content_type_id, user_id, action_time) VALUES (56, '71', 'Informatica', 3, '', 7, 1, '2023-09-24 20:20:18.664448');
INSERT INTO django_admin_log (id, object_id, object_repr, action_flag, change_message, content_type_id, user_id, action_time) VALUES (57, '70', 'Informatica', 3, '', 7, 1, '2023-09-24 20:20:18.670543');
INSERT INTO django_admin_log (id, object_id, object_repr, action_flag, change_message, content_type_id, user_id, action_time) VALUES (58, '69', 'Informatica', 3, '', 7, 1, '2023-09-24 20:20:18.670543');
INSERT INTO django_admin_log (id, object_id, object_repr, action_flag, change_message, content_type_id, user_id, action_time) VALUES (59, '68', 'Informatica', 3, '', 7, 1, '2023-09-24 20:20:18.670543');
INSERT INTO django_admin_log (id, object_id, object_repr, action_flag, change_message, content_type_id, user_id, action_time) VALUES (60, '67', 'Astronomia', 3, '', 7, 1, '2023-09-24 20:20:18.688645');
INSERT INTO django_admin_log (id, object_id, object_repr, action_flag, change_message, content_type_id, user_id, action_time) VALUES (61, '66', 'Astronomia', 3, '', 7, 1, '2023-09-24 20:20:18.695381');
INSERT INTO django_admin_log (id, object_id, object_repr, action_flag, change_message, content_type_id, user_id, action_time) VALUES (62, '65', 'Astronomia', 3, '', 7, 1, '2023-09-24 20:20:18.700652');
INSERT INTO django_admin_log (id, object_id, object_repr, action_flag, change_message, content_type_id, user_id, action_time) VALUES (63, '64', 'Astronomia', 3, '', 7, 1, '2023-09-24 20:20:18.703833');
INSERT INTO django_admin_log (id, object_id, object_repr, action_flag, change_message, content_type_id, user_id, action_time) VALUES (64, '63', 'Gastronomia', 3, '', 7, 1, '2023-09-24 20:20:18.703833');
INSERT INTO django_admin_log (id, object_id, object_repr, action_flag, change_message, content_type_id, user_id, action_time) VALUES (65, '62', 'Gastronomia', 3, '', 7, 1, '2023-09-24 20:20:18.719454');
INSERT INTO django_admin_log (id, object_id, object_repr, action_flag, change_message, content_type_id, user_id, action_time) VALUES (66, '61', 'Gastronomia', 3, '', 7, 1, '2023-09-24 20:20:18.720621');
INSERT INTO django_admin_log (id, object_id, object_repr, action_flag, change_message, content_type_id, user_id, action_time) VALUES (67, '60', 'Gastronomia', 3, '', 7, 1, '2023-09-24 20:20:18.720621');
INSERT INTO django_admin_log (id, object_id, object_repr, action_flag, change_message, content_type_id, user_id, action_time) VALUES (68, '4', '¿Un número que no tiene un numérico propio?', 2, '[{"changed": {"fields": ["Nombre pregunta"]}}]', 11, 1, '2023-09-25 23:55:18.195375');
INSERT INTO django_admin_log (id, object_id, object_repr, action_flag, change_message, content_type_id, user_id, action_time) VALUES (69, '4', '¿Un número que no tiene un numérico propio?', 2, '[]', 11, 1, '2023-09-25 23:55:25.265337');
INSERT INTO django_admin_log (id, object_id, object_repr, action_flag, change_message, content_type_id, user_id, action_time) VALUES (70, '5', '¿Nombre el único número primo par?', 2, '[]', 11, 1, '2023-09-25 23:58:29.975452');
INSERT INTO django_admin_log (id, object_id, object_repr, action_flag, change_message, content_type_id, user_id, action_time) VALUES (71, '6', '¿Nombre el único número primo par?', 2, '[{"changed": {"fields": ["Nombre pregunta", "Respuesta correcta"]}}]', 11, 1, '2023-09-25 23:59:17.681403');
INSERT INTO django_admin_log (id, object_id, object_repr, action_flag, change_message, content_type_id, user_id, action_time) VALUES (72, '7', '¿cual es el nunero neto real despues de 7?', 2, '[{"changed": {"fields": ["Nombre pregunta", "Respuesta correcta"]}}]', 11, 1, '2023-09-25 23:59:52.766156');
INSERT INTO django_admin_log (id, object_id, object_repr, action_flag, change_message, content_type_id, user_id, action_time) VALUES (73, '8', '¿10.9*N es igual a 108.¿Cuanto es N?', 2, '[{"changed": {"fields": ["Nombre pregunta", "Opcion a", "Respuesta correcta"]}}]', 11, 1, '2023-09-26 00:01:36.315184');
INSERT INTO django_admin_log (id, object_id, object_repr, action_flag, change_message, content_type_id, user_id, action_time) VALUES (74, '9', '¿Qué son los riesgos del trabajo?', 2, '[{"changed": {"fields": ["Nombre pregunta", "Opcion a", "Opcion b", "Opcion c", "Opcion d", "Respuesta correcta"]}}]', 11, 1, '2023-09-26 00:15:01.003383');
INSERT INTO django_admin_log (id, object_id, object_repr, action_flag, change_message, content_type_id, user_id, action_time) VALUES (75, '10', 'Los riesgos del trabajo pueden producir', 2, '[{"changed": {"fields": ["Opcion b", "Opcion d", "Respuesta correcta"]}}]', 11, 1, '2023-09-26 00:25:35.227684');
INSERT INTO django_admin_log (id, object_id, object_repr, action_flag, change_message, content_type_id, user_id, action_time) VALUES (76, '11', '¿Cual es la finalidad de la normativa medioambiental?', 2, '[{"changed": {"fields": ["Nombre pregunta", "Opcion b", "Opcion c", "Opcion d", "Respuesta correcta"]}}]', 11, 1, '2023-09-26 00:26:00.402381');
INSERT INTO django_admin_log (id, object_id, object_repr, action_flag, change_message, content_type_id, user_id, action_time) VALUES (77, '12', 'cuando la empresa es menor de 10 empleados debe conformar un', 2, '[{"changed": {"fields": ["Respuesta correcta"]}}]', 11, 1, '2023-09-26 00:26:31.256183');
INSERT INTO django_admin_log (id, object_id, object_repr, action_flag, change_message, content_type_id, user_id, action_time) VALUES (78, '1', 'Que es SAP?', 3, '', 11, 1, '2023-09-26 00:26:45.450014');
INSERT INTO django_admin_log (id, object_id, object_repr, action_flag, change_message, content_type_id, user_id, action_time) VALUES (79, '2', 'QIEIEIE?', 3, '', 11, 1, '2023-09-26 00:26:51.576124');
INSERT INTO django_admin_log (id, object_id, object_repr, action_flag, change_message, content_type_id, user_id, action_time) VALUES (80, '3', 'kkkkkk', 3, '', 11, 1, '2023-09-26 00:26:56.704005');
INSERT INTO django_admin_log (id, object_id, object_repr, action_flag, change_message, content_type_id, user_id, action_time) VALUES (81, '13', '¿La higine industrial y la seguridad industrial son pilares del subprograma?', 2, '[{"changed": {"fields": ["Nombre pregunta", "Respuesta correcta"]}}]', 11, 1, '2023-09-26 00:27:26.013869');
INSERT INTO django_admin_log (id, object_id, object_repr, action_flag, change_message, content_type_id, user_id, action_time) VALUES (82, '20', '¿Que funcion cumplen las redes sociales en su proceso de ventas?', 2, '[{"changed": {"fields": ["Nombre pregunta", "Opcion a", "Opcion b", "Opcion d", "Respuesta correcta"]}}]', 11, 1, '2023-09-26 00:29:02.976540');
INSERT INTO django_admin_log (id, object_id, object_repr, action_flag, change_message, content_type_id, user_id, action_time) VALUES (83, '21', '?En qu? momento deja de insistir a un cliente?', 2, '[{"changed": {"fields": ["Respuesta correcta"]}}]', 11, 1, '2023-09-26 00:29:18.088184');
INSERT INTO django_admin_log (id, object_id, object_repr, action_flag, change_message, content_type_id, user_id, action_time) VALUES (84, '22', '¿si venden productos ilegales que haces?', 2, '[{"changed": {"fields": ["Nombre pregunta", "Opcion a", "Respuesta correcta"]}}]', 11, 1, '2023-09-26 00:30:03.322244');
INSERT INTO django_admin_log (id, object_id, object_repr, action_flag, change_message, content_type_id, user_id, action_time) VALUES (85, '23', 'los venderes tiene que tener un buen parlamento a la hora de ofrecer un producto eso es', 2, '[{"changed": {"fields": ["Opcion c"]}}]', 11, 1, '2023-09-26 00:30:26.801849');
INSERT INTO django_admin_log (id, object_id, object_repr, action_flag, change_message, content_type_id, user_id, action_time) VALUES (86, '26', 'El problema que aborda la Econom?a como ciencia se refiere a', 2, '[{"changed": {"fields": ["Nombre pregunta"]}}]', 11, 1, '2023-09-26 00:53:04.170342');
INSERT INTO django_admin_log (id, object_id, object_repr, action_flag, change_message, content_type_id, user_id, action_time) VALUES (87, '27', 'La econom?a para establecer sus principios. leyes o modelos', 2, '[{"changed": {"fields": ["Opcion c", "Respuesta correcta"]}}]', 11, 1, '2023-09-26 00:54:11.909392');
INSERT INTO django_admin_log (id, object_id, object_repr, action_flag, change_message, content_type_id, user_id, action_time) VALUES (88, '28', 'Los problemas centrales de todo sistema econ?mico son', 2, '[{"changed": {"fields": ["Opcion a", "Respuesta correcta"]}}]', 11, 1, '2023-09-26 01:03:19.199797');
INSERT INTO django_admin_log (id, object_id, object_repr, action_flag, change_message, content_type_id, user_id, action_time) VALUES (89, '28', 'Los problemas centrales de todo sistema econ?mico son', 2, '[{"changed": {"fields": ["Opcion c"]}}]', 11, 1, '2023-09-26 01:04:03.810659');
INSERT INTO django_admin_log (id, object_id, object_repr, action_flag, change_message, content_type_id, user_id, action_time) VALUES (90, '28', 'Los problemas centrales de todo sistema econ?mico son', 2, '[]', 11, 1, '2023-09-26 01:04:08.929575');
INSERT INTO django_admin_log (id, object_id, object_repr, action_flag, change_message, content_type_id, user_id, action_time) VALUES (91, '35', '¿Tienes clara tu propuesta de Valor?', 2, '[{"changed": {"fields": ["Nombre pregunta", "Opcion a", "Respuesta correcta"]}}]', 11, 1, '2023-09-26 01:05:50.708828');
INSERT INTO django_admin_log (id, object_id, object_repr, action_flag, change_message, content_type_id, user_id, action_time) VALUES (92, '36', '?Tienes materiales de prospecci?n adecuados?', 2, '[{"changed": {"fields": ["Opcion a", "Opcion b", "Opcion c", "Opcion d", "Respuesta correcta"]}}]', 11, 1, '2023-09-26 01:07:42.632243');
INSERT INTO django_admin_log (id, object_id, object_repr, action_flag, change_message, content_type_id, user_id, action_time) VALUES (93, '37', '¿Tu o tu equipo, estás formado en ventas o dirección de equipos?', 2, '[{"changed": {"fields": ["Nombre pregunta", "Opcion a", "Opcion b", "Opcion c", "Opcion d", "Respuesta correcta"]}}]', 11, 1, '2023-09-26 01:20:57.747206');
INSERT INTO django_admin_log (id, object_id, object_repr, action_flag, change_message, content_type_id, user_id, action_time) VALUES (94, '40', 'En los ingresos personales existe dos tipos de bienes', 2, '[{"changed": {"fields": ["Respuesta correcta"]}}]', 11, 1, '2023-09-26 01:22:57.627279');
INSERT INTO django_admin_log (id, object_id, object_repr, action_flag, change_message, content_type_id, user_id, action_time) VALUES (95, '41', 'Nos ayudar a medir la sensibilidad de los consumidores ante los distintos cambios en el precio', 2, '[{"changed": {"fields": ["Nombre pregunta", "Opcion c", "Respuesta correcta"]}}]', 11, 1, '2023-09-26 01:23:26.413353');
INSERT INTO django_admin_log (id, object_id, object_repr, action_flag, change_message, content_type_id, user_id, action_time) VALUES (96, '42', 'Si sube el precio de los productos los consumidores dejaran de consumirlo, asi que es una demanda', 2, '[{"changed": {"fields": ["Nombre pregunta", "Opcion c", "Respuesta correcta"]}}]', 11, 1, '2023-09-26 01:27:11.465705');
INSERT INTO django_admin_log (id, object_id, object_repr, action_flag, change_message, content_type_id, user_id, action_time) VALUES (97, '43', 'Este tipo de demanda nos describe a los consumidores que son pocos sensibles al precio', 2, '[{"changed": {"fields": ["Respuesta correcta"]}}]', 11, 1, '2023-09-26 01:27:45.768864');
INSERT INTO django_admin_log (id, object_id, object_repr, action_flag, change_message, content_type_id, user_id, action_time) VALUES (98, '44', 'Las alianzas estrategicas', 2, '[{"changed": {"fields": ["Opcion b", "Respuesta correcta"]}}]', 11, 1, '2023-09-26 01:28:47.603707');
INSERT INTO django_admin_log (id, object_id, object_repr, action_flag, change_message, content_type_id, user_id, action_time) VALUES (99, '44', 'Las alianzas estrategicas', 2, '[]', 11, 1, '2023-09-26 01:30:54.406237');
INSERT INTO django_admin_log (id, object_id, object_repr, action_flag, change_message, content_type_id, user_id, action_time) VALUES (100, '45', 'Ventajas de empresa subsidiaria comercial. Señala la respuesta incorrecta', 2, '[{"changed": {"fields": ["Nombre pregunta", "Opcion b", "Opcion c", "Opcion d", "Respuesta correcta"]}}]', 11, 1, '2023-09-26 01:32:21.846550');
INSERT INTO django_admin_log (id, object_id, object_repr, action_flag, change_message, content_type_id, user_id, action_time) VALUES (101, '48', 'Responder las siguientes afirmacion 1 + 1>2. si tu ganas yo tambien gano. siyo gano tu tambien ganas', 2, '[{"changed": {"fields": ["Nombre pregunta", "Respuesta correcta"]}}]', 11, 1, '2023-09-26 01:34:01.040382');
INSERT INTO django_admin_log (id, object_id, object_repr, action_flag, change_message, content_type_id, user_id, action_time) VALUES (102, '48', 'Responder las siguientes afirmacion 1 + 1>2. si tu ganas yo tambien gano. siyo gano tu tambien ganas', 2, '[{"changed": {"fields": ["Respuesta correcta"]}}]', 11, 1, '2023-09-26 01:34:17.714819');
INSERT INTO django_admin_log (id, object_id, object_repr, action_flag, change_message, content_type_id, user_id, action_time) VALUES (103, '51', '¿Cual de estos no es un navegador?', 2, '[{"changed": {"fields": ["Nombre pregunta", "Opcion d", "Respuesta correcta"]}}]', 11, 1, '2023-09-26 01:34:57.948008');
INSERT INTO django_admin_log (id, object_id, object_repr, action_flag, change_message, content_type_id, user_id, action_time) VALUES (104, '52', '¿Que entiende usted por Internet Explore. Mozila Firefox Y Google Chorme?', 2, '[{"changed": {"fields": ["Nombre pregunta", "Opcion b", "Respuesta correcta"]}}]', 11, 1, '2023-09-26 01:35:26.572990');
INSERT INTO django_admin_log (id, object_id, object_repr, action_flag, change_message, content_type_id, user_id, action_time) VALUES (105, '53', '¿El historial del navegador registra todas las paginas y sus fechas?', 2, '[{"changed": {"fields": ["Nombre pregunta", "Opcion d", "Respuesta correcta"]}}]', 11, 1, '2023-09-26 01:35:47.584090');
INSERT INTO django_admin_log (id, object_id, object_repr, action_flag, change_message, content_type_id, user_id, action_time) VALUES (106, '58', 'En la actualidad. los responsables de recursos humanos deber?an:', 2, '[{"changed": {"fields": ["Nombre pregunta", "Opcion b", "Opcion c", "Respuesta correcta"]}}]', 11, 1, '2023-09-26 01:38:49.229349');
INSERT INTO django_admin_log (id, object_id, object_repr, action_flag, change_message, content_type_id, user_id, action_time) VALUES (107, '59', 'En la ecuaci?n 3x - 2 = 13. el valor de x es:', 3, '', 11, 1, '2023-09-26 01:39:59.529231');
INSERT INTO django_admin_log (id, object_id, object_repr, action_flag, change_message, content_type_id, user_id, action_time) VALUES (108, '60', 'Si el valor de x = 3 en la ecuaci?n 9x- 4y = x + 4. el valor de y debe ser:', 2, '[{"changed": {"fields": ["Respuesta correcta"]}}]', 11, 1, '2023-09-26 01:40:48.600783');
INSERT INTO django_admin_log (id, object_id, object_repr, action_flag, change_message, content_type_id, user_id, action_time) VALUES (109, '63', '¿Cuál corresponde a la función objetivo del problema dual del modelo lineal adjunto?', 2, '[{"changed": {"fields": ["Nombre pregunta", "Opcion b", "Respuesta correcta"]}}]', 11, 1, '2023-09-26 01:41:37.276040');
INSERT INTO django_admin_log (id, object_id, object_repr, action_flag, change_message, content_type_id, user_id, action_time) VALUES (110, '64', 'Conjunto de normas jurídicas que están en vigor en determinado lugar y época,y   que   el   Estado', 2, '[{"changed": {"fields": ["Nombre pregunta", "Opcion b", "Respuesta correcta"]}}]', 11, 1, '2023-09-26 01:42:51.541403');
INSERT INTO django_admin_log (id, object_id, object_repr, action_flag, change_message, content_type_id, user_id, action_time) VALUES (111, '65', 'Es aquello que rige sobre todos los dem?s ordenamientos del sistema jur?dico', 2, '[{"changed": {"fields": ["Nombre pregunta", "Opcion a", "Respuesta correcta"]}}]', 11, 1, '2023-09-26 01:43:10.529150');
INSERT INTO django_admin_log (id, object_id, object_repr, action_flag, change_message, content_type_id, user_id, action_time) VALUES (112, '66', 'Tiene como misión conducir la política exterior de México, así como coordinarla   actuación   intern', 2, '[{"changed": {"fields": ["Nombre pregunta", "Respuesta correcta"]}}]', 11, 1, '2023-09-26 02:04:08.304299');
INSERT INTO django_admin_log (id, object_id, object_repr, action_flag, change_message, content_type_id, user_id, action_time) VALUES (113, '67', 'Es el acuerdo celebrado por escrito entre uno o varios Estados y una o varias organizaciones interna', 2, '[{"changed": {"fields": ["Nombre pregunta", "Respuesta correcta"]}}]', 11, 1, '2023-09-26 02:05:03.126685');
INSERT INTO django_admin_log (id, object_id, object_repr, action_flag, change_message, content_type_id, user_id, action_time) VALUES (114, '65', 'Es aquello que rige sobre todos los dem?s ordenamientos del sistema jur?dico', 2, '[]', 11, 1, '2023-09-26 02:05:19.147500');
INSERT INTO django_admin_log (id, object_id, object_repr, action_flag, change_message, content_type_id, user_id, action_time) VALUES (115, '68', 'Conjunto de normas expedidas por el Congreso de la Unión que deben ser observadas  por  el gobierno', 2, '[{"changed": {"fields": ["Nombre pregunta", "Respuesta correcta"]}}]', 11, 1, '2023-09-26 02:06:35.530103');
INSERT INTO django_admin_log (id, object_id, object_repr, action_flag, change_message, content_type_id, user_id, action_time) VALUES (116, '75', 'El ?xito de una empresa depende', 2, '[{"changed": {"fields": ["Opcion c", "Respuesta correcta"]}}]', 11, 1, '2023-09-26 02:08:09.265257');
INSERT INTO django_admin_log (id, object_id, object_repr, action_flag, change_message, content_type_id, user_id, action_time) VALUES (117, '76', 'Las compa?ias se mueven en un mercado altamente competitivo por ello debemos', 2, '[{"changed": {"fields": ["Opcion b", "Respuesta correcta"]}}]', 11, 1, '2023-09-26 02:08:28.118617');
INSERT INTO django_admin_log (id, object_id, object_repr, action_flag, change_message, content_type_id, user_id, action_time) VALUES (118, '77', 'El marketing indispensable para que una empresa pueda', 2, '[{"changed": {"fields": ["Nombre pregunta", "Opcion a", "Opcion b", "Respuesta correcta"]}}]', 11, 1, '2023-09-26 02:08:41.514960');
INSERT INTO django_admin_log (id, object_id, object_repr, action_flag, change_message, content_type_id, user_id, action_time) VALUES (119, '78', '¿Cuando hablamos del número de líneas que se comercializan nos referimos?', 2, '[{"changed": {"fields": ["Nombre pregunta", "Opcion a", "Respuesta correcta"]}}]', 11, 1, '2023-09-26 02:09:03.713795');
INSERT INTO django_admin_log (id, object_id, object_repr, action_flag, change_message, content_type_id, user_id, action_time) VALUES (120, '85', 'Cuando desglosamos una accion en niveles separados en capas de movimiento. Hablamos de', 2, '[{"changed": {"fields": ["Nombre pregunta", "Opcion a", "Opcion b", "Respuesta correcta"]}}]', 11, 1, '2023-09-26 02:09:54.994048');
INSERT INTO django_admin_log (id, object_id, object_repr, action_flag, change_message, content_type_id, user_id, action_time) VALUES (121, '86', 'Lo que proporciona a la accion su timing espec?fico y su calidad dinamica es:', 2, '[{"changed": {"fields": ["Nombre pregunta", "Respuesta correcta"]}}]', 11, 1, '2023-09-26 02:10:36.863622');
INSERT INTO django_admin_log (id, object_id, object_repr, action_flag, change_message, content_type_id, user_id, action_time) VALUES (122, '87', '¿Que es la tecnica de animacion?', 2, '[{"changed": {"fields": ["Nombre pregunta", "Respuesta correcta"]}}]', 11, 1, '2023-09-26 02:11:16.923206');
INSERT INTO django_admin_log (id, object_id, object_repr, action_flag, change_message, content_type_id, user_id, action_time) VALUES (123, '89', 'Subraye la respuesta correcta. ¿Como se expresa al diseño?', 2, '[{"changed": {"fields": ["Nombre pregunta", "Respuesta correcta"]}}]', 11, 1, '2023-09-26 02:43:20.085394');
INSERT INTO django_admin_log (id, object_id, object_repr, action_flag, change_message, content_type_id, user_id, action_time) VALUES (124, '92', 'el diseño es', 2, '[{"changed": {"fields": ["Nombre pregunta", "Opcion c", "Respuesta correcta"]}}]', 11, 1, '2023-09-26 02:44:10.692736');
INSERT INTO django_admin_log (id, object_id, object_repr, action_flag, change_message, content_type_id, user_id, action_time) VALUES (125, '92', 'el diseño es', 2, '[]', 11, 1, '2023-09-26 02:45:46.687855');
INSERT INTO django_admin_log (id, object_id, object_repr, action_flag, change_message, content_type_id, user_id, action_time) VALUES (126, '1', 'Evalucion 1', 3, '', 10, 1, '2023-09-26 02:59:53.923944');
INSERT INTO django_admin_log (id, object_id, object_repr, action_flag, change_message, content_type_id, user_id, action_time) VALUES (127, '2', 'Evaluacion 2', 3, '', 10, 1, '2023-09-26 03:00:01.674953');
INSERT INTO django_admin_log (id, object_id, object_repr, action_flag, change_message, content_type_id, user_id, action_time) VALUES (128, '3', 'Evaluacion 3', 3, '', 10, 1, '2023-09-26 03:00:20.275318');
INSERT INTO django_admin_log (id, object_id, object_repr, action_flag, change_message, content_type_id, user_id, action_time) VALUES (129, '94', 'Para gerenciar la función log?stica. la clave pasa por minimizar el costo', 2, '[{"changed": {"fields": ["Nombre pregunta", "Respuesta correcta"]}}]', 11, 1, '2023-09-26 03:16:09.831826');
INSERT INTO django_admin_log (id, object_id, object_repr, action_flag, change_message, content_type_id, user_id, action_time) VALUES (130, '95', 'Los costos por inmovilización de inventarios no incluyen a los', 2, '[{"changed": {"fields": ["Nombre pregunta", "Opcion b", "Opcion c", "Respuesta correcta"]}}]', 11, 1, '2023-09-26 03:16:29.190516');
INSERT INTO django_admin_log (id, object_id, object_repr, action_flag, change_message, content_type_id, user_id, action_time) VALUES (131, '96', 'El objetivo log?stico de la reducción de capital esta directamente dirigido a', 2, '[{"changed": {"fields": ["Nombre pregunta", "Opcion a", "Opcion d", "Respuesta correcta"]}}]', 11, 1, '2023-09-26 03:16:46.097060');
INSERT INTO django_admin_log (id, object_id, object_repr, action_flag, change_message, content_type_id, user_id, action_time) VALUES (132, '97', 'Los contratos de compras anticipadas. constituyen un nivel de planificaci?n', 2, '[{"changed": {"fields": ["Respuesta correcta"]}}]', 11, 1, '2023-09-26 03:17:04.016676');
INSERT INTO django_admin_log (id, object_id, object_repr, action_flag, change_message, content_type_id, user_id, action_time) VALUES (133, '98', 'Para controlar los niveles de inventario y planificar la ubicación de almacenes s necesario', 2, '[{"changed": {"fields": ["Nombre pregunta", "Opcion b", "Respuesta correcta"]}}]', 11, 1, '2023-09-26 03:17:21.435700');
INSERT INTO django_admin_log (id, object_id, object_repr, action_flag, change_message, content_type_id, user_id, action_time) VALUES (134, '99', 'En el modelo de prototipos una iteración se realiza cuando', 2, '[{"changed": {"fields": ["Nombre pregunta", "Opcion d", "Respuesta correcta"]}}]', 11, 1, '2023-09-26 03:18:51.666957');
INSERT INTO django_admin_log (id, object_id, object_repr, action_flag, change_message, content_type_id, user_id, action_time) VALUES (135, '1', 'Auxiliar de Contabilidad', 1, '[{"added": {}}]', 12, 2, '2023-09-27 00:32:51.047009');
INSERT INTO django_admin_log (id, object_id, object_repr, action_flag, change_message, content_type_id, user_id, action_time) VALUES (136, '2', 'Contador Principal', 1, '[{"added": {}}]', 12, 2, '2023-09-27 00:33:05.619635');
INSERT INTO django_admin_log (id, object_id, object_repr, action_flag, change_message, content_type_id, user_id, action_time) VALUES (137, '55', 'gastronomia', 2, '[{"changed": {"fields": ["Nombre curso", "Id cargo"]}}]', 7, 2, '2023-09-27 00:33:32.156402');
INSERT INTO django_admin_log (id, object_id, object_repr, action_flag, change_message, content_type_id, user_id, action_time) VALUES (138, '54', 'mercadotecnia', 2, '[{"changed": {"fields": ["Descripcion curso", "Id cargo"]}}]', 7, 2, '2023-09-27 00:33:38.685994');
INSERT INTO django_admin_log (id, object_id, object_repr, action_flag, change_message, content_type_id, user_id, action_time) VALUES (139, '1', 'admin - Auxiliar de Contabilidad', 1, '[{"added": {}}]', 13, 2, '2023-09-27 00:34:05.665072');
INSERT INTO django_admin_log (id, object_id, object_repr, action_flag, change_message, content_type_id, user_id, action_time) VALUES (140, '2', 'admin - Contador Principal', 1, '[{"added": {}}]', 13, 2, '2023-09-27 00:34:12.510267');
INSERT INTO django_admin_log (id, object_id, object_repr, action_flag, change_message, content_type_id, user_id, action_time) VALUES (141, '1', 'MaterialApoyo object (1)', 1, '[{"added": {}}]', 15, 1, '2023-09-29 03:32:30.575691');
INSERT INTO django_admin_log (id, object_id, object_repr, action_flag, change_message, content_type_id, user_id, action_time) VALUES (142, '2', 'MaterialApoyo object (2)', 1, '[{"added": {}}]', 15, 1, '2023-09-29 03:33:35.290721');
INSERT INTO django_admin_log (id, object_id, object_repr, action_flag, change_message, content_type_id, user_id, action_time) VALUES (143, '3', 'MaterialApoyo object (3)', 1, '[{"added": {}}]', 15, 1, '2023-09-29 03:35:41.858559');
INSERT INTO django_admin_log (id, object_id, object_repr, action_flag, change_message, content_type_id, user_id, action_time) VALUES (144, '10', 'admin - Introduccion a mercadotecnia - mercadotecnia01', 2, '[{"changed": {"fields": ["Visto"]}}]', 14, 2, '2023-09-30 00:36:21.763736');
INSERT INTO django_admin_log (id, object_id, object_repr, action_flag, change_message, content_type_id, user_id, action_time) VALUES (145, '1', 'MaterialApoyo object (1)', 3, '', 15, 1, '2023-09-30 16:52:21.543520');
INSERT INTO django_admin_log (id, object_id, object_repr, action_flag, change_message, content_type_id, user_id, action_time) VALUES (146, '2', 'MaterialApoyo object (2)', 3, '', 15, 1, '2023-09-30 16:52:26.760233');
INSERT INTO django_admin_log (id, object_id, object_repr, action_flag, change_message, content_type_id, user_id, action_time) VALUES (147, '3', 'MaterialApoyo object (3)', 3, '', 15, 1, '2023-09-30 16:52:36.804438');
INSERT INTO django_admin_log (id, object_id, object_repr, action_flag, change_message, content_type_id, user_id, action_time) VALUES (148, '4', 'internet de las cosas', 1, '[{"added": {}}]', 15, 1, '2023-09-30 17:02:11.686899');
INSERT INTO django_admin_log (id, object_id, object_repr, action_flag, change_message, content_type_id, user_id, action_time) VALUES (149, '5', 'Diagrama de flujo', 1, '[{"added": {}}]', 15, 1, '2023-09-30 20:30:29.430815');
INSERT INTO django_admin_log (id, object_id, object_repr, action_flag, change_message, content_type_id, user_id, action_time) VALUES (150, '5', 'Diagrama de flujo', 2, '[]', 15, 1, '2023-09-30 20:32:47.625815');
INSERT INTO django_admin_log (id, object_id, object_repr, action_flag, change_message, content_type_id, user_id, action_time) VALUES (151, '4', 'internet de las cosas', 2, '[]', 15, 1, '2023-10-01 05:21:50.798712');
INSERT INTO django_admin_log (id, object_id, object_repr, action_flag, change_message, content_type_id, user_id, action_time) VALUES (152, '5', 'Diagrama de flujo', 2, '[]', 15, 1, '2023-10-01 05:22:18.824691');
INSERT INTO django_admin_log (id, object_id, object_repr, action_flag, change_message, content_type_id, user_id, action_time) VALUES (153, '6', 'Administracion Publica', 1, '[{"added": {}}]', 15, 1, '2023-10-01 05:57:21.463355');
INSERT INTO django_admin_log (id, object_id, object_repr, action_flag, change_message, content_type_id, user_id, action_time) VALUES (154, '7', 'Admin. de empresas', 1, '[{"added": {}}]', 15, 1, '2023-10-01 05:57:57.103862');
INSERT INTO django_admin_log (id, object_id, object_repr, action_flag, change_message, content_type_id, user_id, action_time) VALUES (155, '8', 'Admin. logistico', 1, '[{"added": {}}]', 15, 1, '2023-10-01 05:58:33.384607');
INSERT INTO django_admin_log (id, object_id, object_repr, action_flag, change_message, content_type_id, user_id, action_time) VALUES (156, '9', 'Agente comercial', 1, '[{"added": {}}]', 15, 1, '2023-10-01 05:59:06.180454');
INSERT INTO django_admin_log (id, object_id, object_repr, action_flag, change_message, content_type_id, user_id, action_time) VALUES (157, '10', 'Animación digital', 1, '[{"added": {}}]', 15, 1, '2023-10-01 05:59:43.537194');
INSERT INTO django_admin_log (id, object_id, object_repr, action_flag, change_message, content_type_id, user_id, action_time) VALUES (158, '11', 'Contabilidad', 1, '[{"added": {}}]', 15, 1, '2023-10-01 06:00:13.224428');
INSERT INTO django_admin_log (id, object_id, object_repr, action_flag, change_message, content_type_id, user_id, action_time) VALUES (159, '12', 'Derecho', 1, '[{"added": {}}]', 15, 1, '2023-10-01 06:00:43.724571');
INSERT INTO django_admin_log (id, object_id, object_repr, action_flag, change_message, content_type_id, user_id, action_time) VALUES (160, '13', 'Economia', 1, '[{"added": {}}]', 15, 1, '2023-10-01 06:01:07.217994');
INSERT INTO django_admin_log (id, object_id, object_repr, action_flag, change_message, content_type_id, user_id, action_time) VALUES (161, '14', 'Gastronomia', 1, '[{"added": {}}]', 15, 1, '2023-10-01 06:01:35.833671');
INSERT INTO django_admin_log (id, object_id, object_repr, action_flag, change_message, content_type_id, user_id, action_time) VALUES (162, '15', 'Informatica', 1, '[{"added": {}}]', 15, 1, '2023-10-01 06:02:05.631577');
INSERT INTO django_admin_log (id, object_id, object_repr, action_flag, change_message, content_type_id, user_id, action_time) VALUES (163, '16', 'Ingenieria industrial', 1, '[{"added": {}}]', 15, 1, '2023-10-01 06:02:37.047060');
INSERT INTO django_admin_log (id, object_id, object_repr, action_flag, change_message, content_type_id, user_id, action_time) VALUES (164, '17', 'PHP', 1, '[{"added": {}}]', 15, 1, '2023-10-01 06:03:11.267492');
INSERT INTO django_admin_log (id, object_id, object_repr, action_flag, change_message, content_type_id, user_id, action_time) VALUES (165, '18', 'Mercadotecnia', 1, '[{"added": {}}]', 15, 1, '2023-10-01 06:03:57.987228');
INSERT INTO django_admin_log (id, object_id, object_repr, action_flag, change_message, content_type_id, user_id, action_time) VALUES (166, '4', 'Yuliana', 1, '[{"added": {}}]', 4, 3, '2023-10-05 23:04:26.152268');
INSERT INTO django_admin_log (id, object_id, object_repr, action_flag, change_message, content_type_id, user_id, action_time) VALUES (167, '4', 'Yuliana', 2, '[]', 4, 3, '2023-10-05 23:04:37.232345');
INSERT INTO django_admin_log (id, object_id, object_repr, action_flag, change_message, content_type_id, user_id, action_time) VALUES (168, '3', 'Yuliana - Auxiliar de Contabilidad', 1, '[{"added": {}}]', 13, 1, '2023-10-07 12:52:49.989910');
INSERT INTO django_admin_log (id, object_id, object_repr, action_flag, change_message, content_type_id, user_id, action_time) VALUES (169, '55', 'gastronomia', 2, '[{"changed": {"fields": ["Id cargo"]}}]', 7, 1, '2023-10-07 12:53:33.573132');
INSERT INTO django_admin_log (id, object_id, object_repr, action_flag, change_message, content_type_id, user_id, action_time) VALUES (170, '53', 'ciencias de comunicación', 2, '[{"changed": {"fields": ["Nombre curso", "Id cargo"]}}]', 7, 1, '2023-10-07 12:53:41.365906');
INSERT INTO django_admin_log (id, object_id, object_repr, action_flag, change_message, content_type_id, user_id, action_time) VALUES (171, '55', 'gastronomia', 2, '[{"changed": {"fields": ["Estado curso"]}}]', 7, 1, '2023-10-07 12:54:10.197563');
INSERT INTO django_admin_log (id, object_id, object_repr, action_flag, change_message, content_type_id, user_id, action_time) VALUES (172, '48', 'negocio internacionales', 2, '[{"changed": {"fields": ["Nombre curso", "Id cargo"]}}]', 7, 1, '2023-10-07 12:54:23.446655');
INSERT INTO django_admin_log (id, object_id, object_repr, action_flag, change_message, content_type_id, user_id, action_time) VALUES (173, '46', 'agente comercial', 2, '[{"changed": {"fields": ["Id cargo"]}}]', 7, 1, '2023-10-07 12:57:08.597901');
INSERT INTO django_admin_log (id, object_id, object_repr, action_flag, change_message, content_type_id, user_id, action_time) VALUES (174, '58', 'administrador de logistica', 2, '[{"changed": {"fields": ["Nombre curso", "Id cargo"]}}]', 7, 1, '2023-10-07 12:57:17.138997');
INSERT INTO django_admin_log (id, object_id, object_repr, action_flag, change_message, content_type_id, user_id, action_time) VALUES (175, '3', 'Bailarin', 1, '[{"added": {}}]', 12, 1, '2023-10-10 01:53:02.612477');
INSERT INTO django_admin_log (id, object_id, object_repr, action_flag, change_message, content_type_id, user_id, action_time) VALUES (176, '54', 'mercadotecnia', 2, '[{"changed": {"fields": ["Id cargo"]}}]', 7, 1, '2023-10-10 01:53:32.662083');
INSERT INTO django_admin_log (id, object_id, object_repr, action_flag, change_message, content_type_id, user_id, action_time) VALUES (177, '52', 'dereho', 2, '[{"changed": {"fields": ["Id cargo"]}}]', 7, 1, '2023-10-10 01:53:40.570921');
INSERT INTO django_admin_log (id, object_id, object_repr, action_flag, change_message, content_type_id, user_id, action_time) VALUES (178, '4', 'CamilaB - Bailarin', 1, '[{"added": {}}]', 13, 1, '2023-10-10 01:54:12.539753');
INSERT INTO django_admin_log (id, object_id, object_repr, action_flag, change_message, content_type_id, user_id, action_time) VALUES (179, '10', 'Andres', 2, '[]', 4, 1, '2023-10-10 05:24:10.330684');
INSERT INTO django_admin_log (id, object_id, object_repr, action_flag, change_message, content_type_id, user_id, action_time) VALUES (180, '11', 'Karol', 2, '[]', 4, 1, '2023-10-10 05:35:59.412175');
INSERT INTO django_admin_log (id, object_id, object_repr, action_flag, change_message, content_type_id, user_id, action_time) VALUES (181, '10', 'Andres', 3, '', 4, 1, '2023-10-10 05:36:14.778144');
INSERT INTO django_admin_log (id, object_id, object_repr, action_flag, change_message, content_type_id, user_id, action_time) VALUES (182, '12', 'Andres', 3, '', 4, 1, '2023-10-10 05:37:19.957266');
INSERT INTO django_admin_log (id, object_id, object_repr, action_flag, change_message, content_type_id, user_id, action_time) VALUES (183, '4', 'CamilaB - Bailarin', 2, '[]', 13, 1, '2023-10-11 01:22:48.166991');
INSERT INTO django_admin_log (id, object_id, object_repr, action_flag, change_message, content_type_id, user_id, action_time) VALUES (184, '4', 'CamilaB - Bailarin', 2, '[]', 13, 1, '2023-10-11 01:23:30.529203');
INSERT INTO django_admin_log (id, object_id, object_repr, action_flag, change_message, content_type_id, user_id, action_time) VALUES (185, '5', 'clara - Bailarin', 1, '[{"added": {}}]', 13, 1, '2023-10-11 01:27:56.936204');

-- Table: django_content_type
DROP TABLE IF EXISTS django_content_type;
CREATE TABLE IF NOT EXISTS "django_content_type" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "app_label" varchar(100) NOT NULL, "model" varchar(100) NOT NULL);
INSERT INTO django_content_type (id, app_label, model) VALUES (1, 'admin', 'logentry');
INSERT INTO django_content_type (id, app_label, model) VALUES (2, 'auth', 'permission');
INSERT INTO django_content_type (id, app_label, model) VALUES (3, 'auth', 'group');
INSERT INTO django_content_type (id, app_label, model) VALUES (4, 'auth', 'user');
INSERT INTO django_content_type (id, app_label, model) VALUES (5, 'contenttypes', 'contenttype');
INSERT INTO django_content_type (id, app_label, model) VALUES (6, 'sessions', 'session');
INSERT INTO django_content_type (id, app_label, model) VALUES (7, 'AppCursos', 'cursos');
INSERT INTO django_content_type (id, app_label, model) VALUES (8, 'AppCursos', 'modulos');
INSERT INTO django_content_type (id, app_label, model) VALUES (9, 'AppCursos', 'clases');
INSERT INTO django_content_type (id, app_label, model) VALUES (10, 'AppCursos', 'evaluaciones');
INSERT INTO django_content_type (id, app_label, model) VALUES (11, 'AppCursos', 'preguntas');
INSERT INTO django_content_type (id, app_label, model) VALUES (12, 'AppUsuarios', 'cargo');
INSERT INTO django_content_type (id, app_label, model) VALUES (13, 'AppUsuarios', 'usuario_cargo');
INSERT INTO django_content_type (id, app_label, model) VALUES (14, 'AppUsuarios', 'clase_usuario');
INSERT INTO django_content_type (id, app_label, model) VALUES (15, 'AppCursos', 'materialapoyo');
INSERT INTO django_content_type (id, app_label, model) VALUES (16, 'AppCursos', 'cargos');

-- Table: django_migrations
DROP TABLE IF EXISTS django_migrations;
CREATE TABLE IF NOT EXISTS "django_migrations" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "app" varchar(255) NOT NULL, "name" varchar(255) NOT NULL, "applied" datetime NOT NULL);
INSERT INTO django_migrations (id, app, name, applied) VALUES (1, 'contenttypes', '0001_initial', '2023-04-17 00:00:27.460394');
INSERT INTO django_migrations (id, app, name, applied) VALUES (2, 'auth', '0001_initial', '2023-04-17 00:00:27.537122');
INSERT INTO django_migrations (id, app, name, applied) VALUES (3, 'admin', '0001_initial', '2023-04-17 00:00:27.600160');
INSERT INTO django_migrations (id, app, name, applied) VALUES (4, 'admin', '0002_logentry_remove_auto_add', '2023-04-17 00:00:27.646237');
INSERT INTO django_migrations (id, app, name, applied) VALUES (5, 'admin', '0003_logentry_add_action_flag_choices', '2023-04-17 00:00:27.686474');
INSERT INTO django_migrations (id, app, name, applied) VALUES (6, 'contenttypes', '0002_remove_content_type_name', '2023-04-17 00:00:27.784687');
INSERT INTO django_migrations (id, app, name, applied) VALUES (7, 'auth', '0002_alter_permission_name_max_length', '2023-04-17 00:00:27.827791');
INSERT INTO django_migrations (id, app, name, applied) VALUES (8, 'auth', '0003_alter_user_email_max_length', '2023-04-17 00:00:27.871816');
INSERT INTO django_migrations (id, app, name, applied) VALUES (9, 'auth', '0004_alter_user_username_opts', '2023-04-17 00:00:27.912884');
INSERT INTO django_migrations (id, app, name, applied) VALUES (10, 'auth', '0005_alter_user_last_login_null', '2023-04-17 00:00:27.962657');
INSERT INTO django_migrations (id, app, name, applied) VALUES (11, 'auth', '0006_require_contenttypes_0002', '2023-04-17 00:00:27.979751');
INSERT INTO django_migrations (id, app, name, applied) VALUES (12, 'auth', '0007_alter_validators_add_error_messages', '2023-04-17 00:00:28.023068');
INSERT INTO django_migrations (id, app, name, applied) VALUES (13, 'auth', '0008_alter_user_username_max_length', '2023-04-17 00:00:28.084326');
INSERT INTO django_migrations (id, app, name, applied) VALUES (14, 'auth', '0009_alter_user_last_name_max_length', '2023-04-17 00:00:28.130183');
INSERT INTO django_migrations (id, app, name, applied) VALUES (15, 'auth', '0010_alter_group_name_max_length', '2023-04-17 00:00:28.165407');
INSERT INTO django_migrations (id, app, name, applied) VALUES (16, 'auth', '0011_update_proxy_permissions', '2023-04-17 00:00:28.203161');
INSERT INTO django_migrations (id, app, name, applied) VALUES (17, 'auth', '0012_alter_user_first_name_max_length', '2023-04-17 00:00:28.262489');
INSERT INTO django_migrations (id, app, name, applied) VALUES (18, 'sessions', '0001_initial', '2023-04-17 00:00:28.303561');
INSERT INTO django_migrations (id, app, name, applied) VALUES (19, 'AppCursos', '0001_initial', '2023-04-24 21:31:37.636125');
INSERT INTO django_migrations (id, app, name, applied) VALUES (20, 'AppCursos', '0002_alter_cursos_duracion_curso', '2023-04-24 21:31:37.659825');
INSERT INTO django_migrations (id, app, name, applied) VALUES (21, 'AppCursos', '0003_cursos_iconocurso', '2023-04-24 21:31:37.675572');
INSERT INTO django_migrations (id, app, name, applied) VALUES (22, 'AppCursos', '0004_modulos', '2023-04-24 21:31:37.697148');
INSERT INTO django_migrations (id, app, name, applied) VALUES (23, 'AppCursos', '0005_alter_cursos_duracion_curso', '2023-04-24 21:31:37.715144');
INSERT INTO django_migrations (id, app, name, applied) VALUES (24, 'AppCursos', '0006_alter_cursos_duracion_curso', '2023-04-24 21:31:37.736745');
INSERT INTO django_migrations (id, app, name, applied) VALUES (25, 'AppCursos', '0007_rename_descripcion_cursos_descripcion_curso_clases', '2023-04-24 21:31:37.771593');
INSERT INTO django_migrations (id, app, name, applied) VALUES (26, 'AppCursos', '0008_evaluaciones_alter_cursos_iconocurso_preguntas', '2023-07-05 17:12:30.957326');
INSERT INTO django_migrations (id, app, name, applied) VALUES (27, 'AppCursos', '0009_evaluaciones_descripcion_evaluacion_and_more', '2023-07-22 12:12:59.356939');
INSERT INTO django_migrations (id, app, name, applied) VALUES (28, 'AppCursos', '0010_evaluaciones_duracion_evaluacion_admin_and_more', '2023-07-22 12:27:24.864321');
INSERT INTO django_migrations (id, app, name, applied) VALUES (29, 'AppCursos', '0011_alter_evaluaciones_duracion_evaluacion_admin', '2023-07-22 12:35:21.277578');
INSERT INTO django_migrations (id, app, name, applied) VALUES (30, 'AppCursos', '0012_remove_evaluaciones_duracion_evaluacion_and_more', '2023-07-22 13:02:47.564691');
INSERT INTO django_migrations (id, app, name, applied) VALUES (31, 'AppCursos', '0013_preguntas_opcion_a_preguntas_opcion_b_and_more', '2023-07-22 13:11:46.716205');
INSERT INTO django_migrations (id, app, name, applied) VALUES (32, 'AppCursos', '0008_alter_cursos_iconocurso', '2023-08-05 11:27:51.161172');
INSERT INTO django_migrations (id, app, name, applied) VALUES (33, 'AppCursos', '0014_merge_20230722_0916', '2023-08-05 11:27:51.173596');
INSERT INTO django_migrations (id, app, name, applied) VALUES (34, 'AppCursos', '0002_alter_clases_descripcion_clase_and_more', '2023-09-09 15:31:08.923036');
INSERT INTO django_migrations (id, app, name, applied) VALUES (35, 'AppUsuarios', '0001_initial', '2023-09-26 02:53:10.878751');
INSERT INTO django_migrations (id, app, name, applied) VALUES (36, 'AppCursos', '0002_cursos_id_cargo', '2023-09-26 02:53:10.908325');
INSERT INTO django_migrations (id, app, name, applied) VALUES (37, 'AppCursos', '0003_rename_nombre_modulo_clases_id_modulo_and_more', '2023-09-27 01:26:29.169072');
INSERT INTO django_migrations (id, app, name, applied) VALUES (38, 'AppUsuarios', '0002_clase_usuario', '2023-09-27 01:26:29.228106');
INSERT INTO django_migrations (id, app, name, applied) VALUES (39, 'AppUsuarios', '0003_alter_clase_usuario_options_clase_usuario_id_clase_and_more', '2023-09-27 01:43:10.588803');
INSERT INTO django_migrations (id, app, name, applied) VALUES (40, 'AppCursos', '0004_clases_orden_clase', '2023-09-29 00:27:01.926092');
INSERT INTO django_migrations (id, app, name, applied) VALUES (41, 'AppCursos', '0005_modulos_orden_modulo', '2023-09-29 00:27:01.974101');
INSERT INTO django_migrations (id, app, name, applied) VALUES (42, 'AppCursos', '0006_materialapoyo', '2023-09-29 03:04:59.766319');
INSERT INTO django_migrations (id, app, name, applied) VALUES (43, 'AppCursos', '0007_remove_materialapoyo_idmaterial_and_more', '2023-09-30 16:59:44.949164');
INSERT INTO django_migrations (id, app, name, applied) VALUES (44, 'AppUsuarios', '0004_usuario_cargo_id_cursos', '2023-10-04 01:02:19.237689');
INSERT INTO django_migrations (id, app, name, applied) VALUES (45, 'AppCursos', '0007_remove_cursos_id_cargo', '2023-10-04 01:02:19.283332');
INSERT INTO django_migrations (id, app, name, applied) VALUES (46, 'AppUsuarios', '0005_remove_usuario_cargo_id_cursos_cargo_id_cursos', '2023-10-04 01:02:19.353522');
INSERT INTO django_migrations (id, app, name, applied) VALUES (47, 'AppUsuarios', '0006_remove_cargo_id_cursos', '2023-10-04 01:02:19.381246');
INSERT INTO django_migrations (id, app, name, applied) VALUES (48, 'AppCursos', '0008_cursos_id_cargo', '2023-10-04 01:02:19.424400');
INSERT INTO django_migrations (id, app, name, applied) VALUES (49, 'AppCursos', '0009_merge_20230930_2133', '2023-10-04 01:02:19.441262');
INSERT INTO django_migrations (id, app, name, applied) VALUES (50, 'AppCursos', '0010_cargos', '2023-10-10 18:15:15.566021');
INSERT INTO django_migrations (id, app, name, applied) VALUES (51, 'AppCursos', '0011_rename_activo_cargos_estado_cargo_and_more', '2023-10-10 19:07:23.003141');
INSERT INTO django_migrations (id, app, name, applied) VALUES (52, 'AppCursos', '0012_delete_cargos', '2023-10-11 01:38:03.330205');

-- Table: django_session
DROP TABLE IF EXISTS django_session;
CREATE TABLE IF NOT EXISTS "django_session" ("session_key" varchar(40) NOT NULL PRIMARY KEY, "session_data" text NOT NULL, "expire_date" datetime NOT NULL);
INSERT INTO django_session (session_key, session_data, expire_date) VALUES ('ra1whe3r7ep2480dq0eo8w0rm2gsdkvp', '.eJxVjMsOwiAQRf-FtSFMp0Bx6d5vIMNjpGogKe3K-O_apAvd3nPOfQlP21r81vPi5yTOAsTpdwsUH7nuIN2p3pqMra7LHOSuyIN2eW0pPy-H-3dQqJdvPTJzcBEgaYXBKsfDQAjOakuoyGkgpEQqYwwWmNjgaMAYDVOeQIN4fwDirzde:1psXQp:xkMUozOjJP3qzVchxK2D7QDMv7YDfs6lPDx58T5EZnw', '2023-05-12 23:23:15.953756');
INSERT INTO django_session (session_key, session_data, expire_date) VALUES ('ocj55bg2ulu8r4nxxa5sm4u4jkv4l9wc', '.eJxVjMsOwiAQRf-FtSFMp0Bx6d5vIMNjpGogKe3K-O_apAvd3nPOfQlP21r81vPi5yTOAsTpdwsUH7nuIN2p3pqMra7LHOSuyIN2eW0pPy-H-3dQqJdvPTJzcBEgaYXBKsfDQAjOakuoyGkgpEQqYwwWmNjgaMAYDVOeQIN4fwDirzde:1ptZvq:s9QvFSyhWdoFsP2xHUzrxSRhrc5bgPJXA0OIcR7v9Qw', '2023-05-15 20:15:34.740887');
INSERT INTO django_session (session_key, session_data, expire_date) VALUES ('leiu57syivvkbwmszdyec5002dyyaet5', '.eJxVjMsOwiAQRf-FtSFMp0Bx6d5vIMNjpGogKe3K-O_apAvd3nPOfQlP21r81vPi5yTOAsTpdwsUH7nuIN2p3pqMra7LHOSuyIN2eW0pPy-H-3dQqJdvPTJzcBEgaYXBKsfDQAjOakuoyGkgpEQqYwwWmNjgaMAYDVOeQIN4fwDirzde:1psr6U:-BZdn9tO9z-s-DQlsxIjsYrlxFSolMDFELMOEmabuXM', '2023-05-13 20:23:34.638025');
INSERT INTO django_session (session_key, session_data, expire_date) VALUES ('f3p0hk8nj5t27suxct2jc03qt8xikkov', '.eJxVjMsOwiAQRf-FtSFMp0Bx6d5vIMNjpGogKe3K-O_apAvd3nPOfQlP21r81vPi5yTOAsTpdwsUH7nuIN2p3pqMra7LHOSuyIN2eW0pPy-H-3dQqJdvPTJzcBEgaYXBKsfDQAjOakuoyGkgpEQqYwwWmNjgaMAYDVOeQIN4fwDirzde:1qGqHA:R2b1EBq8S-xeUlgdjEL5qC-uFKM07v6iWRpf5fXdQlo', '2023-07-19 00:21:44.423616');
INSERT INTO django_session (session_key, session_data, expire_date) VALUES ('m9aozj2la7f0zy9m5vw3rvpornsc8kqs', '.eJxVjMsOwiAQRf-FtSFMp0Bx6d5vIMNjpGogKe3K-O_apAvd3nPOfQlP21r81vPi5yTOAsTpdwsUH7nuIN2p3pqMra7LHOSuyIN2eW0pPy-H-3dQqJdvPTJzcBEgaYXBKsfDQAjOakuoyGkgpEQqYwwWmNjgaMAYDVOeQIN4fwDirzde:1qH5UV:-B2liG7uoohD4Bq_iTYo3fQpxrSTt2clyX53vjBmZnE', '2023-07-19 16:36:31.433448');
INSERT INTO django_session (session_key, session_data, expire_date) VALUES ('fz2aucssygfc9xpiipuu3lu6bbpzqwn2', '.eJxVjMsOwiAQRf-FtSFMp0Bx6d5vIMNjpGogKe3K-O_apAvd3nPOfQlP21r81vPi5yTOAsTpdwsUH7nuIN2p3pqMra7LHOSuyIN2eW0pPy-H-3dQqJdvPTJzcBEgaYXBKsfDQAjOakuoyGkgpEQqYwwWmNjgaMAYDVOeQIN4fwDirzde:1qNAls:8DPpANQr3Ed_EF_T4VoxUEpTt5REDx-gqWrmPnoISkw', '2023-08-05 11:27:36.275794');
INSERT INTO django_session (session_key, session_data, expire_date) VALUES ('2tkqbvhrj6lcdh8gr1n27ka5rtwc146m', '.eJxVjMsOwiAQRf-FtSFMp0Bx6d5vIMNjpGogKe3K-O_apAvd3nPOfQlP21r81vPi5yTOAsTpdwsUH7nuIN2p3pqMra7LHOSuyIN2eW0pPy-H-3dQqJdvPTJzcBEgaYXBKsfDQAjOakuoyGkgpEQqYwwWmNjgaMAYDVOeQIN4fwDirzde:1qNCpr:8jl3uA5rDLYzFsJ7f2gyYdBXshMKV-lQlOnVcKN2alc', '2023-08-05 13:39:51.299025');
INSERT INTO django_session (session_key, session_data, expire_date) VALUES ('jxtnn3t3oc4utyp59blkovpv49u62mlx', '.eJxVjMsOwiAQRf-FtSFMp0Bx6d5vIMNjpGogKe3K-O_apAvd3nPOfQlP21r81vPi5yTOAsTpdwsUH7nuIN2p3pqMra7LHOSuyIN2eW0pPy-H-3dQqJdvPTJzcBEgaYXBKsfDQAjOakuoyGkgpEQqYwwWmNjgaMAYDVOeQIN4fwDirzde:1qPiLF:pWOLMBxdWyhM4kIQi_SBr7EoRTONmhlzTOLxLgthFEY', '2023-08-12 11:42:37.739353');
INSERT INTO django_session (session_key, session_data, expire_date) VALUES ('6pujczegb6j1uv2l2sc13u70wrxhrhht', '.eJxVjMsOwiAQRf-FtSFMp0Bx6d5vIMNjpGogKe3K-O_apAvd3nPOfQlP21r81vPi5yTOAsTpdwsUH7nuIN2p3pqMra7LHOSuyIN2eW0pPy-H-3dQqJdvPTJzcBEgaYXBKsfDQAjOakuoyGkgpEQqYwwWmNjgaMAYDVOeQIN4fwDirzde:1qcQ7J:rEyDFqORvmflxf9Ke20hGBws2LdZmzhYFWyFwV1MS0o', '2023-09-16 12:52:45.856220');
INSERT INTO django_session (session_key, session_data, expire_date) VALUES ('jdu2w9547o9hz022vyes0tvn8pr8k3lw', '.eJxVjEEOwiAQRe_C2hAoFAaX7j0DmYFBqoYmpV0Z765NutDtf-_9l4i4rTVunZc4ZXEWWpx-N8L04LaDfMd2m2Wa27pMJHdFHrTL65z5eTncv4OKvX5rF5yjwXgO3oAiZlYmFCRnx1Ry0YFHA1pDdqEoDY4seBwSYPHIxYJ4fwDbcTf4:1qeyMt:ej7dSgfPc9JeAqwYaVOGUt1YFs6hRfgxn3VFj-j3NM0', '2023-09-23 13:51:23.446214');
INSERT INTO django_session (session_key, session_data, expire_date) VALUES ('3h2amtftz8fu6hyrqncwhndr1200c9nq', '.eJxVjEEOwiAQAP_C2RDoUkCP3n1Dswu7UjWQlPZk_Ltp0oNeZybzVhNua5m2zss0Z3VRVp1-GWF6ct1FfmC9N51aXZeZ9J7ow3Z9a5lf16P9GxTsZd8OEOUcfGAxFhyBZIjRQoBEJGgMCzMOXvxoCUMO4pwDh3mk0Sfj1OcL3do3-w:1qkUTb:kN_saue_hpuRvzPowxPc0ZO3CJCls1aKoMwgQiTC5SM', '2023-10-08 19:09:07.724647');
INSERT INTO django_session (session_key, session_data, expire_date) VALUES ('or6jrbay8vrwiv837shslaubwo3acxu1', '.eJxVjEEOwiAQAP_C2RDoUkCP3n1Dswu7UjWQlPZk_Ltp0oNeZybzVhNua5m2zss0Z3VRVp1-GWF6ct1FfmC9N51aXZeZ9J7ow3Z9a5lf16P9GxTsZd8OEOUcfGAxFhyBZIjRQoBEJGgMCzMOXvxoCUMO4pwDh3mk0Sfj1OcL3do3-w:1qkXx1:3qLjn_6-M4aMSyOnwY2YOWkPqsj2Sm4EL9_k96sYzsE', '2023-10-08 22:51:43.372850');
INSERT INTO django_session (session_key, session_data, expire_date) VALUES ('tscxov3xbc91k4am0oks375q9bkgydpp', '.eJxVjDsOwjAQBe_iGlnetdfZUNJzBstfHECOFCcV4u4QKQW0b2beSzi_rdVtPS9uSuIsUJx-t-DjI7cdpLtvt1nGua3LFOSuyIN2eZ1Tfl4O9--g-l6_dUBI44CsOaIuYKCQ9jBERUFZMui1BQbGQpSsKojGIoNOHDQRj0a8P6lHNew:1qlI5m:Z124AhtZeNTwKVFuMm8IctjSwk50p6Tryr_PH0ujzko', '2023-10-11 00:07:50.215264');
INSERT INTO django_session (session_key, session_data, expire_date) VALUES ('97pcjngka13garp4igujtlrcel8r6jjw', '.eJxVjEEOwiAQAP_C2RDoUkCP3n1Dswu7UjWQlPZk_Ltp0oNeZybzVhNua5m2zss0Z3VRVp1-GWF6ct1FfmC9N51aXZeZ9J7ow3Z9a5lf16P9GxTsZd8OEOUcfGAxFhyBZIjRQoBEJGgMCzMOXvxoCUMO4pwDh3mk0Sfj1OcL3do3-w:1qmxqj:pDBQlBRvPsexMNTA1zRTPBAto6sJijZChwJTPpSMncA', '2023-10-15 14:55:13.190785');
INSERT INTO django_session (session_key, session_data, expire_date) VALUES ('7pvl392burh2eyppete0i4z57qgzrp8d', '.eJxVjEEOwiAQAP_C2RDoUkCP3n1Dswu7UjWQlPZk_Ltp0oNeZybzVhNua5m2zss0Z3VRVp1-GWF6ct1FfmC9N51aXZeZ9J7ow3Z9a5lf16P9GxTsZd8OEOUcfGAxFhyBZIjRQoBEJGgMCzMOXvxoCUMO4pwDh3mk0Sfj1OcL3do3-w:1qmzAt:1Jb0-z85d6phtatHGpK1AfEVWDVdnPTW9fP8ZUZT-yE', '2023-10-15 16:20:07.058053');
INSERT INTO django_session (session_key, session_data, expire_date) VALUES ('00596d3esukbye8i33out1fxisgil178', '.eJxVjEEOwiAQRe_C2hBgBrEu3XuGZmAGqRpISrsy3l2bdKHb_977LzXSupRx7TKPE6uzOqrD7xYpPaRugO9Ub02nVpd5inpT9E67vjaW52V3_w4K9fKtEwIYtl4wWEMeKZ3AYkYQMNkQucGzCywhO5sMxyFmBi-Bk5DN6NX7A9nsOEo:1qoYGB:45HHbFw0AE2M70BpvqYKlv15UlSNJ_mjRHVv1KWnU7M', '2023-10-20 00:00:03.179282');
INSERT INTO django_session (session_key, session_data, expire_date) VALUES ('ci6dr84xyushlgf7x2nsai3fz53jqedw', '.eJxVjEEOwiAQAP_C2RDoUkCP3n1Dswu7UjWQlPZk_Ltp0oNeZybzVhNua5m2zss0Z3VRVp1-GWF6ct1FfmC9N51aXZeZ9J7ow3Z9a5lf16P9GxTsZd8OEOUcfGAxFhyBZIjRQoBEJGgMCzMOXvxoCUMO4pwDh3mk0Sfj1OcL3do3-w:1qp6gX:Vf0Pd8oHhbcPByzpuwJ9V8_HqbJNKIbhWCtLMqR0Utg', '2023-10-21 12:45:33.424996');
INSERT INTO django_session (session_key, session_data, expire_date) VALUES ('d1vj9mbjsfpimxtsc8ood8b11u543ohv', '.eJxVjEEOwiAQAP_C2RDoUkCP3n1Dswu7UjWQlPZk_Ltp0oNeZybzVhNua5m2zss0Z3VRVp1-GWF6ct1FfmC9N51aXZeZ9J7ow3Z9a5lf16P9GxTsZd8OEOUcfGAxFhyBZIjRQoBEJGgMCzMOXvxoCUMO4pwDh3mk0Sfj1OcL3do3-w:1qqNpK:sQjK4KCfISXzcErkljjLCsueqy47bINS5qHNHEcpEpk', '2023-10-25 01:15:54.425401');

-- Index: AppCursos_clases_id_modulo_id_8bede14d
DROP INDEX IF EXISTS AppCursos_clases_id_modulo_id_8bede14d;
CREATE INDEX IF NOT EXISTS "AppCursos_clases_id_modulo_id_8bede14d" ON "AppCursos_clases" ("id_modulo_id");

-- Index: AppCursos_cursos_id_cargo_id_e8a37026
DROP INDEX IF EXISTS AppCursos_cursos_id_cargo_id_e8a37026;
CREATE INDEX IF NOT EXISTS "AppCursos_cursos_id_cargo_id_e8a37026" ON "AppCursos_cursos" ("id_cargo_id");

-- Index: AppCursos_evaluaciones_id_modulo_id_037b75a3
DROP INDEX IF EXISTS AppCursos_evaluaciones_id_modulo_id_037b75a3;
CREATE INDEX IF NOT EXISTS "AppCursos_evaluaciones_id_modulo_id_037b75a3" ON "AppCursos_evaluaciones" ("id_modulo_id");

-- Index: AppCursos_materialapoyo_id_curso_id_47509a4c
DROP INDEX IF EXISTS AppCursos_materialapoyo_id_curso_id_47509a4c;
CREATE INDEX IF NOT EXISTS "AppCursos_materialapoyo_id_curso_id_47509a4c" ON "AppCursos_materialapoyo" ("id_curso_id");

-- Index: AppCursos_modulos_id_curso_id_2bbc0c8b
DROP INDEX IF EXISTS AppCursos_modulos_id_curso_id_2bbc0c8b;
CREATE INDEX IF NOT EXISTS "AppCursos_modulos_id_curso_id_2bbc0c8b" ON "AppCursos_modulos" ("id_curso_id");

-- Index: AppCursos_preguntas_id_evaluacion_id_c6254f34
DROP INDEX IF EXISTS AppCursos_preguntas_id_evaluacion_id_c6254f34;
CREATE INDEX IF NOT EXISTS "AppCursos_preguntas_id_evaluacion_id_c6254f34" ON "AppCursos_preguntas" ("id_evaluacion_id");

-- Index: AppUsuarios_clase_usuario_id_clase_id_ad521cda
DROP INDEX IF EXISTS AppUsuarios_clase_usuario_id_clase_id_ad521cda;
CREATE INDEX IF NOT EXISTS "AppUsuarios_clase_usuario_id_clase_id_ad521cda" ON "AppUsuarios_clase_usuario" ("id_clase_id");

-- Index: AppUsuarios_clase_usuario_id_modulo_id_fb7f4d55
DROP INDEX IF EXISTS AppUsuarios_clase_usuario_id_modulo_id_fb7f4d55;
CREATE INDEX IF NOT EXISTS "AppUsuarios_clase_usuario_id_modulo_id_fb7f4d55" ON "AppUsuarios_clase_usuario" ("id_modulo_id");

-- Index: AppUsuarios_clase_usuario_id_usuario_cargo_id_3f5f0e19
DROP INDEX IF EXISTS AppUsuarios_clase_usuario_id_usuario_cargo_id_3f5f0e19;
CREATE INDEX IF NOT EXISTS "AppUsuarios_clase_usuario_id_usuario_cargo_id_3f5f0e19" ON "AppUsuarios_clase_usuario" ("id_usuario_cargo_id");

-- Index: AppUsuarios_usuario_cargo_id_cargo_id_47c69af1
DROP INDEX IF EXISTS AppUsuarios_usuario_cargo_id_cargo_id_47c69af1;
CREATE INDEX IF NOT EXISTS "AppUsuarios_usuario_cargo_id_cargo_id_47c69af1" ON "AppUsuarios_usuario_cargo" ("id_cargo_id");

-- Index: AppUsuarios_usuario_cargo_id_usuario_id_ff5ddfd5
DROP INDEX IF EXISTS AppUsuarios_usuario_cargo_id_usuario_id_ff5ddfd5;
CREATE INDEX IF NOT EXISTS "AppUsuarios_usuario_cargo_id_usuario_id_ff5ddfd5" ON "AppUsuarios_usuario_cargo" ("id_usuario_id");

-- Index: auth_group_permissions_group_id_b120cbf9
DROP INDEX IF EXISTS auth_group_permissions_group_id_b120cbf9;
CREATE INDEX IF NOT EXISTS "auth_group_permissions_group_id_b120cbf9" ON "auth_group_permissions" ("group_id");

-- Index: auth_group_permissions_group_id_permission_id_0cd325b0_uniq
DROP INDEX IF EXISTS auth_group_permissions_group_id_permission_id_0cd325b0_uniq;
CREATE UNIQUE INDEX IF NOT EXISTS "auth_group_permissions_group_id_permission_id_0cd325b0_uniq" ON "auth_group_permissions" ("group_id", "permission_id");

-- Index: auth_group_permissions_permission_id_84c5c92e
DROP INDEX IF EXISTS auth_group_permissions_permission_id_84c5c92e;
CREATE INDEX IF NOT EXISTS "auth_group_permissions_permission_id_84c5c92e" ON "auth_group_permissions" ("permission_id");

-- Index: auth_permission_content_type_id_2f476e4b
DROP INDEX IF EXISTS auth_permission_content_type_id_2f476e4b;
CREATE INDEX IF NOT EXISTS "auth_permission_content_type_id_2f476e4b" ON "auth_permission" ("content_type_id");

-- Index: auth_permission_content_type_id_codename_01ab375a_uniq
DROP INDEX IF EXISTS auth_permission_content_type_id_codename_01ab375a_uniq;
CREATE UNIQUE INDEX IF NOT EXISTS "auth_permission_content_type_id_codename_01ab375a_uniq" ON "auth_permission" ("content_type_id", "codename");

-- Index: auth_user_groups_group_id_97559544
DROP INDEX IF EXISTS auth_user_groups_group_id_97559544;
CREATE INDEX IF NOT EXISTS "auth_user_groups_group_id_97559544" ON "auth_user_groups" ("group_id");

-- Index: auth_user_groups_user_id_6a12ed8b
DROP INDEX IF EXISTS auth_user_groups_user_id_6a12ed8b;
CREATE INDEX IF NOT EXISTS "auth_user_groups_user_id_6a12ed8b" ON "auth_user_groups" ("user_id");

-- Index: auth_user_groups_user_id_group_id_94350c0c_uniq
DROP INDEX IF EXISTS auth_user_groups_user_id_group_id_94350c0c_uniq;
CREATE UNIQUE INDEX IF NOT EXISTS "auth_user_groups_user_id_group_id_94350c0c_uniq" ON "auth_user_groups" ("user_id", "group_id");

-- Index: auth_user_user_permissions_permission_id_1fbb5f2c
DROP INDEX IF EXISTS auth_user_user_permissions_permission_id_1fbb5f2c;
CREATE INDEX IF NOT EXISTS "auth_user_user_permissions_permission_id_1fbb5f2c" ON "auth_user_user_permissions" ("permission_id");

-- Index: auth_user_user_permissions_user_id_a95ead1b
DROP INDEX IF EXISTS auth_user_user_permissions_user_id_a95ead1b;
CREATE INDEX IF NOT EXISTS "auth_user_user_permissions_user_id_a95ead1b" ON "auth_user_user_permissions" ("user_id");

-- Index: auth_user_user_permissions_user_id_permission_id_14a6b632_uniq
DROP INDEX IF EXISTS auth_user_user_permissions_user_id_permission_id_14a6b632_uniq;
CREATE UNIQUE INDEX IF NOT EXISTS "auth_user_user_permissions_user_id_permission_id_14a6b632_uniq" ON "auth_user_user_permissions" ("user_id", "permission_id");

-- Index: django_admin_log_content_type_id_c4bce8eb
DROP INDEX IF EXISTS django_admin_log_content_type_id_c4bce8eb;
CREATE INDEX IF NOT EXISTS "django_admin_log_content_type_id_c4bce8eb" ON "django_admin_log" ("content_type_id");

-- Index: django_admin_log_user_id_c564eba6
DROP INDEX IF EXISTS django_admin_log_user_id_c564eba6;
CREATE INDEX IF NOT EXISTS "django_admin_log_user_id_c564eba6" ON "django_admin_log" ("user_id");

-- Index: django_content_type_app_label_model_76bd3d3b_uniq
DROP INDEX IF EXISTS django_content_type_app_label_model_76bd3d3b_uniq;
CREATE UNIQUE INDEX IF NOT EXISTS "django_content_type_app_label_model_76bd3d3b_uniq" ON "django_content_type" ("app_label", "model");

-- Index: django_session_expire_date_a5c62663
DROP INDEX IF EXISTS django_session_expire_date_a5c62663;
CREATE INDEX IF NOT EXISTS "django_session_expire_date_a5c62663" ON "django_session" ("expire_date");

COMMIT TRANSACTION;
PRAGMA foreign_keys = on;
