
function validateNamePlace() {

    if (namePlace.value == "" || namePlace.value == null || namePlace.value.length < 3) {
        document.querySelector('#errorNamePlace').style.display = 'block';
        namePlace.focus();
        return false;
    } else {
        document.querySelector('#errorNamePlace').style.display = 'none';
        return true;
    }
}
// function validarLogin() {
//     let divCampo1 = document.querySelector("[data-mensagem-erro]")
//     let divCampo2 = document.querySelector("[data-mensagem-erro-senha]")
//     let inputCpfCns = document.querySelector("[data-input-cpf-cns-login]")
//     let inputSenha = document.querySelector("[data-input-password-login]")
//     let mensagemErro = `<span class="text-danger h6 mb-4">Login ou senha inváli'da</span>`
//     let mensagemErro2 = `<span class="text-danger h6">Login ou senha inválida</span>`

//     if (inputCpfCns.value == "" && inputCpfCns.value != "12345") {
//         divCampo1.innerHTML = mensagemErro
//     } else {
//         return alert("logando")
//     }
//     if (inputSenha.value == "" && inputSenha.value != "123") {
//         divCampo2.innerHTML = mensagemErro2
//     } else {
//         return alert("logando")
//     }
// }
// function validarEsqueciSenha() {
//     let mensagemInsira = ` <Span class="text-danger h6" id="cpf-invalido">Insira um CPF valido</Span>`
//     let mensagemInvalido = `<Span class="text-danger h6">CPF Invalido ou inexistente</Span>`
//     if (document.querySelector("#botao-cpf-esqueci").value == "") {
//         document.querySelector("#mensagemInvalida").innerHTML = mensagemInsira
//         return false
//     }
//     else if (document.querySelector("#botao-cpf-esqueci").value != "12345678") {
//         document.querySelector("#mensagemInvalida").innerHTML = mensagemInvalido
//         return false
//     }

//     return alert("email enviado")
// }

function validateFormRegister() {

    if (document.querySelector("#namePlace").value == "") {
        document.querySelector('#errorNamePlace').style.display = 'block';
    } else {
        document.querySelector('#errorNamePlace').style.display = 'none';
    }

    if (document.querySelector("#districtPlace").value == "") {
        document.querySelector("#errorDistrictPlace").style.display = "block"
    }
    else {
        document.querySelector("#errorDistrictPlace").style.display = "none"
    }

    if (document.querySelector("#placeRoad").value == "") {
        document.querySelector("#errorPlaceRoad").style.display = "block"
    } else {
        document.querySelector("#errorPlaceRoad").style.display = "none"
    }

    if (document.querySelector("#numberPlace").value == "") {
        document.querySelector("#errorNumberPlace").style.display = "block"

    } else {
        document.querySelector("#errorNumberPlace").style.display = "none"
    }

    if (document.querySelector("#cepPlace").value == "") {
        document.querySelector("#errorCepPlace").style.display = "block"
    } else {
        document.querySelector("#errorCepPlace").style.display = "none"
    }

    if (document.querySelector("#complementPlace").value == "") {
        document.querySelector("#errorComplementPlace").style.display = "block"
    } else {
        document.querySelector("#errorComplementPlace").style.display = "none"
    }

    if (document.querySelector("#cityPlace").value == "") {
        document.querySelector("#errorCityPlace").style.display = "block"
    } else {
        document.querySelector("#errorCityPlace").style.display = "none"
    }

    if (document.querySelector("#statePlace").value == "") {
        document.querySelector("#errorStatePlace").style.display = "block"
    } else {
        document.querySelector("#errorStatePlace").style.display = "none"
    }

    if (document.querySelector("#descriptionPlace").value == "") {
        document.querySelector("#errorDescriptionPlace").style.display = "block"
    } else {
        document.querySelector("#errorDescriptionPlace").style.display = "none"
    }

}

// function validaCPF(cpf) {
//     exp = /\d{3}\.\d{3}\.\d{3}\-\d{2}/
//     if (cpf.value == "") {
//         document.querySelector("#mensagemErro-cpf").style.display = "block"
//         cpf.focus()

