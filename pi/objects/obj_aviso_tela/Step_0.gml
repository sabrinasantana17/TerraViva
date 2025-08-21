// Evento: Step (do obj_aviso_tela)

// ... (código do mouse_check_button_pressed acima, com a correção) ...

if (mouse_check_button_pressed(mb_left))
{
    // Usa as coordenadas _mouse_x_room e _mouse_y_room para a verificação
    if (point_in_circle(_mouse_x_room, _mouse_y_room, x_botao_fechar, y_botao_fechar, 19))
    {
        // 1. Libera as mudas nos pontos de plantio
        with (obj_ponto_plantio)
        {
            sprite_index = spr_muda_plantada; // Muda o sprite para o da muda plantada
            show_debug_message("Muda apareceu no ponto de plantio em X:" + string(x) + ", Y:" + string(y));
        }

        // 2. Destrói o baú de mudas (se ainda existir)
        if (instance_exists(obj_bau_mudas))
        {
            instance_destroy(obj_bau_mudas); // Garante que o baú suma
        }

        // 3. Permite o movimento do jogador novamente
        obj_player_f2.pode_mover = true; 

        // 4. Marca a fase como finalizada para o controlador do jogo
        global.finalizar_fase_flora = true; 

        // 5. Destrói o próprio objeto de aviso (a janela)
        instance_destroy(); 
    }
}