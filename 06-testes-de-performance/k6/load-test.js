import http from 'k6/http';
import { check, sleep } from 'k6';

//configuração do teste
export const options = {
  vus: 5,// quantidade de usuários virtuais
  duration: '15s', // duração total do teste
};

export default function () {
    // endpoint utilizado no teste
  const endpoint = 'https://parabank.parasoft.com/parabank/services/bank/accounts/13344';

  // validação do teste
  const reponse = http.get(endpoint);

  check(response, {
    // verifica se API respondeu com sucesso
    'status deve ser 200': (r) => r.status === 200,
    // verifica tempo de resposta
    'tempo de resposta menor que 1000ms': (r) =>
      r.timings.duration < 1000,
  });
 // simula intervalo entre ações do usuário
  sleep(1);
}