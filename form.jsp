<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt"  prefix="fmt"%>


<h1 class="h3 mb-2 text-gray-800"><span style="text-transform:uppercase">Enregistrement d'un employe</span></h1>

<div class="card shadow mb-4">
	<div class="card-body">
		<form:form action="${pageContext.request.contextPath}/employe/save" method="post" modelAttribute="employe">
			<form:hidden path="idEmploye"/>
			<input type="hidden" id="listEnfant" name="listEnfant" value="<c:out value="${listeEnfantUtilitaireJson}"/>"/>
			
			<div class="row">
				<div class="col-md-4 col-sm-4 col-xs-12">
					<div class="form-group">
						<form:label path="numeroMatriculeEmploye" class="control-label">N° matricule *</form:label>
						<form:input path="numeroMatriculeEmploye" id="numeroMatriculeEmploye" class="form-control" autocomplete="off"/>
						<form:errors path="numeroMatriculeEmploye" class="text-danger"/>
					</div>
				</div>
				<div class="col-md-4 col-sm-4 col-xs-12">
					<div class="form-group">
						<form:label path="numeroIfuEmploye" class="control-label">N° IFU *</form:label>
						<form:input path="numeroIfuEmploye" id="numeroIfuEmploye" class="form-control" autocomplete="off"/>
						<form:errors path="numeroIfuEmploye" class="text-danger"/>
					</div>
				</div>
				<div class="col-md-4 col-sm-4 col-xs-12">
					<div class="form-group">
						<form:label path="titre.idTitre" class="control-label">Titre</form:label>
						<form:select path="titre.idTitre" id="idTitre" class="form-control">
							<form:options items="${titres}" itemLabel="libelleTitre" itemValue="idTitre"/>
						</form:select>
						<form:errors path="titre.idTitre" class="text-danger"/>
					</div>
				</div>			
			</div>
			
			<div class="row">			
				<div class="col-md-6 col-sm-6 col-xs-12">
					<div class="form-group">
						<form:label path="nomEmploye" class="control-label">Nom</form:label>
						<form:input path="nomEmploye" id="nomEmploye" class="form-control" autocomplete="off"/>
						<form:errors path="nomEmploye" class="text-danger"/>
					</div>
				</div>
				
				<div class="col-md-6 col-sm-6 col-xs-12">
					<div class="form-group">
						<form:label path="prenomEmploye" class="control-label">Prénom</form:label>
						<form:input path="prenomEmploye" id="prenomEmploye" class="form-control" autocomplete="off"/>
						<form:errors path="prenomEmploye" class="text-danger"/>
					</div>
				</div>
			</div>
			
			<div class="row">
				<div class="col-md-4 col-sm-4 col-xs-12">
					<div class="form-group">
						<form:label path="dateNaissanceEmploye" class="control-label">Date de naissance</form:label>
						<form:input path="dateNaissanceEmploye" id="datepicker" class="form-control" autocomplete="off"/>
						<form:errors path="dateNaissanceEmploye" class="text-danger"/>
					</div>
				</div>
				<div class="col-md-4 col-sm-4 col-xs-12">
					<div class="form-group">
						<form:label path="observationDateNaissanceEmploye" class="control-label">Observation sur la date de naissance</form:label>
						<form:select path="observationDateNaissanceEmploye" class="form-control">
							<form:option value="" />
							<form:option value="Inconnue" />
						</form:select>
					</div>
				</div>
				<div class="col-md-4 col-sm-4 col-xs-12">
					<div class="form-group">
						<form:label path="lieuNaissanceEmploye" class="control-label">Lieu de naissance</form:label>
						<form:input path="lieuNaissanceEmploye" id="lieuNaissanceEmploye" class="form-control" autocomplete="off"/>
						<form:errors path="lieuNaissanceEmploye" class="text-danger"/>
					</div>
				</div>
			</div>
			
			<div class="row">
				<div class="col-md-3 col-sm-3 col-xs-12">
					<div class="form-group">
						<form:label path="sexeEmploye.idSexe" class="control-label">Sexe</form:label>
						<form:select path="sexeEmploye.idSexe" id="idSexe" class="form-control">
							<form:options items="${sexes}" itemLabel="libelleSexe" itemValue="idSexe"/>
						</form:select>
						<form:errors path="sexeEmploye.idSexe" class="text-danger"/>
					</div>
				</div>
				<div class="col-md-6 col-sm-6 col-xs-12">
					<div class="form-group">
						<form:label path="situationMatrimonialeEmploye.idSituationMatrimoniale" class="control-label">Situation matrimoniale</form:label>
						<form:select path="situationMatrimonialeEmploye.idSituationMatrimoniale" id="idSituationMatrimoniale" class="form-control">
							<form:options items="${situationmatrimoniales}" itemLabel="libelleSituationMatrimoniale" itemValue="idSituationMatrimoniale"/>
						</form:select>
						<form:errors path="situationMatrimonialeEmploye.idSituationMatrimoniale" class="text-danger"/>
					</div>
				</div>			
				<div class="col-md-3 col-sm-3 col-xs-12">
					<div class="form-group">
						<form:label path="nombreEnfantEmploye" class="control-label">Nombre d'enfants *</form:label>
						<form:input path="nombreEnfantEmploye" class="form-control" autocomplete="off" readonly="true"/>
						<form:errors path="nombreEnfantEmploye" class="text-danger"/>
					</div>
				</div>
			</div>
			
			<div class="row">			
				<div class="col-md-2 col-sm-2 col-xs-12">
					<div class="form-group">
						<a href="#" data-toggle="modal" data-target="#ajouter_enfant" class="btn btn-outline-primary">Ajouter un enfant</a>
						<div class="modal fade" id="ajouter_enfant" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
						    <div class="modal-dialog" role="document">
						      <div class="modal-content">
						        <div class="modal-header">
						          <h5 class="modal-title" id="exampleModalLabel">Ajouter un enfant</h5>
						          <button class="close" type="button" data-dismiss="modal" aria-label="Close">
						            <span aria-hidden="true">×</span>
						          </button>
						        </div>
						        <div class="modal-body">
						        	<div class="row">
										<div class="col-md-6 col-sm-6 col-xs-12">
											<div class="form-group">
												<label class="control-label">Nom</label>
												<input id="nomEnfant" class="form-control" autocomplete="off"/>
											</div>
										</div>
										<div class="col-md-6 col-sm-6 col-xs-12">
											<div class="form-group">
												<label class="control-label">Prénom(s)</label>
												<input id="prenomEnfant" class="form-control" autocomplete="off"/>
											</div>
										</div>
									</div>
						        	<div class="row">
										<div class="col-md-6 col-sm-6 col-xs-12">
											<div class="form-group">
												<label class="control-label">Date de naissance</label>
												<input id="dateNaissanceEnfant" class="form-control" autocomplete="off" placeholder="JJ-MM-AAAA"/>
												<span id="dateNaissanceEnfantErrorMessage" style="color:red; display:none">Veuillez saisir la date de naissance de l'enfant</span>
											</div>
										</div>
										<div class="col-md-6 col-sm-6 col-xs-12">
											<div class="form-group">
												<label class="control-label">Lieu de naissance</label>
												<input id="lieuNaissanceEnfant" class="form-control" autocomplete="off"/>
											</div>
										</div>
									</div>
								</div>
						        <div class="modal-footer">
						          <button class="btn btn-outline-primary" type="button" onclick="ajouterEnfant()">Ajouter</button>			          	
						          <button class="btn btn-outline-secondary" type="button" data-dismiss="modal">Annuler</button>
						        </div>
						      </div>
						    </div>
					    </div>
					</div>
				</div>
				<div class="col-md-10 col-sm-10 col-xs-12">
					<table id="tableEnfant" class="table table-striped">
				        <thead>
							<tr>
								<th>Nom</th>
								<th>Prénom</th>
								<th>Date de naissance</th>
								<th>Lieu de naissance</th>
								<th>Action</th>
							</tr>
						</thead>
						<tbody>
							<c:forEach items="${listenfant}" var="e">
								<tr>
									<td><c:out value="${e.nomEnfant}"/></td>
									<td><c:out value="${e.prenomEnfant}"/></td>
									<td><fmt:formatDate pattern="dd-MM-yyyy" value="${e.dateNaissanceEnfant}" /></td>
									<td><c:out value="${e.lieuNaissanceEnfant}"/></td>
									<td><button type='button' class='btn btn-outline-danger' onclick='retirerEnfantBis(${e.idEnfant})'>Retirer</button></td>
								</tr>
							</c:forEach>
						</tbody>
			      	</table>
				</div>
			</div>
			
			<div class="row">			
				<div class="col-md-3 col-sm-3 col-xs-12">
					<div class="form-group">
						<form:label path="telephoneEmploye" class="control-label">Téléphone</form:label>
						<form:input path="telephoneEmploye" id="telephoneEmploye" class="form-control" autocomplete="off"/>
						<form:errors path="telephoneEmploye" class="text-danger"/>
					</div>
				</div>
				<div class="col-md-6 col-sm-6 col-xs-12">
					<div class="form-group">
						<form:label path="emailEmploye" class="control-label">Email *</form:label>
						<form:input path="emailEmploye" id="emailEmploye" class="form-control" autocomplete="off" disabled="disabled"/>
						<form:errors path="emailEmploye" class="text-danger"/>
					</div>
				</div>
				<div class="col-md-3 col-sm-3 col-xs-12">
					<div class="form-group">
						<form:label path="boitePostaleEmploye" class="control-label">Boîte postale</form:label>
						<form:input path="boitePostaleEmploye" id="boitePostaleEmploye" class="form-control" autocomplete="off"/>
						<form:errors path="boitePostaleEmploye" class="text-danger"/>
					</div>
				</div>
			</div>
			
			<div class="row">
				<div class="col-md-6 col-sm-6 col-xs-12">
					<div class="form-group">
						<form:label path="nomMere" class="control-label">Nom de la mère</form:label>
						<form:input path="nomMere" class="form-control" autocomplete="off" disabled="disabled"/>
						<form:errors path="nomMere" class="text-danger"/>
					</div>
				</div>
				<div class="col-md-6 col-sm-6 col-xs-12">
					<div class="form-group">
						<form:label path="nomPere" class="control-label">Nom du père</form:label>
						<form:input path="nomPere" class="form-control" autocomplete="off"/>
						<form:errors path="nomPere" class="text-danger"/>
					</div>
				</div>
			</div>
			
			<div class="row">
				<div class="col-md-6 col-sm-6 col-xs-12">
					<div class="form-group">
						<form:label path="domiciliationBancaireEmploye.idBanque" class="control-label">Domiciliation bancaire</form:label>
						<form:select path="domiciliationBancaireEmploye.idBanque" id="idBanque" class="form-control">
							<form:options items="${banques}" itemLabel="libelleBanque" itemValue="idBanque"/>
						</form:select>
						<form:errors path="domiciliationBancaireEmploye.idBanque" class="text-danger"/>
					</div>
				</div>
				<div class="col-md-6 col-sm-6 col-xs-12">
					<div class="form-group">
						<form:label path="numeroCompteEmploye" class="control-label">N° Compte</form:label>
						<form:input path="numeroCompteEmploye" id="numeroCompteEmploye" class="form-control" autocomplete="off"/>
						<form:errors path="numeroCompteEmploye" class="text-danger"/>
					</div>
				</div>
			</div>
			
			<div class="row">
				<div class="col-md-6 col-sm-6 col-xs-12">
					<div class="form-group">
						<form:label path="maisonEmploye" class="control-label">Maison</form:label>
						<form:input path="maisonEmploye" id="maisonEmploye" class="form-control" autocomplete="off" disabled="disabled"/>
						<form:errors path="maisonEmploye" class="text-danger"/>
					</div>
				</div>
				<div class="col-md-6 col-sm-6 col-xs-12">
					<div class="form-group">
						<form:label path="numeroCarreEmploye" class="control-label">N° Carré</form:label>
						<form:input path="numeroCarreEmploye" id="numeroCarreEmploye" class="form-control" autocomplete="off"/>
						<form:errors path="numeroCarreEmploye" class="text-danger"/>
					</div>
				</div>
			</div>
			
			<div class="row">
				<div class="col-md-6 col-sm-6 col-xs-12">
					<div class="form-group">
						<form:label path="quartierEmploye" class="control-label">Quartier</form:label>
						<form:input path="quartierEmploye" id="quartierEmploye" class="form-control" autocomplete="off" disabled="disabled"/>
						<form:errors path="quartierEmploye" class="text-danger"/>
					</div>
				</div>
				<div class="col-md-3 col-sm-3 col-xs-12">
					<div class="form-group">
						<form:label path="nationaliteEmploye" class="control-label">Nationalité</form:label>
						<form:input path="nationaliteEmploye" id="nationaliteEmploye" class="form-control" autocomplete="off" disabled="disabled"/>
						<form:errors path="nationaliteEmploye" class="text-danger"/>
					</div>
				</div>
				<div class="col-md-3 col-sm-3 col-xs-12">
					<div class="form-group">
						<form:label path="numeroCnssEmploye" class="control-label">N° CNSS</form:label>
						<form:input path="numeroCnssEmploye" id="numeroCnssEmploye" class="form-control" autocomplete="off"/>
						<form:errors path="numeroCnssEmploye" class="text-danger"/>
					</div>
				</div>			
			</div>
			
			<div class="row">
				<div class="col-md-3 col-sm-3 col-xs-12">
					<div class="form-group">
						<form:label path="abattementEmploye" class="control-label">Abattement</form:label>
						<form:select path="abattementEmploye" id="abattementEmploye" class="form-control">
							<form:option value="aucun" label=""/>
							<form:option value="Non" label="Non"/>
							<form:option value="Oui" label="Oui"/>
						</form:select>
						<form:errors path="abattementEmploye" class="text-danger"/>
					</div>
				</div>
				<div class="col-md-5 col-sm-5 col-xs-12">
					<div class="form-group">
						<form:label path="professionEmploye" class="control-label">Profession</form:label>
						<form:input path="professionEmploye" id="professionEmploye" class="form-control" autocomplete="off"/>
						<form:errors path="professionEmploye" class="text-danger"/>
					</div>
				</div>
				<div class="col-md-4 col-sm-4 col-xs-12">
					<div class="form-group">
						<label for="categorieEmploye.idCategorieEmploye" class="control-label">Categorie employé</label>
						<form:select path="categorieEmploye.idCategorieEmploye" id="idCategorieEmploye" class="form-control">
							<form:options items="${categoriesemploye}" itemLabel="libelleCategorieEmploye" itemValue="idCategorieEmploye"/>
						</form:select>
					</div>
				</div>
			</div>
			
			<div class="row">
				<div class="col-md-6 col-sm-6 col-xs-12">
					<fieldset>
						<legend>Diplôme</legend>
						<input type="hidden" id="listDiplome" name="listDiplome" value="<c:out value="${listeEmployeDiplomeJson}"/>"/>
						<div class="row">
							<input type="hidden" id="listDiplome" name="listDiplome" value=""/>
							<div class="col-md-5 col-sm-5 col-xs-12">
								<div class="form-group">
									<label for="idDiplome" class="control-label">Libellé diplôme</label>
									<select id="idDiplome" name="idDiplome" class="form-control">
										<c:forEach items="${diplomes}" var="d">
											<option value="${d.idDiplome}">${d.libelleDiplome}</option>
										</c:forEach>
									</select>
								</div>
							</div>
							<div class="col-md-4 col-sm-4 col-xs-12">
								<div class="form-group">
									<label for="anneeObtentionDiplome" class="control-label">Année d'obtention</label>
									<input type="text" id="anneeObtentionDiplome" name="anneeObtentionDiplome" onblur="ajouterDiplome()" class="form-control" autocomplete="off" />
								</div>
							</div>
							<div class="col-md-1 col-sm-1 col-xs-12">
								<div class="form-group">
									<label for="btnAjouter" class="control-label">.</label>
									<button id="btnAjouter" type="button" class="btn btn-outline-primary" onclick="ajouterDiplome()">Ajouter</button>
								</div>
							</div>
						</div>
					
				      	<table id="tableDiplome" class="table table-striped">
					        <thead>
								<tr>
									<th>Libellé diplome</th>
									<th>Année d'obtention</th>
									<th>Action</th>
								</tr>
							</thead>
							<tbody>
								<c:forEach items="${listeDiplomes}" var="d">
									<tr>
										<td>${d.diplome.libelleDiplome}</td>
										<td>${d.anneeObtentionDiplome}</td>
										<td><button type='button' class='btn btn-outline-danger' onclick='retirerDiplome(${d.diplome.idDiplome})'>Retirer</button></td>
									</tr>
								</c:forEach>
							</tbody>
				      	</table>
					</fieldset>
				</div>
				
				<div class="col-md-6 col-sm-6 col-xs-12">
					<fieldset>
						<legend>Personne à prévenir</legend>
						<div class="row">
							<input type="hidden" id="idPersonnePrevenirHidden" name="idPersonnePrevenirHidden" value=""/>
							<input type="hidden" id="listPersonnePrevenir" name="listPersonnePrevenir" value="<c:out value="${listePersonnePrevenirJson}"/>"/>
							<input type="hidden" id="listEmployePersonnePrevenir" name="listEmployePersonnePrevenir" value="<c:out value="${listeEmployePersonnePrevenirJson}"/>"/>
						
							<div class="col-md-4 col-sm-4 col-xs-12">
								<div class="form-group">
									<label for="nomPrenomPersonnePrevenir" class="control-label">Nom et Prénom</label>
									<input type="text" id="nomPrenomPersonnePrevenir" name="nomPrenomPersonnePrevenir" class="form-control" autocomplete="off"/>
								</div>
							</div>
							<div class="col-md-3 col-sm-3 col-xs-12">
								<div class="form-group">
									<label for="idLienParente" class="control-label">Lien parenté</label>
									<select id="idLienParente" name="idLienParente" class="form-control">
										<c:forEach items="${lienparentes}" var="l">						
											<option value="${l.idLienParente}">${l.libelleLienParente}</option>
										</c:forEach>
									</select>
								</div>
							</div>
							<div class="col-md-3 col-sm-3 col-xs-12">
								<div class="form-group">
									<label for="telephonePersonnePrevenir" class="control-label">Téléphone</label>
									<input id="telephonePersonnePrevenir" name="telephonePersonnePrevenir" class="form-control" autocomplete="off" />
								</div>
							</div>
							<div class="col-md-1 col-sm-1 col-xs-12">
								<div class="form-group">
									<label for="btnAjouter" class="control-label">.</label>
									<button id="btnAjouter" type="button" class="btn btn-outline-primary" onclick="ajouterPersonnePrevenir()">Ajouter</button>
								</div>
							</div>
						</div>
					
				      	<table id="tablePersonnePrevenir" class="table table-striped">
					        <thead>
								<tr>
									<th>Nom et Prénom</th>
									<th>Lien de parenté</th>
									<th>Téléphone</th>
									<th>Action</th>
								</tr>
							</thead>
							<tbody>
								<c:forEach items="${listePersonnes}" var="p">
									<tr>
										<td>${p.personnePrevenir.nomPrenomPersonnePrevenir}</td>
										<td>${p.lienParente.libelleLienParente}</td>
										<td>${p.personnePrevenir.telephonePersonnePrevenir}</td>
										<td><button type='button' class='btn btn-outline-danger' onclick='retirerPersonnePrevenir(${p.personnePrevenir.idPersonnePrevenir})'>Retirer</button>
									</tr>
								</c:forEach>
							</tbody>
				      	</table>
			        </fieldset>
				</div>
			</div>
			
			<div style="margin:5px 0 0 0;">
				<input type="submit" value="Enregistrer" class="btn btn-outline-secondary"/> ou <a href="${pageContext.request.contextPath}/employe/liste" class="btn btn-outline-secondary" role="button"> Annuler</a>
			</div>
		</form:form>
	</div>
