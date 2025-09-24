// A mensagem a ser exibida
texto_aviso = "Parabens! Voce purificou o ar e desativou as chamines. Como premio, restaure a flora do ambiente com as mudas que estavam no bau! Pressione ESPACO ou o X para continuar.";

// Posição central na tela
x_pos = camera_get_view_x(view_camera[0]) + camera_get_view_width(view_camera[0]) / 2;
y_pos = camera_get_view_y(view_camera[0]) + camera_get_view_height(view_camera[0]) / 2;

// Tamanho do "quadro" da mensagem
largura_quadro = 600;
altura_quadro = 350;

// Coordenadas do botão 'X' (canto superior direito do quadro)
x_botao_fechar = x_pos + largura_quadro / 2 - 20;
y_botao_fechar = y_pos - altura_quadro / 2 + 20;

// Bloqueia o movimento do jogador
obj_player_f2.pode_mover = false;

show_debug_message("obj_aviso_tela criado!");