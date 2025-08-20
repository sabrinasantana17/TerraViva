// Primeiro, aumenta o contador global de filtros coletados
global.filtros_coletados += 1;
show_debug_message("Filtro de ar coletado! Total: " + string(global.filtros_coletados));

// Destroi o filtro de ar com o qual Lina colidiu
instance_destroy(other);

// Verifica se é hora de criar um purificador
// A cada 5 filtros (global.filtros_coletados), um purificador aparece.
if (global.filtros_coletados > 0 && global.filtros_coletados % 5 == 0)
{
    // A divisão global.filtros_coletados / 5 nos dá o número esperado de purificadores.
    var num_purificadores_esperados = global.filtros_coletados / 5;

    // Se o número de purificadores que deveriam existir é maior do que os que já existem
    if (num_purificadores_esperados > global.purificadores_criados)
    {
        var _x_purificador;
        var _y_purificador;

        // Suas coordenadas fornecidas:
        switch (global.purificadores_criados)
        {
            case 0: // Primeiro purificador (após 5 filtros coletados)
                _x_purificador = 144;
                _y_purificador = 816;
                break;
            case 1: // Segundo purificador (após 10 filtros coletados)
                _x_purificador = 832;
                _y_purificador = 832;
                break;
            case 2: // Terceiro purificador (após 15 filtros coletados)
                _x_purificador = 1040;
                _y_purificador = 368;
                break;
            case 3: // Quarto purificador (após 20 filtros coletados)
                _x_purificador = 1440;
                _y_purificador = 544;
                break;
            default: // Caso já tenhamos criado todos os purificadores definidos aqui
                _x_purificador = -9999; // Coloca fora da tela para evitar criar em 0,0
                _y_purificador = -9999;
                show_debug_message("AVISO: Tentando criar mais purificadores do que posições definidas!");
                break;
        }

        // Garante que a posição é válida antes de criar
        if (_x_purificador != -9999)
        {
            // Cria o purificador na camada "Instances"
var _novo_purificador = instance_create_layer(_x_purificador, _y_purificador, "Instances", obj_purificador);


// Reduz para metade do tamanho original
_novo_purificador.image_xscale = 0.5; // 0.5 = 50% do tamanho horizontal
_novo_purificador.image_yscale = 0.5; // 0.5 = 50% do tamanho vertical

// Você pode testar outros valores, por exemplo:
// _novo_purificador.image_xscale = 0.75; // 75%
// _novo_purificador.image_yscale = 0.75;

// Se quiser que a origem do sprite (ponto de rotação/escalonamento) também se ajuste ao centro para redimensionamento
// _novo_purificador.image_xorigin = sprite_get_width(obj_purificador.sprite_index) / 2;
// _novo_purificador.image_yorigin = sprite_get_height(obj_purificador.sprite_index) / 2;
// Isso é mais avançado, comece com xscale/yscale primeiro.

global.purificadores_criados += 1; // Incrementa o contador de purificadores criados
show_debug_message("Purificador de ar #" + string(global.purificadores_criados) + " criado em X:" + string(_x_purificador) + ", Y:" + string(_y_purificador) + " e redimensionado.");
        }
    }
}