</div>

<script type="text/javascript">
	$( function() {
		var nomEmploye = new Array(<c:forEach items='${employes}' var='e' varStatus='status'>"${e.nomPrenomEmploye}"<c:if test='${not status.last}'>,</c:if></c:forEach>);
	    $( "#nomEmploye" ).autocomplete({source: nomEmploye});
	    
	    var nationalite = new Array(<c:forEach items='${nationalites}' var='e' varStatus='status'>"${e}"<c:if test='${not status.last}'>,</c:if></c:forEach>);
	    $( "#nationaliteEmploye" ).autocomplete({source: nationalite});
	    
	    var lieuNaissance = new Array(<c:forEach items='${lieuxNaissance}' var='e' varStatus='status'>"${e}"<c:if test='${not status.last}'>,</c:if></c:forEach>);
	    $( "#lieuNaissanceEmploye" ).autocomplete({source: lieuNaissance});
	});
</script>

<script type="text/javascript">
	$( function() {
		var nomPrenomPersonnePrevenir = new Array(<c:forEach items='${personnesprevenir}' var='p' varStatus='status'>"${p.nomPrenomPersonnePrevenir}"<c:if test='${not status.last}'>,</c:if></c:forEach>);
	    $( "#nomPrenomPersonnePrevenir" ).autocomplete({source: nomPrenomPersonnePrevenir});
	});
