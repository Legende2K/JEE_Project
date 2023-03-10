<%@ page pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8" />
<title>Test</title>
</head>
<body>
    <c:out value="${ nom }" />
    <c:out value="${ prenom }" />
    <c:out value="${ genre }" />
    <c:out value="${ previousSite }" />
    <c:out value="${ previousFormation }" />
    <form method="post" action="bonjour">
        <p>
            <label for="nom">Nom : </label>
            <input type="text" name="nom" id="nom" />
        </p>
        <p>
            <label for="prenom">Prénom : </label>
            <input type="text" name="prenom" id="prenom" />
        </p>
        
        <p>
            <label for="genre">Genre : </label>
            <input type="text" name="genre" id="genre" />
        </p>
        
        <p>
        	<label for="previousSite">Site précédent : </label>
        	<input type="text" name="previousSite" id="previousSite" />
        </p>
        
        <p>
            <label for="previousFormation">Formation précédente : </label>
            <input type="text" name="previousFormation" id="previousFormation" />
        </p>
        
        <input type="submit" />
    </form>
    
    <c:if test="${ !empty fichier }"><p><c:out value="Le fichier ${ fichier } a été uploadé !" /></p></c:if>
    <form method="post" action="bonjour" enctype="multipart/form-data">
        <p>
            <label for="fichier">Fichier à envoyer : </label>
            <input type="file" name="fichier" id="fichier" />
        </p>
        
        <input type="submit" />
    </form>
    
</body>
</html>