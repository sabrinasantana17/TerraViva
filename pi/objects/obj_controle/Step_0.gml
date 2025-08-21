// Supondo que você tem 4 purificadores
if (global.purificadores_criados == 4 && !instance_exists(obj_bau_mudas))
{
    // ***** AJUSTE AQUI A COORDENADA DO BAÚ *****
    var _x_bau = 640; // Coordenada X onde o baú aparecerá
    var _y_bau = 192; // Coordenada Y onde o baú aparecerá

    instance_create_layer(_x_bau, _y_bau, "Instances", obj_bau_mudas);
    show_debug_message("Baú de mudas criado!");
}

// No obj_controle Step Event
// ... (sua lógica existente aqui, como a criação do baú, etc.) ...

// --- Lógica para o Céu Mediano (após desativar chaminés) ---
// Você precisa ter certeza que global.chamines_desativadas_total está sendo INCREMENTADO
// na colisão/interação de Lina com obj_chamine, quando a chaminé é desativada.
// Ex: global.chamines_desativadas_total += 1;
var total_chamines_na_fase = 11; // AJUSTE PARA O NÚMERO EXATO DE CHAMINÉS NA SUA FASE!

