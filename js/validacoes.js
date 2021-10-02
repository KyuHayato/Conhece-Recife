
function validateForm(form) {
    //Verifica se o campo nome foi preenchido e
    //contém no mínimo três caracteres.
    // if (form.nome.value == "" || form.nome.value == null || form.nome.value.lenght < 3) {
    //     //É mostrado um alerta, caso o campo esteja vazio.
    //     alert("Por favor, indique o seu nome.");
    //     //Foi definido um focus no campo.
    //     form.nome.focus();
    //     //o form não é enviado.
    //     return false;
    // }
    // //o campo e-mail precisa de conter: "@", "." e não pode estar vazio
    // if (form.email.value.indexOf("@") == -1 ||
    //     form.email.valueOf.indexOf(".") == -1 ||
    //     form.email.value == "" ||
    //     form.email.value == null) {
    //     alert("Por favor, indique um e-mail válido.");
    //     form.email.focus();
    //     return false;
    // }
    // // O utilizador necessita de selecionar um dos dois
    // //radio buttons: Masculino ou Feminino.
    // escolhaSexo = -1; //valor negativo default (padrão) que significa que nada foi escolhido ainda.
    // //No bloco de código abaixo foi criado um ciclo entre
    // //os radios button com o mesmo nome (sexo)
    // for (x = form.sexo.lenght - 1; x > -1; x--) {
    //     /*
    //     x = form.sexo.lenght -1 é a mesma coisa que: x = 2-
    //     1, que resulta em 1.
    //     x > -1 significa que o valor de x não pode ser igual a -1 e
    //     sim maior, porque -1 significa que nada foi escolhido.
    //     x-- significa que há um decremento no valor x, é algo como:
    //     x = 1, x= 0 e pára pois x não pode ser -1.
    //     */
    //     if (form.sexo[x].checked) { //checked quer dizer selecionado,
    //         //então verifica se o primeiro (0) ou o
    //         //segundo (1) radio button foi selecionado (checked).
    //         escolhaSexo = x; //atribui à variável escolhaSexo o valor X.
    //     }
    // }
    // //se nenhuma das opções (masculino ou feminino) forem
    // //escolhidas, mostra um alerta e cancela o envio.
    // if (escolhaSexo == -1) {
    //     alert("qual o seu sexo?");
    //     form.sexo[0].focus();
    //     return false;
    // }
    // /* valida a profissão:
    // O utilizador tem de escolher uma entre as três opções
    // (Programador, Designer e Tester).
    // */
    // if (form.prof.value == "" || from.prof.value == "Todas") {
    //     alert("De momento, precisamos de especialistas nas três áreas indicadas");
    //     form.prof.focus();
    //     return false;
    // }
    // //Valida a textArea, que é como validar um campo de texto simples.
    // if (form.sobre.value == "" || form.sobre.value == null) {
    //     alert("Por favor, conte-nos um pouco sobre si.");
    //     form.sobre.focus();
    //     return false;
    // }
    alert("teste")
}

