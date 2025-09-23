
var _mouse_x_room = camera_get_view_x(view_camera[0]) + device_mouse_x_to_gui(0);
var _mouse_y_room = camera_get_view_y(view_camera[0]) + device_mouse_y_to_gui(0);


if (mouse_check_button_pressed(mb_left) || keyboard_check_pressed(vk_space))
{
 
    var _clique_valido = false;
    if (mouse_check_button_pressed(mb_left)) {
        if (point_in_circle(_mouse_x_room, _mouse_y_room, x_botao_fechar, y_botao_fechar, 19)) {
            _clique_valido = true;
        }
    }
    
    
    if (_clique_valido || keyboard_check_pressed(vk_space))
    {
      
        var pontos_de_plantio = [
            [7808, 160], //ponto1
			 [8352, 96], //ponto2
			  [8864, 160], //ponto3
				 [8000, 512], //ponto4
					[8832, 416], //ponto5
					 [7744, 736], //ponto6
					  [8608, 736] //ponto7
					 
            
        ];

     
        for (var i = 0; i < array_length(pontos_de_plantio); i++)
        {
            var _x = pontos_de_plantio[i][0];
            var _y = pontos_de_plantio[i][1];

         
            var _muda = instance_create_layer(_x, _y, "Instances", obj_muda_arvore);
            
          
            _muda.image_xscale = 3; 
            _muda.image_yscale = 3;
            
            _muda.image_angle = 0; 
                                   
                                  
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