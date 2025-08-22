// Evento: Step
// Pega as coordenadas do mouse em relação ao mundo do jogo (levando a câmera em conta)
var _mouse_x_room = camera_get_view_x(view_camera[0]) + device_mouse_x_to_gui(0);
var _mouse_y_room = camera_get_view_y(view_camera[0]) + device_mouse_y_to_gui(0);

// Verifica se o botão 'X' foi clicado
if (mouse_check_button_pressed(mb_left))
{
    // Usa as coordenadas _mouse_x_room e _mouse_y_room para a verificação
    if (point_in_circle(_mouse_x_room, _mouse_y_room, x_botao_fechar, y_botao_fechar, 19))
    {
        // 1. Libera as mudas nos pontos de plantio
        with (obj_ponto_plantio)
        {
            sprite_index = spr_muda_plantada;
        }

        // 2. Destrói o baú de mudas (se ainda existir)
        if (instance_exists(obj_bau_mudas))
        {
            instance_destroy(obj_bau_mudas);
        }

        // 3. Permite o movimento do jogador novamente
        obj_player_f2.pode_mover = true;

        // 4. Marca a fase como finalizada para o controlador do jogo
        global.finalizar_fase_flora = true;

        // 5. Destrói o próprio objeto de aviso (a janela)
        instance_destroy();
    }
}