</script>

<script type="text/javascript">
	$( function() {
		var nomEmploye = new Array(<c:forEach items='${employes}' var='e' varStatus='status'>"${e.nomPrenomEmploye}"<c:if test='${not status.last}'>,</c:if></c:forEach>);
	    $( "#nomEmploye" ).autocomplete({source: nomEmploye});
	    
	    var nationalite = new Array(<c:forEach items='${nationalites}' var='e' varStatus='status'>"${e}"<c:if test='${not status.last}'>,</c:if></c:forEach>);
	    $( "#nationaliteEmploye" ).autocomplete({source: nationalite});
	    
	    var lieuNaissance = new Array(<c:forEach items='${lieuxNaissance}' var='e' varStatus='status'>"${e}"<c:if test='${not status.last}'>,</c:if></c:forEach>);
	    $( "#lieuNaissanceEmploye" ).autocomplete({source: lieuNaissance});
	});
</script>

<script type="text/javascript">
	$( function() {
		var nomPrenomPersonnePrevenir = new Array(<c:forEach items='${personnesprevenir}' var='p' varStatus='status'>"${p.nomPrenomPersonnePrevenir}"<c:if test='${not status.last}'>,</c:if></c:forEach>);
	    $( "#nomPrenomPersonnePrevenir" ).autocomplete({source: nomPrenomPersonnePrevenir});
	});
