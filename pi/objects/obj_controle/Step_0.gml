var total_chamines_na_fase = 11; // Declare a variável aqui, no topo do evento

// Supondo que você tem 4 purificadores
if (global.purificadores_criados == 4 && !instance_exists(obj_bau_mudas))

{
    // ***** AJUSTE AQUI A COORDENADA DO BAÚ *****
    var _x_bau = 640; // Coordenada X onde o baú aparecerá
    var _y_bau = 192; // Coordenada Y onde o baú aparecerá
    
    // Primeiro, cria a instância e armazena em uma variável temporária
    var bau_instance = instance_create_layer(_x_bau, _y_bau, "Instances", obj_bau_mudas);

    // Agora que a instância existe, você pode ajustar o tamanho dela
   bau_instance.image_xscale = 0.7; // Exemplo: 70% da largura
    bau_instance.image_yscale = 0.7; // Exemplo: 70% da altura


    show_debug_message("Todas as " + string(total_chamines_na_fase) + " chaminés foram desativadas. Baú de mudas criado em X: " + string(_x_bau) + ", Y: " + string(_y_bau));
    show_debug_message("Baú de mudas criado!");
}