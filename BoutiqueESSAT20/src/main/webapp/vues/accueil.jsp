<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Boutique</title>
<c:set var="cxt" value="${pageContext.request.contextPath }" />
<c:set var="rs" value="resources" />

<link href="${cxt}/${rs}/files/bootstrap/css/bootstrap.min.css"
	rel="stylesheet">
</head>
<body>

	<nav class="navbar navbar-default navbar-fixed-top">
		<div class="container">
			<div class="navbar-header">
				<a class="navbar-brand" href="#">E-Boutique ESSAT</a>
			</div>
			<div id="navbar" class="collapse navbar-collapse">
				<ul class="nav navbar-nav">
					<li class="active"><a href="">Home</a></li>
					<li><a href='#'>Promotions</a></li>
					<li><a href='#'>Ventes Flash</a></li>
				</ul>
				<ul class="nav navbar-nav navbar-right">
					<li><a href="${cxt}/monpanier"> panier
        <span class="badge">${fn:length(sessionScope.panier)}</span>
         </a></li>

					<li><a href="#" class="dropdown-toggle" data-toggle="dropdown">
							${sessionScope.user.prenom } ${sessionScope.user.nom }  <span class="caret"></span>
					</a>

						<ul class="dropdown-menu">
							<li><a href="#">Mes Commandes</a></li>
							<li><a href="#">Déconnexion</a></li>
						</ul></li>

				</ul>
			</div>
		</div>
	</nav>


	<div class="container">

		<div class="row" style="margin-top: 80px;">

			<div class="col-md-3">
				<div class="list-group">
					<a href="#" class="list-group-item active"> Tous les Produits </a>
					<c:forEach items="${cats}" var="c">
						<a href="${cxt}/categorie/${c.id}" class="list-group-item">${c.description}</a>
					</c:forEach>

				</div>
			</div>

			<div class="col-md-9">
				<c:forEach items="${prods}" var="p">
					<div class="col-md-4">
						<div class="thumbnail">
							<img src="${cxt}/${rs}/files/images/${p.id}.jpg">
							<div class="caption">
								<h3>${p.description}</h3>
								<p>
												<button class="btn btn-primary">${p.prix }DT</button>
												<a href="${cxt}/addpanier/${p.id}"
													class="btn btn-danger pull-right">addPanier</a>

											</p>
							</div>
						</div>
					</div>
				</c:forEach>
			</div>

		</div>

	</div>


</body>
</html>