//     } else {
//         document.querySelector("#mensagemErro-cpf").style.display = "none"
//     }
//     if (!exp.test(cpf.value) && cpf.value != "") {
//         document.querySelector("#mensagemErro-cpf-Nvalido").style.display = "block"
//         cpf.focus()
//     } else {
//         document.querySelector("#mensagemErro-cpf-Nvalido").style.display = "none"
//     }
//     if (cpf.value != '123.456.789-12') {
//         document.querySelector("#mensagemErro-cpf-Nvalido").style.display = "block"
//         cpf.focus()
//     } else {
//         document.querySelector("#mensagemErro-cpf-Nvalido").style.display = "none"
//     }
// }

// function ValidaTelefone(tel) {
//     exp = /\(\d{2}\)\ \d{1}\ \d{4}\-\d{4}/
//     if (tel.value == "") {
//         document.querySelector("#mensagemErro-telefone").style.display = "block"
//     } else {
//         document.querySelector("#mensagemErro-telefone").style.display = "none"
//     }
//     if (!exp.test(tel.value)) {
//         document.querySelector("#mensagemErro-telefone-incompleto").style.display = "block"
//         tel.focus();
//     } else {
//         document.querySelector("#mensagemErro-telefone-incompleto").style.display = "none"
//     }
// }
// //corrigir bug!
// function validaDataNasc() {
//     exp = /\d{2}\/\d{2}\/\d{4}/
//     let data = document.querySelector("#data-Nasc").value
//     data = data.replace(/\//g, "-")
//     let data_array = data.split("-")

//     if (document.querySelector("#data-Nasc").value == "") {
//         document.querySelector("#mensagemErro-dataNasc").style.display = "block"
//         document.querySelector("#data-Nasc").focus()
//     } else {
//         document.querySelector("#mensagemErro-dataNasc").style.display = "none"
//     }
//     let hoje = new Date();

//     let validaIdade = hoje.getFullYear() - data_array[2]

//     if (validaIdade <= 0 || validaIdade > 120 || data_array[1] > 12 || data_array[0] > 31) {
//         document.querySelector("#mensagemErro-dataNasc-Ninvalido").style.display = "block"
//         document.querySelector("#data-Nasc").focus()
//     } else {
//         document.querySelector("#mensagemErro-dataNasc-Ninvalido").style.display = "none"
//     }
//     if (!exp.test(document.querySelector("#data-Nasc").value)) {
//         document.querySelector("#mensagemErro-dataNasc-Ninvalido").style.display = "block"
//         document.querySelector("#data-Nasc").focus()
//     } else {
//         document.querySelector("#mensagemErro-dataNasc-Ninvalido").style.display = "none"
//     }
// }
// function ValidaCep(cep) {
//     exp = /\d{5}\-\d{3}/
//     if (cep.value == "") {
//         document.querySelector("#mensagemErro-cep").style.display = "block"
//         cep.focus();
//     } else {
//         document.querySelector("#mensagemErro-cep").style.display = "none"
//     }

//     if (!exp.test(cep.value)) {
//         document.querySelector("#mensagemErro-cep-incInvalido").style.display = "block"
//         cep.focus();
//     } else {
//         document.querySelector("#mensagemErro-cep-incInvalido").style.display = "none"
//     }
// }


// function validaEmail(email) {
//     let exp = /^([0-9a-zA-Z]+[-._+&amp;])*[0-9a-zA-Z]+@([-0-9a-zA-Z]+[.])+[a-zA-Z]{2,6}$/
//     if (email.value == '') {
//         document.querySelector("#mensagemErro-email").style.display = "block"
//         email.focus();
//         return false;
//     } else {
//         document.querySelector("#mensagemErro-email").style.display = "none"
//     }
//     if (!exp.test(email.value)) {
//         document.querySelector("#mensagemErro-email-invalido").style.display = "block"
//         email.focus();
//         return false;
//     } else {
//         document.querySelector("#mensagemErro-email-invalido").style.display = "none"
//     }
// }

// function validaEmailConfirma(email) {
//     let exp = /^([0-9a-zA-Z]+[-._+&amp;])*[0-9a-zA-Z]+@([-0-9a-zA-Z]+[.])+[a-zA-Z]{2,6}$/
//     if (email.value == '') {
//         document.querySelector("#mensagemErro-conf-branco").style.display = "block"
//         email.focus();
//         return false;
//     } else {
//         document.querySelector("#mensagemErro-conf-branco").style.display = "none"
//     }
//     if (!exp.test(email.value)) {

