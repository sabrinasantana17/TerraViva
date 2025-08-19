global.filtros_coletados = 0; // Inicializa o contador de filtros coletados
global.purificadores_criados = 0; // Para controlar quantos purificadores já foram criados
show_debug_message("Game Controller criado. Filtros coletados: " + string(global.filtros_coletados));
// Inicializa o estado do céu
global.estado_ceu = 0; // 0: poluído, 1: mediano, 2: limpo

// Adicione uma variável global para controlar a mudança do céu
global.chamines_desativadas_total = 0; // Você já tem 'global.ecopontuacao', mas este é mais específico
global.finalizar_fase_flora = false; // Definido como true quando o baú liberar as mudas


// Define o sprite inicial da camada de background 'bg_sky'
// O nome da camada deve ser o que você criou no passo 1.
// No obj_controle Create Event
// No obj_controle Create Event
global.estado_ceu = 0; // 0: poluído, 1: mediano, 2: limpo
global.chamines_desativadas_total = 0; // Certifique-se que este contador está sendo atualizado!
global.finalizar_fase_flora = false;

// Obtém os IDs das camadas de background para poder controlá-las
// ESTES NOMES DEVEM SER EXATAMENTE OS NOMES QUE VOCÊ DEU ÀS CAMADAS NA ROOM
bg_poluido_id = layer_get_id("bg_sky_poluido");
bg_mediano_id = layer_get_id("bg_sky_mediano");
bg_limpo_id = layer_get_id("bg_sky_limpo");

// Garante que apenas o céu poluído está visível no início
layer_set_visible(bg_mediano_id, false);
layer_set_visible(bg_limpo_id, false);
layer_set_visible(bg_poluido_id, true); // Garante que o primeiro está visível

show_debug_message("Game Controller criado. Céu inicial: Poluído. IDs: Poluído=" + string(bg_poluido_id) + ", Mediano=" + string(bg_mediano_id) + ", Limpo=" + string(bg_limpo_id));