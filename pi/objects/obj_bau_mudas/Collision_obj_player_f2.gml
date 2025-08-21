// Se a mensagem ainda não foi exibida, exibe a mensagem
if (!mensagem_exibida)
{
    instance_create_layer(0, 0, "UI", obj_aviso_tela); // Cria o aviso (na camada UI se tiver uma, ou "Instances")
    show_debug_message("Mensagem do baú exibida.");
}
// Se a mensagem já foi exibida E as mudas ainda não foram liberadas
else if (mensagem_exibida && !mudas_liberadas)
{
    // ***** LIBERAÇÃO AUTOMÁTICA DAS MUDAS NOS PONTOS DE PLANTIO *****
    with (spr_ponto_plantio)
    {
        sprite_index = spr_muda_plantada;
        show_debug_message("Muda apareceu no ponto de plantio em X:" + string(x) + ", Y:" + string(y));
    }

    mudas_liberadas = true; // Marca que as mudas foram liberadas por este baú

    // --- MUDANÇA AQUI ---
    // Opção 1: Destruir o baú
    instance_destroy(); // O baú desaparece depois de cumprir seu trabalho.
    show_debug_message("Mudas liberadas nos pontos de plantio! Baú destruído.");
    // --- FIM DA MUDANÇA ---
	
}