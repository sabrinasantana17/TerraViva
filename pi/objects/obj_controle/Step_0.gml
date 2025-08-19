// Supondo que você tem 4 purificadores
if (global.purificadores_criados == 4 && !instance_exists(obj_bau_mudas))
{
    // ***** AJUSTE AQUI A COORDENADA DO BAÚ *****
    var _x_bau = 500; // Coordenada X onde o baú aparecerá
    var _y_bau = 500; // Coordenada Y onde o baú aparecerá

    instance_create_layer(_x_bau, _y_bau, "Instances", obj_bau_mudas);
    show_debug_message("Baú de mudas criado!");
}

// No obj_controle Step Event
// ... (sua lógica existente aqui, como a criação do baú, etc.) ...

// --- Lógica para o Céu Mediano (após desativar chaminés) ---
// Você precisa ter certeza que global.chamines_desativadas_total está sendo INCREMENTADO
// na colisão/interação de Lina com obj_chamine, quando a chaminé é desativada.
// Ex: global.chamines_desativadas_total += 1;
var total_chamines_na_fase = 3; // AJUSTE PARA O NÚMERO EXATO DE CHAMINÉS NA SUA FASE!

if (global.estado_ceu == 0 && global.chamines_desativadas_total >= total_chamines_na_fase)
{
    global.estado_ceu = 1; // Muda para céu mediano
    layer_set_visible(bg_poluido_id, false); // Desliga o poluído
    layer_set_visible(bg_mediano_id, true);  // Liga o mediano
    show_debug_message("Céu mudou para Mediano! Estado: " + string(global.estado_ceu));
}

// --- Lógica para o Céu Limpo (após plantar árvores/finalizar a flora) ---
// global.finalizar_fase_flora é setado para true no obj_bau_mudas.Collision_obj_lina
if (global.estado_ceu == 1 && global.finalizar_fase_flora)
{
    global.estado_ceu = 2; // Muda para céu limpo
    layer_set_visible(bg_mediano_id, false); // Desliga o mediano
    layer_set_visible(bg_limpo_id, true);    // Liga o limpo
    show_debug_message("Céu mudou para Limpo! Estado: " + string(global.estado_ceu));
    // Se você quiser que o jogo termine ou mude de fase aqui, adicione:
    // room_goto_next(); // ou room_goto(rm_tela_vitoria);
}