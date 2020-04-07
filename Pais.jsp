<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="model.Pais" %>
<!DOCTYPE html>
<html lang="pt-br">
	<head>
		<meta charset="UTF-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		
		<title>Pais Cadastrado</title>
		
		<link href="css/bootstrap.min.css" rel="stylesheet">
		<link href="css/style.css" rel="stylesheet">
	</head>
	<body>
		<% Pais pais = (Pais) request.getAttribute("pais"); %>
		
		<nav class="navbar navbar-inverse navbar-fixed-top">
			<div class="container-fluid">
				<div class="navbar-header">
					<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
						<span class="sr-only">Menu de navegação superior</span>
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>	
					</button>
					<a class="navbar-brand" href="index.html">Cadastro</a>
				</div>
				<div id="navbar" class="navbar-collapse collapse">
					<ul class="nav navbar-nav navbar-right">
						<li class="nav-item"><a href="index.html">Paises</a></li>
					</ul>
				</div>
			</div>
		</nav>
		
		<div id="main" class="container">
			<h3 class="page-header">Visualizar País # <%= pais.getId() %></h3>
			<div class="row">
				<div class="col-md-12">
					<p><strong>Nome</strong></p>
					<p><%= pais.getNome() %></p>
				</div>
			</div>
			<div class="row">
				<div class="col-md-6">
					<p><strong>População</strong></p>
					<p><%= pais.getPopulacao() %></p>
				</div>
				<div class="col-md-6">
					<p><strong>Área</strong></p>
					<p><%= pais.getArea() %></p>
				</div>
			</div>
			<div id="actions" class="row">
				<div class="col-md-12">
					<a href="index.html" class="btn btn-default">Voltar</a>
				</div>
			</div>
		</div>
		
		<script src="js/jquery.min.js"></script>
		<script src="js/bootstrap.min.js"></script>
	</body>	
</html>
