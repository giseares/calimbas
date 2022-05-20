# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require "open-uri"

puts "Limpiando la DB..."
Portfolio.destroy_all



puts "Creando Servicios..."
Cubicacion.create!(vo_tapa: 27.6, vo_bajo_block: 25, vol_junta: 7.44, vol_total: 60.04, cilindrada_unitaria: 399.67, vol_camara_compresion: 7.65, cil_diametro: 7.65, cil_carrera_de_piston: 8.7, junta_diametro: 7.77, junta_espesor: 0.16) 


puts "Creando Servicios..."
file = URI.open('https://res.cloudinary.com/giseares/image/upload/v1632258593/prd_design_daria-nepriakhina_01_mlgtig')
design = Portfolio.create!(
  category: "Formacion_Profesional",
  name: "Design Thinking",
  content: "Foco en los fundamentos teóricos y prácticos de todas las etapas del Design Thinking, enfocados en la creación de propuestas basadas en las experiencias y la mirada de usuarios.",
  url_image: 'daria-nepriakhina'
)
design.photo.attach(io: file, filename: 'prd_design_daria-nepriakhina_01_mlgtig', content_type: 'image/png')

file = URI.open('https://res.cloudinary.com/giseares/image/upload/v1632258593/prd_business_canva_kelly-sikkema_02_h9nymc')
canva = Portfolio.create!(
  category: "Formacion_Profesional",
  name: "Business Model Canva",
  content: "Permite tener una mayor claridad en cómo estudiar al público objetivo, definir qué le
  ofrece su producto o servicio al mercado, cómo venderlo y obtener ingresos.",
  url_image: 'kelly-sikkema'
)
canva.photo.attach(io: file, filename: 'prd_business_canva_kelly-sikkema_02_h9nymc', content_type: 'image/png')