</script>

<script type="text/javascript">
	var listeDiplome = [];
	
	var listeEmployeDiplome;
	
	if($('#listDiplome').val() != ''){
		listeEmployeDiplome = JSON.parse($('#listDiplome').val());
	}else {
		listeEmployeDiplome = [];
	}			
	
	function ajouterDiplome() {
		var item = {};
		var itemEmployeDiplome = {};
		var employe = {"idEmploye":$("#idEmploye").val(),"numeroMatriculeEmploye":$("#numeroMatriculeEmploye").val(),"numeroIfuEmploye":$("#numeroIfuEmploye").val(),"rccmEmploye":$("#rccmEmploye").val(),"activiteEmploye":$("#activiteEmploye").val(),"nomEmploye":$("#nomEmploye").val(),"prenomEmploye":$("#prenomEmploye").val(),"dateNaissanceEmploye":$("#dateNaissanceEmploye").val(),"lieuNaissanceEmploye":$("#lieuNaissanceEmploye").val(),"situationMatrimonialeEmploye":{"idSituationMatrimoniale":$("#idSituationMatrimoniale").val(),"libelleSituationMatrimoniale":$("#idSituationMatrimoniale option:selected").text()},"sexeEmploye":{"idSexe":$("#idSexe").val(),"libelleSexe":$("#idSexe option:selected").text()},"nombreEnfantEmploye":$("#nombreEnfantEmploye").val(),"telephoneEmploye":$("#telephoneEmploye").val(),"emailEmploye":$("#emailEmploye").val(),"boitePostaleEmploye":$("#boitePostaleEmploye").val(),"domiciliationBancaireEmploye":{"idBanque":$("#idBanque").val(),"libelleBanque":$("#idBanque option:selected").text()},"numeroCompteEmploye":$("#numeroCompteEmploye").val(),"maisonEmploye":$("#maisonEmploye").val(),"numeroCarreEmploye":$("#numeroCarreEmploye").val(),"quartierEmploye":$("#quartierEmploye").val(),"aibEmploye":$("#aibEmploye").val(),"nationaliteEmploye":$("#nationaliteEmploye").val(),"typeEmploye":$("#typeEmploye").val(),"transfertChargeFiscaleEmploye":$("#transfertChargeFiscaleEmploye").val(),"numeroCnssEmploye":$("#numeroCnssEmploye").val(),"abattementEmploye":$("#abattementEmploye").val(),"categorieEmploye":{"idCategorieEmploye":$("#idCategorieEmploye").val(),"libelleCategorieEmploye":$("#idCategorieEmploye option:selected").text()}};
		var booleen = false;
		
		if(listeEmployeDiplome.length > 0){
			for(var i=0; i<listeEmployeDiplome.length; i++){						
				if(listeEmployeDiplome[i].diplome.idDiplome == $('#idDiplome').val()){
					booleen = true;
					break;							
				}
			}
			
			if(booleen == false){
				item['idDiplome'] = $('#idDiplome').val();
				item['libelleDiplome'] = $('#idDiplome :selected').text();
				listeDiplome.push(item);
				
				itemEmployeDiplome['employe'] = employe;
				itemEmployeDiplome['diplome'] = item;
				itemEmployeDiplome['anneeObtentionDiplome'] = $('#anneeObtentionDiplome').val();
				listeEmployeDiplome.push(itemEmployeDiplome);
				
				$('#tableDiplome > tbody').empty();
				$.each(listeEmployeDiplome, function(index, item){
		        	
		        	var markup = 
		        	"<tr>"
						+"<td>"+item.diplome.libelleDiplome+"</td>"
						+"<td>"+item.anneeObtentionDiplome+"</td>"
						+"<td><button type='button' class='btn btn-outline-danger' onclick='retirerDiplome("+item.diplome.idDiplome+")'>Retirer</button></td>"
		        	+"</tr>"
		        	
		        	$('#tableDiplome > tbody').append(markup);
		        	$('#anneeObtentionDiplome').val("");
				});
				$('#listDiplome').val(JSON.stringify(listeEmployeDiplome));
			}
		}else{
			item['idDiplome'] = $('#idDiplome').val();
			item['libelleDiplome'] = $('#idDiplome :selected').text();
			listeDiplome.push(item);
			
			itemEmployeDiplome['employe'] = employe;
			itemEmployeDiplome['diplome'] = item;
			itemEmployeDiplome['anneeObtentionDiplome'] = $('#anneeObtentionDiplome').val();
			listeEmployeDiplome.push(itemEmployeDiplome);
			
			$('#tableDiplome > tbody').empty();
			$.each(listeEmployeDiplome, function(index, item){
	        	
	        	var markup = 
	        	"<tr>"
					+"<td>"+item.diplome.libelleDiplome+"</td>"
					+"<td>"+item.anneeObtentionDiplome+"</td>"
					+"<td><button type='button' class='btn btn-outline-danger' onclick='retirerDiplome("+item.idDiplome+")'>Retirer</button></td>"
	        	+"</tr>"
	        	
	        	$('#tableDiplome > tbody').append(markup);
	        	$('#anneeObtentionDiplome').val("");
			});
			$('#listDiplome').val(JSON.stringify(listeEmployeDiplome));
		}
	}
	
	function retirerDiplome(index) {
		for(var i=0; i<listeEmployeDiplome.length; i++){
			if(listeEmployeDiplome[i].diplome.idDiplome == index){
				listeEmployeDiplome.splice(i,1)
				listeDiplome.splice(i,1)
			}
		}
		
		$('#tableDiplome > tbody').empty();
		$.each(listeEmployeDiplome, function(index, item){
        	
			var markup = 
	        	"<tr>"
					+"<td>"+item.diplome.libelleDiplome+"</td>"
					+"<td>"+item.anneeObtentionDiplome+"</td>"
					+"<td><button type='button' class='btn btn-outline-danger' onclick='retirerDiplome("+item.diplome.idDiplome+")'>Retirer</button></td>"
	        	+"</tr>"
        	
        	$('#tableDiplome > tbody').append(markup);
			$('#anneeObtentionDiplome').val("");
		});
		$('#listDiplome').val(JSON.stringify(listeEmployeDiplome));
	}
