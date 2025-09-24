// Verifica se o jogador pressionou a tecla de avanço
if (keyboard_check_pressed(vk_space)) {
    // Ativa todas as instâncias novamente
    instance_activate_all();

    // Vai para a próxima sala, se ela existir
    if (room_exists(next_room)) {
        room_goto(next_room);
    } else {
        show_debug_message("ERRO: Sala de destino '" + string(next_room) + "' não encontrada.");
    }

    // Destrói este objeto para que ele não permaneça na próxima sala
    instance_destroy();
}