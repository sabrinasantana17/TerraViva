// Verifica se o botão 'X' foi clicado
if (mouse_check_button_pressed(mb_left)) // Se o botão esquerdo do mouse foi pressionado
{
    // Verifica se o clique foi dentro da área do botão 'X'
    if (point_in_circle(mouse_x, mouse_y, x_botao_fechar, y_botao_fechar, 15)) // 15 é o raio do círculo
    {
        obj_lina.pode_mover = true; // Permite que Lina se mova novamente
        if (instance_exists(obj_bau_mudas))
        {
            obj_bau_mudas.mensagem_exibida = true; // Marca que a mensagem já foi mostrada
        }
        instance_destroy(); // Destrói o objeto de aviso
    }
}