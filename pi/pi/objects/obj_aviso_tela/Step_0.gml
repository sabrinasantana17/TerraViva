// A sua lógica de clique e plantio permanece a mesma
var _mouse_x_room = camera_get_view_x(view_camera[0]) + device_mouse_x_to_gui(0);
var _mouse_y_room = camera_get_view_y(view_camera[0]) + device_mouse_y_to_gui(0);

if (mouse_check_button_pressed(mb_left) || keyboard_check_pressed(vk_space))
{
    var _clique_valido = false;

    // Lógica do clique no botão 'X'
    if (mouse_check_button_pressed(mb_left)) {
        if (point_in_circle(_mouse_x_room, _mouse_y_room, x_botao_fechar, y_botao_fechar, 19)) {
            _clique_valido = true;
        }
    }

    if (keyboard_check_pressed(vk_space)) {
        show_debug_message("Espaço detectado dentro do aviso!");
        _clique_valido = true; // Espaço é um clique válido
    }

   if (_clique_valido) {
    // 1. Cria as mudas de árvores nos pontos de plantio (Seu código original)
    var pontos_de_plantio = [
        [135, 158], // ponto1
        [679, 90],  // ponto2
        [1191, 157], // ponto3
        [327, 507], // ponto4
        [1157, 410], // ponto5
        [68, 732],  // ponto6
        [932, 731]  // ponto7
    ];

    for (var i = 0; i < array_length(pontos_de_plantio); i++) {
        var _x = pontos_de_plantio[i][0];
        var _y = pontos_de_plantio[i][1];
        var _muda = instance_create_layer(_x, _y, "Instances", obj_muda_arvore);
        _muda.image_xscale = 2;
        _muda.image_yscale = 2;
        show_debug_message("Muda criada em X: " + string(_x) + ", Y: " + string(_y));
    }

    // 2. Destrói o baú de mudas (Seu código original)
    if (instance_exists(obj_bau_mudas)) {
        instance_destroy(obj_bau_mudas);
        show_debug_message("Baú de mudas destruído.");
    }

    // 3. Permite o movimento do jogador novamente (Seu código original)
    obj_player_f2.pode_mover = true;

    // 4. Cria a tela final e configura suas variáveis
    var _tela_final_inst = instance_create_layer(0, 0, "Instances", obj_tela_final);
    with (_tela_final_inst) {
        background_image = spr_final_2; // **Nome do seu sprite de fundo para esta fase**
        text_message = ""; // Mensagem da fase final
        instruction_message = "";
		next_room = Fase_4; // **Nome da próxima sala**
    }

    // 5. Destrói o próprio objeto de aviso (a janela) (Seu código original)
    instance_destroy();
   }
}