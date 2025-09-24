// --- Configurações Iniciais ---
draw_set_halign(fa_center);
draw_set_valign(fa_middle);

// --- Desenha o Fundo do Aviso ---
var _x1 = x_pos - largura_quadro / 2;
var _y1 = y_pos - altura_quadro / 2;
var _x2 = x_pos + largura_quadro / 2;
var _y2 = y_pos + altura_quadro / 2;

// Fundo do quadro (com transparência para um visual mais bonito)
draw_set_color(c_black);
draw_set_alpha(0.7);
draw_rectangle(_x1, _y1, _x2, _y2, false);
draw_set_alpha(1); // Restaura a opacidade

// Borda elegante
draw_set_color(c_white);
draw_rectangle(_x1, _y1, _x2, _y2, true);

// --- Desenha a Mensagem ---
draw_set_font(fnt_jogo); // Use uma fonte maior e mais estilizada, se disponível
draw_set_color(c_lime); // Cor vibrante para o título/texto principal
draw_text_ext(x_pos, y_pos, texto_aviso, 30, largura_quadro - 40);




// --- Restaura as Configurações Padrão ---
draw_set_halign(fa_left);
draw_set_valign(fa_top);