file = URI.open('https://res.cloudinary.com/giseares/image/upload/v1632258593/prd_lean_jake-hills_03_unbpil')
lean = Portfolio.create!(
  category: "Formacion_Profesional",
  name: "Lean Startup",
  content: "Conocer la metodología Lean Startup. Emprender pensando en el cliente a través del
  Customer Development, así como definir y crear un Producto Mínimo Viable (PMV).",
  url_image: 'jake-hills'
)
lean.photo.attach(io: file, filename: '
prd_lean_jake-hills_03_unbpil', content_type: 'image/png')

file = URI.open('https://res.cloudinary.com/giseares/image/upload/v1632258593/prd_project_austin-distel_04_oqnghf')
project = Portfolio.create!(
  category: "Formacion_Profesional",
  name: "Project Management",
  content: "Consolidar los conocimientos de gestión de proyectos de los asistentes y aplicar las
  metodologías de gestión de proyectos a un proyecto concreto.",
  url_image: 'austin-distel'
)
project.photo.attach(io: file, filename: 'prd_project_austin-distel_04_oqnghf', content_type: 'image/png')

file = URI.open('https://res.cloudinary.com/giseares/image/upload/v1632258593/prd_cambio_kalei-peek_05_akrk3x')
cambio = Portfolio.create!(
  category: "Formacion_Profesional",
  name: "Gestión de Cambio Organizacional",
  content: "Impulsar un proceso de cambio no siempre es fácil, requiere de liderazgo positivo y de
  personas capacitadas para tener un cambio alineado a las competencias que busca el
  mercado.",
  url_image: 'kalei-peek'
)
cambio.photo.attach(io: file, filename: 'prd_cambio_kalei-peek_05_akrk3x', content_type: 'image/png')

file = URI.open('https://res.cloudinary.com/giseares/image/upload/v1632258593/prd_liderazgo_jehyun-sung_06_sq7hjf')
liderazgo = Portfolio.create!(
  category: "Formacion_Profesional",
  name: "Taller de Liderazgo",
  content: "Conocer las fortalezas del grupo de trabajadores para obtener lo mejor de cada uno y
  destinar estas capacidades hacia los fines y objetivos empresariales.",
  url_image: 'jehyun-sung'
)
liderazgo.photo.attach(io: file, filename: 'prd_liderazgo_jehyun-sung_06_sq7hjf', content_type: 'image/png')

file = URI.open('https://res.cloudinary.com/giseares/image/upload/v1632258593/prd_experience_blake-wisz_07_pwtdpn')
customer = Portfolio.create!(
  category: "Formacion_Profesional",
  name: "Customer Experience",
  content: "En este taller, utilizaremos un marco, adaptado de Customer Journey Mapping, para
  enfocar y organizar el pensamiento de los estudiantes sobre las implicaciones operativas
  de sus proyectos de marca.",
  url_image: 'blake-wisz'
)
customer.photo.attach(io: file, filename: 'prd_experience_blake-wisz_07_pwtdpn', content_type: 'image/png')

file = URI.open('https://res.cloudinary.com/giseares/image/upload/v1632258593/prd_negociacion_priscilla-du-preez_08_ogfril')
negociacion = Portfolio.create!(
  category: "Formacion_Profesional",
  name: "Negociación",
  content: "El taller ofrece a los participantes los conocimientos y las herramientas necesarios para ejercitar y desarrollar sus habilidades de negociación.",
  url_image: 'priscilla-du-preez'
)
negociacion.photo.attach(io: file, filename: 'prd_negociacion_priscilla-du-preez_08_ogfril', content_type: 'image/png')

file = URI.open('https://res.cloudinary.com/giseares/image/upload/v1632258593/prd_conversaciones_christina-wocintechchat_09_knkjr7')
conversaciones = Portfolio.create!(
  category: "Formacion_Profesional",
  name: "Conversaciones Difíciles",
  content: "Como siempre que hablamos, lo hacemos desde algún estado emocional, de la capacidad   de gestionar nuestras propias emociones depende, en gran medida, el éxito de nuestras conversaciones.",
  url_image: 'christina-wocintechchat'
)
conversaciones.photo.attach(io: file, filename: 'prd_conversaciones_christina-wocintechchat_09_knkjr7', content_type: 'image/png')

file = URI.open('https://res.cloudinary.com/giseares/image/upload/v1632258593/prd_escucha_mimi-thian_10_kan9bf')
escucha = Portfolio.create!(
  category: "Formacion_Profesional",
  name: "Escucha Activa",
  content: "La calidad en el servicio entregado a los clientes es una preocupación constante de las
  empresas para mantenerlos satisfechos y generar más clientes por el servicio entregado.
  Puede incluir calibración de descargos",
  url_image: 'mimi-thian'
)
escucha.photo.attach(io: file, filename: 'prd_escucha_mimi-thian_10_kan9bf', content_type: 'image/png')

file = URI.open('https://res.cloudinary.com/giseares/image/upload/v1632258593/prd_objecciones_afif-kusuma_11_l1vqmm')
objecciones = Portfolio.create!(
  category: "Formacion_Profesional",
  name: "Manejo de Objeciones",
  content: "Entrenar las diferentes fases de la negociación y practicar las principales objeciones y como
  responderlas.",
  url_image: 'afif-kusuma'
)
objecciones.photo.attach(io: file, filename: 'prd_objecciones_afif-kusuma_11_l1vqmm', content_type: 'image/png')

file = URI.open('https://res.cloudinary.com/giseares/image/upload/v1632258593/prd_neuro_bret-kavanaugh_12_mn52fq')
neuroventas = Portfolio.create!(
  category: "Formacion_Profesional",
  name: "Neuroventas",
  content: "Cómo potenciar nuestro rendimiento intelectual y poner en valor las inteligencias y
  capacidades que poseemos para aplicarlas en la neuroventa.",
  url_image: 'bret-kavanaugh'
)
neuroventas.photo.attach(io: file, filename: 'prd_neuro_bret-kavanaugh_12_mn52fq', content_type: 'image/png')

file = URI.open('https://res.cloudinary.com/giseares/image/upload/v1632258593/prd_ventas_nam-hoang_13_cym6wl')
ventas = Portfolio.create!(
  category: "Formacion_Profesional",
  name: "Taller de Ventas",
  content: "Tiene como objetivo formar a un equipo comercial para dominar los métodos, técnicas y
  habilidades que promuevan la venta y la fidelización del cliente.",
  url_image: 'nam-hoang_13'
)
ventas.photo.attach(io: file, filename: 'prd_ventas_nam-hoang_13_cym6wl', content_type: 'image/png')

file = URI.open('https://res.cloudinary.com/giseares/image/upload/v1632258593/prd_presentacones_matthew-osborn_14_pkt1hb')
presentaciones = Portfolio.create!(
  category: "Formacion_Profesional",
  name: "Presentaciones Eficaces",
  content: "El Taller brinda las herramientas esenciales para convertir tus presentaciones en
  presentaciones de alto impacto.",
  url_image: 'matthew-osborn.jpg'
)
presentaciones.photo.attach(io: file, filename: 'prd_presentacones_matthew-osborn_14_pkt1hb', content_type: 'image/png')

file = URI.open('https://res.cloudinary.com/giseares/image/upload/v1632258593/prd_cliente_arlington-research_15_vc8bau')
cliente = Portfolio.create!(
  category: "Formacion_Profesional",
  name: "Atención al Cliente",
  content: "Desarrollar habilidades para tratar efectivamente a las personas desde la parte humana y
  poder identificar las necesidades más ocultas, desde la escucha empática, el respeto y el
  logro de los objetivos de venta.",
  url_image: 'arlington-research'
)
cliente.photo.attach(io: file, filename: 'prd_cliente_arlington-research_15_vc8bau', content_type: 'image/png')

file = URI.open('https://res.cloudinary.com/giseares/image/upload/v1632258593/prd_rrss_adem-ay_16_ckhx8k')
redes = Portfolio.create!(
  category: "Formacion_Profesional",
  name: "Redes Sociales",
  content: "Adquirir y aplicar nuevos conocimientos, habilidades y destrezas en el diseño y gestión
  estratégica de redes sociales.",
  url_image: 'adem-ay'
)
redes.photo.attach(io: file, filename: 'prd_rrss_adem-ay_16_ckhx8k', content_type: 'image/png')

file = URI.open('https://res.cloudinary.com/giseares/image/upload/v1632258593/prd_coaching_empresrio_alejandro-escamilla_17_bdvbww')
empresarial = Portfolio.create!(
  category: "Coaching",
  name: "Coaching Empresario",
  content: "El coach te ayuda a ver su entorno, abre su visión y le ayuda a pensar en tus habilidades para
  desarrollar. Un valioso compañero externo que camina a su lado por un tiempo bien definido
  para que su personal encuentre nuevas soluciones.",
  url_image: 'alejandro-escamilla'
)
empresarial.photo.attach(io: file, filename: 'prd_coaching_empresrio_alejandro-escamilla_17_bdvbww', content_type: 'image/png')

file = URI.open('https://res.cloudinary.com/giseares/image/upload/v1632258593/prd_coaching_equipos_jamie-templeton_18_yo051f')
equipos = Portfolio.create!(
  category: "Coaching",
  name: "Coaching Equipos",
  content: "El objetivo de coaching de equipos es guiar a un equipo a que defina su meta común, identificar
  que limita su desarrollo y poner en marcha una transformación que les permita maximizar su
  potencial y optimizar su rendimiento.",
  url_image: 'jamie-templeton'
)
equipos.photo.attach(io: file, filename: 'prd_coaching_equipos_jamie-templeton_18_yo051f', content_type: 'image/png')

file = URI.open('https://res.cloudinary.com/giseares/image/upload/v1632258593/prd_procesos_clayton-robbins_19_gmpefx')
procesos = Portfolio.create!(
  category: "Consultoría",
  name: "Procesos de Negocios",
  content: "A partir de las necesidades de la gerencia y una serie de entrevistas in situ se trabaja en identificar y abordar las ineficiencias que desperdician recursos/capital y añaden costos.",
  url_image: 'clayton-robbins'
)
procesos.photo.attach(io: file, filename: 'prd_procesos_clayton-robbins_19_gmpefx', content_type: 'image/png')

file = URI.open('https://res.cloudinary.com/giseares/image/upload/v1632258593/prd_diving_laya-clode_20_ozuylj')
consultoria = Portfolio.create!(
  category: "Consultoría",
  name: "Consultoría Centros de Buceo",
  content: "Los programas pueden adaptarse según las necesidades de cada centro
  - Consultoría integral sobre su centro
  - Armado de plan de negocios / Business Case",
  url_image: 'laya-clode'
)
consultoria.photo.attach(io: file, filename: 'prd_diving_laya-clode_20_ozuylj', content_type: 'image/png')

puts "Creando Gallery"
file = URI.open('https://res.cloudinary.com/giseares/image/upload/v1632154876/proyecto_gallery_01L_zo8rui.jpg')
uno = Portfolio.create!( 
  category: "Gallery",
  name: "Large",
  content: "Viedma - Argentina"
)
uno.photo.attach(io: file, filename: 'proyecto_gallery_01L_zo8rui', content_type: 'image/png')

file = URI.open('https://res.cloudinary.com/giseares/image/upload/v1632154876/proyecto_gallery_02L_cioalr.jpg')
dos = Portfolio.create!( 
  category: "Gallery",
  name: "Large",
  content: "Ushuaia - Argentina"
)
dos.photo.attach(io: file, filename: 'proyecto_gallery_02L_cioalr', content_type: 'image/png')

file = URI.open('https://res.cloudinary.com/giseares/image/upload/v1632154876/proyecto_gallery_03L_qhwuvc')
tres = Portfolio.create!( 
  category: "Gallery",
  name: "Large",
  content: "Venecia - Italia"
)
tres.photo.attach(io: file, filename: 'proyecto_gallery_03L_qhwuvc', content_type: 'image/png')

file = URI.open('https://res.cloudinary.com/giseares/image/upload/v1632154876/proyecto_gallery_04A_sbgpwf')
cuatro = Portfolio.create!( 
  category: "Gallery",
  name: "Alta",
  content: "Paris - Francia"
)
cuatro.photo.attach(io: file, filename: 'proyecto_gallery_04A_sbgpwf', content_type: 'image/png')

file = URI.open('https://res.cloudinary.com/giseares/image/upload/v1632154876/proyecto_gallery_05A_hytvtb')
cinco = Portfolio.create!( 
  category: "Gallery",
  name: "Alta",
  content: "Hong Kong"
)
cinco.photo.attach(io: file, filename: 'proyecto_gallery_05A_hytvtb', content_type: 'image/png')

file = URI.open('https://res.cloudinary.com/giseares/image/upload/v1632154876/proyecto_gallery_06L_yvjh2g')
seis = Portfolio.create!( 
  category: "Gallery",
  name: "Alta",
  content: "Athenas - Grecia"
)
seis.photo.attach(io: file, filename: 'proyecto_gallery_06L_yvjh2g', content_type: 'image/png')


file = URI.open('https://res.cloudinary.com/giseares/image/upload/v1632154876/proyecto_gallery_07L_toze3d')
siete = Portfolio.create!( 
  category: "Gallery",
  name: "Alta",
  content: "Athenas - Grecia"
)
siete.photo.attach(io: file, filename: 'proyecto_gallery_07L_toze3d', content_type: 'image/png')

file = URI.open('https://res.cloudinary.com/giseares/image/upload/v1632154876/proyecto_gallery_08L_k2bqd2')
ocho = Portfolio.create!( 
  category: "Gallery",
  name: "Alta",
  content: "Mikonos - Grecia"
)
ocho.photo.attach(io: file, filename: 'proyecto_gallery_08L_k2bqd2', content_type: 'image/png')


file = URI.open('https://res.cloudinary.com/giseares/image/upload/v1632154876/proyecto_gallery_09L_onfbet')
nueve = Portfolio.create!( 
  category: "Gallery",
  name: "Alta",
  content: "Jerusalen - Israel"
)
nueve.photo.attach(io: file, filename: 'proyecto_gallery_09L_onfbet', content_type: 'image/png')

file = URI.open('https://res.cloudinary.com/giseares/image/upload/v1632154876/proyecto_gallery_10A_rvpsw5')
diez = Portfolio.create!( 
  category: "Gallery",
  name: "Alta",
  content: "SanBer - Paraguay"
)
diez.photo.attach(io: file, filename: 'proyecto_gallery_10A_rvpsw5', content_type: 'image/png')

file = URI.open('https://res.cloudinary.com/giseares/image/upload/v1632154876/proyecto_gallery_11L_umq25c')
once = Portfolio.create!( 
  category: "Gallery",
  name: "Alta",
  content: "SanBer - Paraguay"
)
once.photo.attach(io: file, filename: 'proyecto_gallery_11L_umq25c', content_type: 'image/png')

file = URI.open('https://res.cloudinary.com/giseares/image/upload/v1632154876/proyecto_gallery_12L_eqxkqe')
doce = Portfolio.create!( 
  category: "Gallery",
  name: "Alta",
  content: "SanBer - Paraguay"
)
doce.photo.attach(io: file, filename: 'proyecto_gallery_12L_eqxkqe', content_type: 'image/png')

file = URI.open('https://res.cloudinary.com/giseares/image/upload/v1632154876/proyecto_gallery_13L_d5vzzr')
trece = Portfolio.create!( 
  category: "Gallery",
  name: "Alta",
  content: "SanBer - Paraguay"
)
trece.photo.attach(io: file, filename: 'proyecto_gallery_13L_d5vzzr', content_type: 'image/png')

file = URI.open('https://res.cloudinary.com/giseares/image/upload/v1632154876/proyecto_gallery_14L_gnfdc8')
catorce = Portfolio.create!( 
  category: "Gallery",
  name: "Alta",
  content: "SanBer - Paraguay"
)
catorce.photo.attach(io: file, filename: 'proyecto_gallery_14L_gnfdc8', content_type: 'image/png')

file = URI.open('https://res.cloudinary.com/giseares/image/upload/v1632154876/proyecto_gallery_15L_cw2fbt')
quince = Portfolio.create!( 
  category: "Gallery",
  name: "Alta",
  content: "SanBer - Paraguay"
)
quince.photo.attach(io: file, filename: 'proyecto_gallery_15L_cw2fbt', content_type: 'image/png')

file = URI.open('https://res.cloudinary.com/giseares/image/upload/v1632154876/proyecto_gallery_16L_ggjxd7')
dieciseis = Portfolio.create!( 
  category: "Gallery",
  name: "Alta",
  content: "Islas Maldivas"
)
dieciseis.photo.attach(io: file, filename: 'proyecto_gallery_16L_ggjxd7', content_type: 'image/png')

file = URI.open('https://res.cloudinary.com/giseares/image/upload/v1632154876/proyecto_gallery_17L_otoenp')
diesiete = Portfolio.create!( 
  category: "Gallery",
  name: "Alta",
  content: "Giza - Egipt"
)
diesiete.photo.attach(io: file, filename: 'proyecto_gallery_17L_otoenp', content_type: 'image/png')

file = URI.open('https://res.cloudinary.com/giseares/image/upload/v1632154876/proyecto_gallery_18A_wryrov')
diesioho = Portfolio.create!( 
  category: "Gallery",
  name: "Alta",
  content: "Giza - Egipt"
)
diesioho.photo.attach(io: file, filename: 'proyecto_gallery_18A_wryrov', content_type: 'image/png')

file = URI.open('https://res.cloudinary.com/giseares/image/upload/v1632154876/proyecto_gallery_19L_h3sjmg')
dieznueve = Portfolio.create!( 
  category: "Gallery",
  name: "Alta",
  content: "Al Ain - Emiratos Arabes"
)
dieznueve.photo.attach(io: file, filename: 'proyecto_gallery_19L_h3sjmg', content_type: 'image/png')

file = URI.open('https://res.cloudinary.com/giseares/image/upload/v1632154876/proyecto_gallery_20A_ryahue')
veinte = Portfolio.create!( 
  category: "Gallery",
  name: "Alta",
  content: "Dubai - Emiratos Arabes"
)
veinte.photo.attach(io: file, filename: 'proyecto_gallery_20A_ryahue', content_type: 'image/png')

file = URI.open('https://res.cloudinary.com/giseares/image/upload/v1632154876/proyecto_gallery_21A_ozfo0q')
veintiuno = Portfolio.create!( 
  category: "Gallery",
  name: "Alta",
  content: "Roma - Italia"
)
veintiuno.photo.attach(io: file, filename: 'proyecto_gallery_21A_ozfo0q', content_type: 'image/png')

file = URI.open('https://res.cloudinary.com/giseares/image/upload/v1632154876/proyecto_gallery_22A_rw8pmg')
veintedos = Portfolio.create!( 
  category: "Gallery",
  name: "Alta",
  content: "Pisa - Italia"
)
veintedos.photo.attach(io: file, filename: 'proyecto_gallery_22A_rw8pmg', content_type: 'image/png')

file = URI.open('https://res.cloudinary.com/giseares/image/upload/v1632154876/proyecto_gallery_23L_fdx5kx')
veintetres = Portfolio.create!( 
  category: "Gallery",
  name: "Alta",
  content: "Beijing - China"
)
veintetres.photo.attach(io: file, filename: 'proyecto_gallery_23L_fdx5kx', content_type: 'image/png')


file = URI.open('https://res.cloudinary.com/giseares/image/upload/v1632154876/proyecto_gallery_24L_yctith')
veinticuatro = Portfolio.create!( 
  category: "Gallery",
  name: "Alta",
  content: "Ushuaia - Argentina"
)
veinticuatro.photo.attach(io: file, filename: 'proyecto_gallery_24L_yctith', content_type: 'image/png')

file = URI.open('https://res.cloudinary.com/giseares/image/upload/v1632154876/proyecto_gallery_25L_vmx2ui')
veinticinco = Portfolio.create!( 
  category: "Gallery",
  name: "Alta",
  content: "Islas Maldivas"
)
veinticinco.photo.attach(io: file, filename: 'proyecto_gallery_25L_vmx2ui', content_type: 'image/png')

file = URI.open('https://res.cloudinary.com/giseares/image/upload/v1632154876/proyecto_gallery_26L_bccz1s')
veintiseis= Portfolio.create!( 
  category: "Gallery",
  name: "Alta",
  content: "Mar Rojo - Egipto"
)
veintiseis.photo.attach(io: file, filename: 'proyecto_gallery_26L_bccz1s', content_type: 'image/png')


file = URI.open('https://res.cloudinary.com/giseares/image/upload/v1632154876/proyecto_gallery_27L_imwh19')
veintisiete = Portfolio.create!( 
  category: "Gallery",
  name: "Alta",
  content: "San Juan - Argentina"
)
veintisiete.photo.attach(io: file, filename: 'proyecto_gallery_27L_imwh19', content_type: 'image/png')


puts "end"