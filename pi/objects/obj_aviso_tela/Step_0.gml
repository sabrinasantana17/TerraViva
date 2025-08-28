// Evento: Step (do obj_aviso_tela)

// Pega as coordenadas do mouse em relação ao mundo do jogo (levando a câmera em conta)
var _mouse_x_room = camera_get_view_x(view_camera[0]) + device_mouse_x_to_gui(0);
var _mouse_y_room = camera_get_view_y(view_camera[0]) + device_mouse_y_to_gui(0);

// Verifica se o botão 'X' foi clicado OU se a tecla Espaço foi pressionada
if (mouse_check_button_pressed(mb_left) || keyboard_check_pressed(vk_space))
{
    // Apenas se o clique for dentro do círculo do botão 'X'
    var _clique_valido = false;
    if (mouse_check_button_pressed(mb_left)) {
        if (point_in_circle(_mouse_x_room, _mouse_y_room, x_botao_fechar, y_botao_fechar, 19)) {
            _clique_valido = true;
        }
    }
    
    // Se o clique foi no botão OU se a tecla Espaço foi pressionada
    if (_clique_valido || keyboard_check_pressed(vk_space))
    {
        // 1. Libera as mudas nos pontos de plantio
        // (AQUI VOCÊ DEFINE AS COORDENADAS EXATAS DAS MUDAS)
        var pontos_de_plantio = [
            [64, 768], // Ponto 1: x=100, y=200
			 [320, 768], // Ponto 2: x=350, y=450
			  [608, 768],
				 [992, 768],
					[864, 416],
					 [64, 288],
					  [416, 512]
					 // Ponto 3: x=600, y=150
            // Adicione mais pontos aqui conforme necessário!
        ];

       // Itera sobre as coordenadas e cria as mudas
        for (var i = 0; i < array_length(pontos_de_plantio); i++)
        {
            var _x = pontos_de_plantio[i][0];
            var _y = pontos_de_plantio[i][1];

            // Cria a instância da muda e armazena em uma variável temporária
            var _muda = instance_create_layer(_x, _y, "Instances", obj_muda_arvore);
            
            // ***** AJUSTE O TAMANHO E A ORIENTAÇÃO AQUI *****
            _muda.image_xscale = 3; // Reduz para 50% da largura original do sprite
            _muda.image_yscale = 3; // Reduz para 50% da altura original do sprite
            
            _muda.image_angle = 0; // Gira o sprite para a posição correta (0 graus)
                                   // Use 180 para virar para baixo, 90 para a direita, etc.
                                   // Se a árvore estava de cabeça para baixo, 0 deve corrigir.]
								   show_debug_message("Muda criada em X: " + string(_x) + ", Y: " + string(_y) + " com escala 1x.");
        }
								   
							
            
            

        // 2. Destrói o baú de mudas (se ainda existir)
        if (instance_exists(obj_bau_mudas))
        {
            instance_destroy(obj_bau_mudas);
            show_debug_message("Baú de mudas destruído.");
        }

        // 3. Permite o movimento do jogador novamente
        obj_player_f2.pode_mover = true; 

        // 4. Marca a fase como finalizada para o controlador do jogo
        global.finalizar_fase_flora = true; 

        // 5. Destrói o próprio objeto de aviso (a janela)
        instance_destroy();
    }
}