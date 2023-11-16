O nosso objetivo aqui é fazer a instalação do Nginx!

Atenção! 📢
Corrija todos os erros encontrados e realize o deploy do Nginx utilizando o arquivo deployment.yaml.

Tarefas
Utilize o arquivo /root/deployment.yaml para realizar o deploy do nosso Deployment;

Corrija todos os erros;
Configure o limite de utilização de recursos da seguinte maneira:

Requests:
64Mi de Memória;
0.5 de CPU;

Limits
128 Mi de Memória;
0.7 de CPU;

Use a estratégia de atualização do Deployment que atualiza todos os pods de uma vez;
A versão do Nginx deve ser a 1.16.0.
