// Esta é uma checagem de depuração constante.
// Remova este código depois que o problema for resolvido!
show_debug_message("Status atual:");
show_debug_message("  - Filtros Coletados: " + string(global.filtros_coletados));
show_debug_message("  - Purificadores Criados: " + string(global.purificadores_criados));
show_debug_message("  - Chaminés Desativadas: " + string(global.chamines_desativadas_total));

// A sua condição de criação do baú
if (global.filtros_coletados >= 20 &&
    global.purificadores_criados >= 4 &&
    global.chamines_desativadas_total >= 11 &&
    !global.bau_ja_criado)
{
    var _x_bau = 640;
    var _y_bau = 192;
    
    var _bau_instance = instance_create_layer(_x_bau, _y_bau, "Instances", obj_bau_mudas);

    if (instance_exists(_bau_instance)) {
        _bau_instance.image_xscale = 0.3;
        _bau_instance.image_yscale = 0.3;
        global.bau_ja_criado = true;
        
        show_debug_message("SUCESSO: Baú criado!");
    } else {
        show_debug_message("ERRO: Falha ao criar o baú.");
    }
}