</script>

<script type="text/javascript">
	var listePersonnePrevenir;	
	var listeEmployePersonnePrevenir;
	
	if($('#listPersonnePrevenir').val() != ''){
		listePersonnePrevenir = JSON.parse($('#listPersonnePrevenir').val());
	}else {
		listePersonnePrevenir = [];
	}
	
	if($('#listEmployePersonnePrevenir').val() != ''){
		listeEmployePersonnePrevenir = JSON.parse($('#listEmployePersonnePrevenir').val());
	}else {
		listeEmployePersonnePrevenir = [];
	}
	
	function ajouterPersonnePrevenir() {
		var item = {};
		var itemEmployePersonnePrevenir = {};
		var lienParente = {"idLienParente":$('#idLienParente').val(),"libelleLienParente":$("#idLienParente option:selected").text()};
		var employe = {"idEmploye":$("#idEmploye").val(),"numeroMatriculeEmploye":$("#numeroMatriculeEmploye").val(),"numeroIfuEmploye":$("#numeroIfuEmploye").val(),"rccmEmploye":$("#rccmEmploye").val(),"activiteEmploye":$("#activiteEmploye").val(),"nomEmploye":$("#nomEmploye").val(),"prenomEmploye":$("#prenomEmploye").val(),"dateNaissanceEmploye":$("#dateNaissanceEmploye").val(),"lieuNaissanceEmploye":$("#lieuNaissanceEmploye").val(),"situationMatrimonialeEmploye":{"idSituationMatrimoniale":$("#idSituationMatrimoniale").val(),"libelleSituationMatrimoniale":$("#idSituationMatrimoniale option:selected").text()},"sexeEmploye":{"idSexe":$("#idSexe").val(),"libelleSexe":$("#idSexe option:selected").text()},"nombreEnfantEmploye":$("#nombreEnfantEmploye").val(),"telephoneEmploye":$("#telephoneEmploye").val(),"emailEmploye":$("#emailEmploye").val(),"boitePostaleEmploye":$("#boitePostaleEmploye").val(),"domiciliationBancaireEmploye":{"idBanque":$("#idBanque").val(),"libelleBanque":$("#idBanque option:selected").text()},"numeroCompteEmploye":$("#numeroCompteEmploye").val(),"maisonEmploye":$("#maisonEmploye").val(),"numeroCarreEmploye":$("#numeroCarreEmploye").val(),"quartierEmploye":$("#quartierEmploye").val(),"aibEmploye":$("#aibEmploye").val(),"nationaliteEmploye":$("#nationaliteEmploye").val(),"typeEmploye":$("#typeEmploye").val(),"transfertChargeFiscaleEmploye":$("#transfertChargeFiscaleEmploye").val(),"numeroCnssEmploye":$("#numeroCnssEmploye").val(),"abattementEmploye":$("#abattementEmploye").val(),"categorieEmploye":{"idCategorieEmploye":$("#idCategorieEmploye").val(),"libelleCategorieEmploye":$("#idCategorieEmploye option:selected").text()}};
		var booleen = false;				
		
		if(listePersonnePrevenir.length > 0){					
			for(var i=0; i<listePersonnePrevenir.length; i++){						
				if(listePersonnePrevenir[i].idPersonnePrevenir == $('#idPersonnePrevenirHidden').val()){
					booleen = true;
					break;							
				}
			}
			
			if(booleen == false){
				
				$.ajax({
		    		contentType: 'application/json',
				    type: 'GET',
				    url: '${pageContext.request.contextPath}/personneprevenir/rechercher/'+$('#nomPrenomPersonnePrevenir').val(),
				    cache: false,
				
				    error: function(xhr,error,textStatus){
				        console.log(textStatus);
				    },
				
				    complete: function(data) {
				  	  //console.log('complete done');
				    },
				
				    success: function(data) {
			    		item['idPersonnePrevenir'] = data.idPersonnePrevenir;
						item['nomPrenomPersonnePrevenir'] = data.nomPrenomPersonnePrevenir;
						item['telephonePersonnePrevenir'] = data.telephonePersonnePrevenir;
						listePersonnePrevenir.push(item);
						
						itemEmployePersonnePrevenir['employe'] = employe;
						itemEmployePersonnePrevenir['personnePrevenir'] = item;
						itemEmployePersonnePrevenir['lienParente'] = lienParente;
						listeEmployePersonnePrevenir.push(itemEmployePersonnePrevenir);
						
						$('#tablePersonnePrevenir > tbody').empty();
						$.each(listeEmployePersonnePrevenir, function(index, item){				        	
				        	var markup = 
				        	"<tr>"
								+"<td>"+item.personnePrevenir.nomPrenomPersonnePrevenir+"</td>"
								+"<td>"+item.lienParente.libelleLienParente+"</td>"
								+"<td>"+item.personnePrevenir.telephonePersonnePrevenir+"</td>"
								+"<td><button type='button' class='btn btn-outline-danger' onclick='retirerPersonnePrevenir("+item.personnePrevenir.idPersonnePrevenir+")'>Retirer</button></td>"
				        	+"</tr>"
				        	
				        	$('#tablePersonnePrevenir > tbody').append(markup);
				        	
				        	$('#idPersonnePrevenirHidden').val("");
				        	$('#nomPrenomPersonnePrevenir').val("");
				        	$('#telephonePersonnePrevenir').val("");
						});								
						$('#listEmployePersonnePrevenir').val(JSON.stringify(listeEmployePersonnePrevenir));
				    }
		    	});
			}
		}else{
			$.ajax({
	    		contentType: 'application/json',
			    type: 'GET',
			    url: '${pageContext.request.contextPath}/personneprevenir/rechercher/'+$('#nomPrenomPersonnePrevenir').val(),
			    cache: false,
			
			    error: function(xhr,error,textStatus){
			        console.log(textStatus);
			    },
			
			    complete: function(data) {
			  	  //console.log('complete done');
			    },
			
			    success: function(data) {
		    		item['idPersonnePrevenir'] = data.idPersonnePrevenir;
					item['nomPrenomPersonnePrevenir'] = data.nomPrenomPersonnePrevenir;
					item['telephonePersonnePrevenir'] = data.telephonePersonnePrevenir;
					listePersonnePrevenir.push(item);
					
					itemEmployePersonnePrevenir['employe'] = employe;
					itemEmployePersonnePrevenir['personnePrevenir'] = item;
					itemEmployePersonnePrevenir['lienParente'] = lienParente;
					listeEmployePersonnePrevenir.push(itemEmployePersonnePrevenir);
					
					$('#tablePersonnePrevenir > tbody').empty();
					$.each(listePersonnePrevenir, function(index, item){				        	
			        	var markup = 
			        	"<tr>"
							+"<td>"+item.nomPrenomPersonnePrevenir+"</td>"
							+"<td>"+lienParente.libelleLienParente+"</td>"
							+"<td>"+item.telephonePersonnePrevenir+"</td>"
							+"<td><button type='button' class='btn btn-outline-danger' onclick='retirerPersonnePrevenir("+item.idPersonnePrevenir+")'>Retirer</button></td>"
			        	+"</tr>"
			        	
			        	$('#tablePersonnePrevenir > tbody').append(markup);
			        	
			        	$('#idPersonnePrevenirHidden').val("");
			        	$('#nomPrenomPersonnePrevenir').val("");
			        	$('#telephonePersonnePrevenir').val("");
					});							
					$('#listEmployePersonnePrevenir').val(JSON.stringify(listeEmployePersonnePrevenir));
			    }
	    	});
		}
	}
	
	function retirerPersonnePrevenir(index) {
		for(var i=0; i<listePersonnePrevenir.length; i++){
			if(listePersonnePrevenir[i].idPersonnePrevenir == index){
				listePersonnePrevenir.splice(i,1)
			}
		}
		
		for(var i=0; i<listeEmployePersonnePrevenir.length; i++){
			if(listeEmployePersonnePrevenir[i].personnePrevenir.idPersonnePrevenir == index){
				listeEmployePersonnePrevenir.splice(i,1);
			}
		}
		
		$('#tablePersonnePrevenir > tbody').empty();
		$.each(listeEmployePersonnePrevenir, function(index, item){
			var markup = 
	        	"<tr>"
					+"<td>"+item.personnePrevenir.nomPrenomPersonnePrevenir+"</td>"
					+"<td>"+item.lienParente.libelleLienParente+"</td>"
					+"<td>"+item.personnePrevenir.telephonePersonnePrevenir+"</td>"
					+"<td><button type='button' class='btn btn-outline-danger' onclick='retirerPersonnePrevenir("+item.personnePrevenir.idPersonnePrevenir+")'>Retirer</button></td>"
	        	+"</tr>"
        	
        	$('#tablePersonnePrevenir > tbody').append(markup);
		});
		$('#listPersonnePrevenir').val(JSON.stringify(listePersonnePrevenir));
		$('#listEmployePersonnePrevenir').val(JSON.stringify(listeEmployePersonnePrevenir));
	}
