// Desenha o fundo da tela final (a imagem que você já tem)
if (sprite_exists(background_image)) {
    var _x_pos = display_get_gui_width() / 2;
    var _y_pos = display_get_gui_height() / 2;
    draw_sprite(background_image, 0, _x_pos, _y_pos);
}

// Configurações de desenho do texto
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_set_color(c_white);

// Desenha a mensagem principal
draw_set_font(fnt_jogo);
draw_text_ext(display_get_gui_width() / 2, display_get_gui_height() / 2, text_message, 40, 800);

// Desenha a instrução para o jogador
draw_set_color(c_lime);
draw_text(display_get_gui_width() / 2, display_get_gui_height() - 50, "Pressione ESPAÇO para continuar");

// Volta às configurações padrão
draw_set_halign(fa_left);
draw_set_valign(fa_top);