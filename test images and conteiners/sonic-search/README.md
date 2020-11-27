# Busca Sonic

Documentação sobre implementação de busca dinâmica usando Sonic

***
<br />

## Quickstart

### Localmente:

Instale a imagem do sonic:
``` $ docker pull valeriansaliou/sonic:v1.3.0 ```

Peque o endereço do arquivo:
``` $ pwd ``` 

Altere o caminho e rode o conteiner:
``` $ docker run -p 1491:1491 -v "pwd"/sonic/config.cfg:/etc/sonic.cfg -v "pwd"/sonic/store/:/var/lib/sonic/store/ valeriansaliou/sonic:v1.3.0
 ```
Dentro da raiz do projeto adicione uma paasta chamada sonic e dentro dela crie o arquivo: config.cfg

Obs: O arquivo encontrado no projeto tem uma configuração padrão. Não esquecer de quando rodar em produção alterar a senha padrão.

O vídeo de exemplo é: [Buscando em 1 milhão de dados em 0.8ms com Rust | Code/Drops #66](https://www.youtube.com/watch?v=rNCGwggC1RI&t=8s)

Link do Projeto: [Sonic](https://github.com/valeriansaliou/sonic)

***