</script>
  
<script type="text/javascript">
	$(function() {
		
	    $('#nomPrenomPersonnePrevenir').blur(function(){
    		$.ajax({
	    		contentType: 'application/json',
			    type: 'GET',
			    url: '${pageContext.request.contextPath}/personneprevenir/rechercher/'+$('#nomPrenomPersonnePrevenir').val(),
			    cache: false,
			
			    error: function(xhr,error,textStatus){
			        console.log(textStatus);
			    },
			
			    complete: function(data) {
			  	  //console.log('complete done');
			    },
			
			    success: function(data) {
		    		$('#idPersonnePrevenirHidden').val(data.idPersonnePrevenir);
		    		$('#telephonePersonnePrevenir').val(data.telephonePersonnePrevenir);
			    }
	    	});	    				    	
	    });
    	
    	$('#telephonePersonnePrevenir').blur(function(){
    		var personnePrevenir = {"nomPrenomPersonnePrevenir":$('#nomPrenomPersonnePrevenir').val(),"telephonePersonnePrevenir":$('#telephonePersonnePrevenir').val()};
	    	$.ajax({
	    		contentType: 'application/json',
			    type: 'GET',
			    url: '${pageContext.request.contextPath}/personneprevenir/rechercher/'+$('#nomPrenomPersonnePrevenir').val(),
			    cache: false,
			
			    error: function(xhr,error,textStatus){
			        console.log(textStatus);
			    },
			
			    complete: function(data) {
			  	  //console.log('complete done');
			    },
			
			    success: function(data) {
			    	if (data){
			    		$('#idPersonnePrevenirHidden').val(data.idPersonnePrevenir);
			    		$('#telephonePersonnePrevenir').val(data.telephonePersonnePrevenir);
			    	}else{
			    		$.ajax({
			    			contentType: 'application/json',
						    type: 'POST',
						    url: '${pageContext.request.contextPath}/personneprevenir/save',
						    data : JSON.stringify(personnePrevenir),
					      	dataType : 'json',
						    cache: false,
						
						    error: function(xhr,error,textStatus){
						        console.log(textStatus);
						    },
						
						    complete: function(data) {
						  	  //console.log('complete done');
						    },
						
						    success: function(data) {
						    	console.log(data);
						    }
			    		});
			    	}
			    }
	    	});
		});			    
	});
