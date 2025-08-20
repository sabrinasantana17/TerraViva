// No obj_botao: Evento Collision com obj_player_f2

// Primeiro, verifica se a variável chamine_alvo existe nesta instância do botão.
// Isso impede o erro de "not set before reading".
if (variable_instance_exists(id, "chamine_alvo"))
{
    // Agora que sabemos que a variável existe, podemos verificar se a instância alvo existe.
    if (instance_exists(chamine_alvo)) // Não precisa de "self." aqui, já estamos no escopo do botão
    {
        // Sua lógica atual para desativar a chaminé
        // (Ex: Se a chaminé estiver ativa, desative-a)
        if (chamine_alvo.ativada == true) // Assumindo que a chaminé tem uma variável 'ativada'
        {
            chamine_alvo.ativada = false;
            chamine_alvo.sprite_index = spr_chamine_desativada; // Mudar o sprite da chaminé
            global.chamines_desativadas_total += 1; // Incrementa o contador global de chaminés

            show_debug_message("Chaminé " + string(chamine_alvo.id) + " desativada! Total: " + string(global.chamines_desativadas_total));

            // Mudar o sprite do próprio botão para "off", se você tiver um spr_botao_off
            sprite_index = spr_botao_off; // Assumindo que você tem este sprite
        }
    }
    else
    {
        show_debug_message("ATENÇÃO: Chaminé alvo para este botão (ID: " + string(id) + ") não encontrada ou já foi destruída.");
        // Opcional: Destruir o botão se sua chaminé alvo não existe mais
        // instance_destroy();
    }
}
else
{
    show_debug_message("ERRO DE CONFIGURAÇÃO: Variável 'chamine_alvo' não definida para o botão (ID: " + string(id) + ").");
}