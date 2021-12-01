function validateFormRegisterPlace() {

	if (document.querySelector("#namePlace").value == "" ||
		document.querySelector("#namePlace").value.length < 3) {

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
	if (document.querySelector("#cepPlace").value == "" ||
		document.querySelector("#cepPlace").value.length < 8 ) {
		document.querySelector("#errorCepPlace").style.display = "block";
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

	if (document.querySelector("#descriptionPlace").value == "" ||
		document.querySelector("#descriptionPlace").value.length > 50) {
		document.querySelector("#errorDescriptionPlace").style.display = "block"
	} else {
		document.querySelector("#errorDescriptionPlace").style.display = "none"
	}

}

function validateFormRegisterPartner() {
	if (document.querySelector("#partnerName").value == "" ||
		document.querySelector("#partnerName").value.length < 3) {

		document.querySelector('#errorPartnerName').style.display = 'block';
	} else {
		document.querySelector('#errorPartnerName').style.display = 'none';
	}

	if (document.querySelector("#districtPartner").value == "") {

		document.querySelector("#errorDistrictPartner").style.display = "block"
	}
	else {
		document.querySelector("#errorDistrictPartner").style.display = "none"
	}

	if (document.querySelector("#roadPartner").value == "") {

		document.querySelector("#errorPartnerRoad").style.display = "block"
	} else {
		document.querySelector("#errorPartnerRoad").style.display = "none"
	}

	if (document.querySelector("#numberPartner").value == "") {

		document.querySelector("#errorNumberPartner").style.display = "block"

	} else {
		document.querySelector("#errorNumberPartner").style.display = "none"
	}

	if (document.querySelector("#cepPartner").value == "" ||
		document.querySelector("#cepPartner").value.length < 8 ) {
		document.querySelector("#errorPartner").style.display = "block";
	} else {
		document.querySelector("#errorCepPartner").style.display = "none"
	}

	if (document.querySelector("#complementPartner").value == "") {
		document.querySelector("#errorComplementPartner").style.display = "block"
	} else {
		document.querySelector("#errorComplementPartner").style.display = "none"
	}

	if (document.querySelector("#cityPartner").value == "") {

		document.querySelector("#errorCityPartner").style.display = "block"
	} else {
		document.querySelector("#errorCityPartner").style.display = "none"
	}

	if (document.querySelector("#statePartner").value == "") {
		document.querySelector("#errorStatePartner").style.display = "block"
	} else {
		document.querySelector("#errorStatePartner").style.display = "none"
	}
	if (document.querySelector('#categoryPartner').value == "") {
		document.querySelector("#errorCategoryPartner").style.display = "block"
		
	} else {
		document.querySelector("#errorCategoryPartner").style.display = "none"
	}
	if (document.querySelector("#phoneNumber").value == "") {

		document.querySelector("#errorPhoneNumber").style.display = "block"

	} else {
		document.querySelector("#errorPhoneNumber").style.display = "none"
	}
}

function validateLogin() {
	let database = {
		nome: ['Kyu', 'Ana', 'Edu'],
		senha: 'KyuHayato'
	}
	for (let i = 0; i < database.nome.length - 1; i++) {
		if (document.querySelector('#nameLogin').value != database.nome[i]) {
			document.querySelector("#errorNameLogin").style.display = "block"
		} else {
			document.querySelector("#errorNameLogin").style.display = "none"
		}
	}

	if (document.querySelector('#Password').value != database.senha) {
		document.querySelector("#errorPassword").style.display = "block"
	} else {
		document.querySelector("#errorPassword").style.display = "none"
	}
}
function validateFormRegisterContact() {
	if (document.querySelector("#nameContact").value == "" ||
		document.querySelector("#nameContact").value.length < 3) {

		document.querySelector('#errorNameContact').style.display = 'block';
	} else {
		document.querySelector('#errorNameContact').style.display = 'none';
	}

	if (document.querySelector("#phoneContact").value == "" ||
		document.querySelector("#phoneContact").value.length > 11 ||
		document.querySelector("#phoneContact").value.length < 11 ||
		typeof (document.querySelector("#phoneContact").value) != Number) {

		document.querySelector("#errorPhoneContact").style.display = "block"

	} else {
		document.querySelector("#errorPhoneContact").style.display = "none"
	}

	if (document.querySelector('#subjectContact').selectedIndex == 0) {
		document.querySelector("#errorSubjectContact").style.display = "block"
	} else {
		document.querySelector("#errorSubjectContact").style.display = "none"
	}

	if (document.querySelector("#emailContact").value == "") {

		document.querySelector("#errorEmailContact").style.display = "block"
	}
	else {
		document.querySelector("#errorEmailContact").style.display = "none"
	}

	if (document.querySelector("#messageContact").value == "" ||
		document.querySelector("#messageContact").value.length < 50) {
		document.querySelector("#errorMessageContact").style.display = "block"
	} else {
		document.querySelector("#errorMessageContact").style.display = "none"
	}
	console.log(document.querySelector('#subjectContact').selectedIndex)
}
// function validateNamePartner(namePartner) {

//     if (namePartner.value == "" || namePartner.value == null || namePartner.value.length < 3) {
//         document.querySelector('#errorNamePartner').style.display = 'block';
//         namePartner.focus();
//     } else {
//         document.querySelector('#errorNamePartner').style.display = 'none';
//     }
// }
// function validadeDistrictPartner(districtPartner) {

//     if (districtPartner.value == "" || districtPartner.value == null || districtPartner.value.length < 5) {
//         document.querySelector('#errorDistrictPartner').style.display = 'block';
//         districtPartner.focus();
//     } else {
//         document.querySelector('#errorDistrictPartner').style.display = 'none';
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
// 