</script>

<script type="text/javascript">
	var listeEnfant;
	
	if($('#listEnfant').val() != ''){
		listeEnfant = JSON.parse($('#listEnfant').val());
	}else {
		listeEnfant = [];
	}
	
	function ajouterEnfant() {
		var itemEnfant = {};
		var booleen = false;
		
		if(listeEnfant.length > 0){
			
			for(var i=0; i<listeEnfant.length; i++){						
				if(listeEnfant[i].nomEnfant == $('#nomEnfant').val() && listeEnfant[i].prenomEnfant == $('#prenomEnfant').val() && listeEnfant[i].dateNaissanceEnfant == $('#dateNaissanceEnfant').val() && listeEnfant[i].lieuNaissanceEnfant == $('#lieuNaissanceEnfant').val()){
					booleen = true;
					break;							
				}
			}
			
			if(! $('#dateNaissanceEnfant').val().length > 0){
				booleen = true;
				$('#dateNaissanceEnfant').css("border-color", "red");
				$('#dateNaissanceEnfantErrorMessage').css("display", "inline");
			}else{
				$('#dateNaissanceEnfant').css("border-color", "#ccc");
				$('#dateNaissanceEnfantErrorMessage').css("display", "none");
			}
			
			if(booleen == false){
				var dateNaissanceEnfant = $('#dateNaissanceEnfant').val();
				var newDateNaissanceEnfant = dateNaissanceEnfant.split("-").reverse().join("-");
				var finalDateNaissanceEnfant = new Date(newDateNaissanceEnfant);
				
				itemEnfant['nomEnfant'] = $('#nomEnfant').val();
				itemEnfant['prenomEnfant'] = $('#prenomEnfant').val();
				itemEnfant['dateNaissanceEnfant'] = finalDateNaissanceEnfant;
				itemEnfant['lieuNaissanceEnfant'] = $('#lieuNaissanceEnfant').val();
				listeEnfant.push(itemEnfant);
				
				$('#tableEnfant > tbody').empty();
				
				$.each(listeEnfant, function(index, item){		        	
		        	var markup = 
		        	"<tr>"
						+"<td>"+item.nomEnfant+"</td>"
						+"<td>"+item.prenomEnfant+"</td>"
						+"<td>"+afficherDateNaissance(item.dateNaissanceEnfant)+"</td>"
						+"<td>"+item.lieuNaissanceEnfant+"</td>"
						+"<td><button type='button' class='btn btn-outline-danger' onclick='retirerEnfant("+JSON.stringify(item)+")'>Retirer</button></td>"
		        	+"</tr>"
		        	$('#tableEnfant > tbody').append(markup);
				});
				$('#nombreEnfantEmploye').val(listeEnfant.length);
				$('#listEnfant').val(JSON.stringify(listeEnfant));
	        	$('#nomEnfant').val("");
	        	$('#prenomEnfant').val("");
	        	$('#dateNaissanceEnfant').val("");
	        	$('#lieuNaissanceEnfant').val("");
			}
		}else{
			if(! $('#dateNaissanceEnfant').val().length > 0){
				booleen = true;
				$('#dateNaissanceEnfant').css("border-color", "red");
				$('#dateNaissanceEnfantErrorMessage').css("display", "inline");
			}else{
				$('#dateNaissanceEnfant').css("border-color", "#ccc");
				$('#dateNaissanceEnfantErrorMessage').css("display", "none");
			}
			
			if(booleen == false){
				var dateNaissanceEnfant = $('#dateNaissanceEnfant').val();
				var newDateNaissanceEnfant = dateNaissanceEnfant.split("-").reverse().join("-");
				var finalDateNaissanceEnfant = new Date(newDateNaissanceEnfant);
				
				itemEnfant['nomEnfant'] = $('#nomEnfant').val();
				itemEnfant['prenomEnfant'] = $('#prenomEnfant').val();
				itemEnfant['dateNaissanceEnfant'] = finalDateNaissanceEnfant;
				itemEnfant['lieuNaissanceEnfant'] = $('#lieuNaissanceEnfant').val();
				listeEnfant.push(itemEnfant);
				
				$('#tableEnfant > tbody').empty();
				
				$.each(listeEnfant, function(index, item){		        	
		        	var markup = 
		        	"<tr>"
						+"<td>"+item.nomEnfant+"</td>"
						+"<td>"+item.prenomEnfant+"</td>"
						+"<td>"+afficherDateNaissance(item.dateNaissanceEnfant)+"</td>"
						+"<td>"+item.lieuNaissanceEnfant+"</td>"
						+"<td><button type='button' class='btn btn-outline-danger' onclick='retirerEnfant("+JSON.stringify(item)+")'>Retirer</button></td>"
		        	+"</tr>"
		        	$('#tableEnfant > tbody').append(markup);
				});
				$('#nombreEnfantEmploye').val(listeEnfant.length);
				$('#listEnfant').val(JSON.stringify(listeEnfant));
	        	$('#nomEnfant').val("");
	        	$('#prenomEnfant').val("");
	        	$('#dateNaissanceEnfant').val("");
	        	$('#lieuNaissanceEnfant').val("");
			}
		}
	}
	
	function retirerEnfant(enfant) {
		for(var i=0; i<listeEnfant.length; i++){
			if(JSON.stringify(listeEnfant[i]) == JSON.stringify(enfant)){
				listeEnfant.splice(i,1)
			}
		}

		$('#tableEnfant > tbody').empty();
		
		$.each(listeEnfant, function(index, item){		        	
        	var markup = 
        	"<tr>"
				+"<td>"+item.nomEnfant+"</td>"
				+"<td>"+item.prenomEnfant+"</td>"
				+"<td>"+afficherDateNaissance(item.dateNaissanceEnfant)+"</td>"
				+"<td>"+item.lieuNaissanceEnfant+"</td>"
				+"<td><button type='button' class='btn btn-outline-danger' onclick='retirerEnfant("+JSON.stringify(item)+")'>Retirer</button></td>"
        	+"</tr>"
        	$('#tableEnfant > tbody').append(markup);
		});
		$('#nombreEnfantEmploye').val(listeEnfant.length);
		$('#listEnfant').val(JSON.stringify(listeEnfant));
    	$('#nomEnfant').val("");
    	$('#prenomEnfant').val("");
    	$('#dateNaissanceEnfant').val("");
    	$('#lieuNaissanceEnfant').val("");
	}
	
	function retirerEnfantBis(idEnfant) {
		
		var item = {};
		
		$.ajax({
    		contentType: 'application/json',
		    type: 'GET',
		    url: '${pageContext.request.contextPath}/enfant/'+idEnfant,
		    cache: false,
		
		    error: function(xhr,error,textStatus){
		        console.log(textStatus);
		    },
		
		    complete: function(data) {
		  	  //console.log('complete done');
		    },
		
		    success: function(data) {
		    	
	    		item['nomEnfant'] = data.nomEnfant;
				item['prenomEnfant'] = data.prenomEnfant;
				item['dateNaissanceEnfant'] = data.dateNaissanceEnfant;
				item['lieuNaissanceEnfant'] = data.lieuNaissanceEnfant;
				
				retirerEnfant(JSON.stringify(item));
		    }
    	});
	}
	
	function afficherDateNaissance(dateNaissance) {
		if(dateNaissance != null){
			return new Date(dateNaissance).getFromFormat('dd-mm-yyyy');
		}else{
			return "";
		}
	}
	
	Date.prototype.getFromFormat = function(format) {
	    var yyyy = this.getFullYear().toString();
	    format = format.replace(/yyyy/g, yyyy)
	    var mm = (this.getMonth()+1).toString(); 
	    format = format.replace(/mm/g, (mm[1]?mm:"0"+mm[0]));
	    var dd  = this.getDate().toString();
	    format = format.replace(/dd/g, (dd[1]?dd:"0"+dd[0]));
	    var hh = this.getHours().toString();
	    format = format.replace(/hh/g, (hh[1]?hh:"0"+hh[0]));
	    var ii = this.getMinutes().toString();
	    format = format.replace(/ii/g, (ii[1]?ii:"0"+ii[0]));
	    var ss  = this.getSeconds().toString();
	    format = format.replace(/ss/g, (ss[1]?ss:"0"+ss[0]));
	    return format;
	};
</script>