//         document.querySelector("#mensagemErro-email-invalido-conf").style.display = "block"
//         email.focus();
//         return false;
//     } else {
//         document.querySelector("#mensagemErro-email-invalido-conf").style.display = "none"
//     }
//     if (email.value != document.querySelector("#email").value) {
//         document.querySelector("#mensagemErro-conf-Nigual-conf").style.display = "block"
//         email.focus();
//     } else {
//         document.querySelector("#mensagemErro-conf-Nigual-conf").style.display = "none"

//     }
// }
// function validacaoCartaoSUS(sus) {

//     exp = /\d{3}\ \d{4}\ \d{4}\ \d{4}/
//     if (sus.value == "") {
//         document.querySelector("#mensagemErro-CNS-branco").style.display = "block"
//         sus.focus()
//     } else {
//         document.querySelector("#mensagemErro-CNS-branco").style.display = "none"
//     }
//     if (!exp.test(sus.value)) {
//         document.querySelector("#mensagemErro-CNS-Nvalido").style.display = "block"
//         sus.focus()
//     } else {
//         document.querySelector("#mensagemErro-CNS-Nvalido").style.display = "none"
//     }
// }

// function validaNum(num) {
//     if (num.value == "") {
//         document.querySelector("#mensagemErro-numero").style.display = "block"
//         num.focus()
//     } else {
//         document.querySelector("#mensagemErro-numero").style.display = "none"
//     }
//     if (num.value == 0) {
//         document.querySelector("#mensagemErro-numero-zero").style.display = "block"
//         num.focus()
//     } else {
//         document.querySelector("#mensagemErro-numero-zero").style.display = "none"
//     }
// }
// function validaCor(cor) {
//     if (cor.value == "") {
//         document.querySelector("#mensagemErro-raca").style.display = "block"
//         cor.focus()
//     } else {
//         document.querySelector("#mensagemErro-raca").style.display = "none"
//     }
// }
// function validaRua(rua) {
//     if (rua.value == "") {
//         document.querySelector("#mensagemErro-rua").style.display = "block"
//         rua.focus()
//     } else {
//         document.querySelector("#mensagemErro-rua").style.display = "none"
//     }
// }
// function validaBairro(bairro) {
//     if (bairro.value == "") {
//         document.querySelector("#mensagemErro-bairro").style.display = "block"
//         bairro.focus()
//     } else {
//         document.querySelector("#mensagemErro-bairro").style.display = "none"

//     }
// }
// function validaCidade(cidade) {
//     if (cidade.value == "") {
//         document.querySelector("#mensagemErro-cidade").style.display = "block"
//         cidade.focus()
//     } else {
//         document.querySelector("#mensagemErro-cidade").style.display = "none"
//     }
// }

// // Falta correção de bugs
// function validaSenha(senha) {
//     if (senha.value == "") {
//         document.querySelector("#mensagemErro-senha-branco").style.display = "block"
//         senha.focus();
//     } else {
//         document.querySelector("#mensagemErro-senha-branco").style.display = "none"
//     }
//     if (senha.value != "teste") {
//         document.querySelector("#mensagemErro-senha-incorreta").style.display = "block"
//         senha.focus();
//     } else {
//         document.querySelector("#mensagemErro-senha-incorreta").style.display = "none"
//     }
// }
// function validaSenhaConf(senha) {
//     if (senha.value == "") {
//         document.querySelector("#mensagemErro-conf-branco-senha").style.display = "block"
//         senha.focus();
//     } else {
//         document.querySelector("#mensagemErro-conf-branco-senha").style.display = "none"
//     }
//     if (senha.value != document.querySelector("#senha").value) {
//         document.querySelector("#mensagemErro-conf-senha").style.display = "block"
//         senha.focus();
//     } else {
//         document.querySelector("#mensagemErro-conf-senha").style.display = "none"
//     }
// }
// function validaNome(nome) {
//     if (nome.value == "") {
//         document.querySelector("#mensagemErro-nome").style.display = "block"
//         nome.focus()
//     } else {
//         document.querySelector("#mensagemErro-nome").style.display = "none"
//     }
// }
// function validaNomeMae(nomeMae) {
//     if (nomeMae.value == "") {
//         document.querySelector("#mensagemErro-nome-mae").style.display = "block"
//         nomeMae.focus()
//     } else {
//         document.querySelector("#mensagemErro-nome-mae").style.display = "none"
//     }
// }
// function validaSexo(sexo) {
//     if (sexo.value == "") {
//         document.querySelector("#mensagemErro-sexo").style.display = "block"
//         sexo.focus()
//     } else {
//         document.querySelector("#mensagemErro-sexo").style.display = "none"
//     }
// }

