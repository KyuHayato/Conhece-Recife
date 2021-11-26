<html>
<head>
<style>
.spinner {
  width: 100px;
  height: 100px;
  background-color: #42a5f5;
  margin: 100px auto;
  -webkit-animation: rotate-div 1.2s infinite ease-in-out;
  animation: rotate-div 1.2s infinite ease-in-out;
}
@keyframes rotate-div {
  0% { 
    transform: perspective(120px) rotateX(0deg) rotateY(0deg);
    -webkit-transform: perspective(120px) rotateX(0deg) rotateY(0deg); 
  } 50% { 
    transform: perspective(120px) rotateX(-180.1deg) rotateY(0deg);
    -webkit-transform: perspective(120px) rotateX(-180.1deg) rotateY(0deg); 
  } 100% { 
    transform: perspective(120px) rotateX(-180deg) rotateY(-179.9deg);
    -webkit-transform: perspective(120px) rotateX(-180deg) rotateY(-179.9deg); 
  background-color: #f0f007;
  }
}


.spinner2{
	
	height:36px;
	width:36px;
	background-color: #000000;
	animation:flip 1s linear infinite;	
}

@keyframes flip{
	50%{
		transform:rotatex(180deg);
		
	}
	100%{
		transform:rotatex(180deg) rotatey(180deg);
	}
}
</style>
</head>
<body>
<div class="spinner"></div>
<div class="spinner2"></div>
</body>
</html>

