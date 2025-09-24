// A mensagem a ser exibida
texto_aviso = "Parabens! Voce conseguiu purificar o ar deste ambiente. E como premio, para finalizar a fase, restaure a flora com esse premio do bau!";
// Posição na tela (ajuste conforme desejar)
x_pos = camera_get_view_x(view_camera[0]) + camera_get_view_width(view_camera[0]) / 2;
y_pos = camera_get_view_y(view_camera[0]) + camera_get_view_height(view_camera[0]) / 2;

// Tamanho do "quadro" da mensagem (ajuste)
largura_quadro = 600;
altura_quadro = 300;

// Coordenadas do botão 'X' (canto superior direito do quadro)
x_botao_fechar = x_pos + largura_quadro / 2 - 20; // 20px da borda
y_botao_fechar = y_pos - altura_quadro / 2 + 20; // 20px da borda

// Bloquear o movimento de Lina enquanto a mensagem está na tela
obj_player_f2.pode_mover = false; // Adicione esta variável em obj_lina.Create = true