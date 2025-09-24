draw_set_halign(fa_center); // Alinhamento horizontal centralizado
draw_set_valign(fa_middle); // Alinhamento vertical centralizado

// Desenha o fundo do aviso (retângulo escuro sem preenchimento)
draw_set_color(c_green);
draw_rectangle(x_pos - largura_quadro / 2, y_pos - altura_quadro / 2, x_pos + largura_quadro / 2, y_pos + altura_quadro / 2, false);
draw_set_color(c_white); // Cor da borda
draw_rectangle(x_pos - largura_quadro / 2, y_pos - altura_quadro / 2, x_pos + largura_quadro / 2, y_pos + altura_quadro / 2, true); // Borda

// Desenha a mensagem
draw_set_font(fnt_jogo); // Crie uma fonte para o texto (Botão direito em Fonts -> Create Font)
draw_text_ext(x_pos, y_pos, texto_aviso, 30, largura_quadro - 40); // 20px de espaçamento, -40 para margem

// Desenha o botão 'X'
draw_set_color(c_red);
draw_circle(x_botao_fechar, y_botao_fechar, 15, false); // Círculo do X
draw_set_color(c_white);
draw_text(x_botao_fechar, y_botao_fechar, "X"); // O texto 'X'

draw_set_halign(fa_left); // Volta ao padrão
draw_set_valign(fa_top);   // Volta ao padrão