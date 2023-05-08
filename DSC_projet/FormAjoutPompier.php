<?php
session_start();

if(!isset($_SESSION['role']) || empty($_SESSION['role']) || $_SESSION['role']!="admin" ) {

        header('Location: ./pageConnexion.php?err=1005');die();
    }
?>

<?php include_once './include/connection.inc.php';?>

<?php include_once './include/header.inc.php';?>
<?php echo generationEntete("Ajouter un pompier","") ?>

    <script>
    //! fct js qui permet d'afficher des options diff à partir du menu radio volontaire/pro
    function aff_cach_input(action)
    { 
        // Cas volontaire (bouton radio)
        if (action == "volontaire") 
        {
            document.getElementById('blockVolontaire').style.display="inline"; 
            document.getElementById('blockPro').style.display="none"; 
        }
        else if (action == "pro")
        // Cas professionnel (bouton radio)
        {
            document.getElementById('blockVolontaire').style.display="none"; 
            document.getElementById('blockPro').style.display="inline"; 
        }
        return true;
    }
    </script>
<?php
?>
<div class="container justify-content-center">
    <form method="post" action="ajoutPompier.php" id="form"  novalidate>
    <div class="form-row">
        <div class="form-control-group col-md-3">
        <label for="matricule">Matricule</label>
        <input pattern="[0-9]{6}" class="form-control" name="matricule" id="matricule" placeholder="Ex : 876524" required>
        <div class="invalid-feedback">
            Le matricule est obligatoire ( Il est constitué de 6 chiffres )
        </div>
        </div>
        <div class="form-group col-md-3">
        <label for="dateNaissance">Date de Naissance</label>
        <input type="date" class="form-control" name="dateNaissance" id="dateNaissance" required>
        <div class="invalid-feedback">
            La date de naissance est obligatoire
        </div>
        </div>
    </div>
    <div class="form-row">
        <div class="form-control-group col-md-6">
        <label for="nom">Nom</label>
        <input pattern="[A-Za-zéèà-]{3,45}" class="form-control" name="nom" id="Nom" required>
        <div class="invalid-feedback">
            Le nom du pompier est obligatoire (minimum 3 caractères maximum 45)
        </div>
        </div>
    </div>
    <div class="form-row">
        <div class="form-group col-md-6">
        <label for="prenom">Prénom</label>
        <input pattern="[A-Za-zéèà-]{3,45}" class="form-control" name="prenom" id="prenom" required>
        <div class="invalid-feedback">
            Le prénom du pompier est obligatoire (minimum 3 caractères maximum 45)
        </div>
        </div>
    </div>
    <div class="form-row">
        <!-- Boutons radio -->
        <div class="form-control-group col-md-6">
        <label class="md-3" for="sexe">Sexe  :</label>
            <div class="custom-control custom-radio custom-control-inline">
            <input type="radio" class="custom-control-input" id="sexef" name="sexe" value="féminin">
            <label class="custom-control-label" for="sexef">féminin</label>
            </div>
            <div class="custom-control custom-radio custom-control-inline">
            <input type="radio" class="custom-control-input" id="sexem" name="sexe" value="masculin" checked>
            <label class="custom-control-label" for="sexem">masculin</label>
            </div>
        <div class="invalid-feedback">
            Le sexe est obligatoire
        </div>
        </div>
    </div>
    <div class="form-row">

        <!-- Liste déroulante -->
        <div class="form-group col-md-3">
        <label for="grade">Grade</label>
        <div class="form-group">
            <select class="form-control" id="grade" name="grade">
            <?php
                $sqlListeGrade = "SELECT idGrade, LblGrade FROM dsc_projet.Grade;";
                
                $req = $db->prepare($sqlListeGrade);
                $req->execute();
                $listeGrade = $req->fetchAll();
                $req->closeCursor(); //on ferme en cas de réutilisation de $req
                foreach  ($listeGrade as $key=>$valGrade) {
                    echo '<option value="'.$valGrade["idGrade"].'">'.ucwords($valGrade["LblGrade"]).'</option>';
                }
            ?>
            </select>
        </div>
        <div class="invalid-feedback">
            Le grade est obligatoire
        </div>
        </div>
        <div class="form-group col-md-3">
        <label for="caserne">Caserne</label>
        <div class="form-group">
            <select class="form-control" name="caserne" id="caserne">
            <?php
                $sqlListeCaserne = "SELECT idCaserne, NomCaserne FROM dsc_projet.Caserne;";

                $req = $db->prepare($sqlListeCaserne);
                $req->execute();
                $listeCaserne = $req->fetchAll();
                $req->closeCursor(); //on ferme en cas de réutilisation de $req
                foreach  ($listeCaserne as $key=>$valCaserne) {
                echo '<option value="'.$valCaserne["idCaserne"].'">'.ucwords($valCaserne["NomCaserne"]).'</option>';
                }
            ?>
            </select>
        </div>
        <div class="invalid-feedback">
            La caserne est obligatoire
        </div>
        </div>
    </div>
    <div class="form-row">
        <div class="form-control-group col-md-6">
        <label for="tel">Téléphone</label>
        <input type="tel" pattern="^[0-9]{10}$" class="form-control" name="tel" id="tel" required>
        <div class="invalid-feedback">
            Le numéro de téléphone est obligatoire
        </div>
        </div>
    </div>
    <div class="form-row">  

        <div class="form-control-group col-md-12">
        <label class="md-3" for="type">Type pompier  :</label>
        <div class="custom-control custom-radio custom-control-inline">

            <!-- //! onchange => quand coché ou décoché, appelle la fonction avec la valeur donnée, aff_cach_input est une fonction js décrite ds cette page -->
            <input type="radio" class="custom-control-input" id="pro" name="type" value="professionnel" onchange="aff_cach_input('pro')">
            <label class="custom-control-label" for="pro">Professionnel</label>
        </div>
        <div class="custom-control custom-radio custom-control-inline">

            <!-- //! onchange => quand coché ou décoché, appelle la fonction avec la valeur donnée, aff_cach_input est une fonction js décrite ds cette page -->
            <input type="radio" class="custom-control-input"  id="volontaire" name="type" value="volontaire" onchange="aff_cach_input('volontaire')" checked>
            <label class="custom-control-label" for="volontaire">Volontaire</label>
            <br>
        </div>   
        <div class="invalid-feedback">
            Le type est obligatoire
        </div>
        
        </div>

        <!-- Partie volontaire -->
        <!-- Liste déroulante -->
        <div id="blockVolontaire">
            <div class="form">
                <label for="employeur" >Employeur</label>
                <div class="form-group">
                <select class="form-control col-md-6" name="employeur" id="employeur">
                    <?php
                    $sqlListeEmp = "SELECT idEmployeur, NomEmployeur FROM dsc_projet.Employeur;";
                    $req = $db->prepare($sqlListeEmp);
                    $req->execute();
                    $listeEmp = $req->fetchAll();
                    $req->closeCursor(); //on ferme en cas de réutilisation de $req
                    foreach  ($listeEmp as $key=>$valEmp) {
                        echo '<option value="'.$valEmp["idEmployeur"].'">'.ucwords($valEmp["NomEmployeur"]).'</option>';
                    }
                    ?>
                </select>
                </div>
                <div class="invalid-feedback">
                    L'employeur est obligatoire
                </div>
            </div>
            <div class="form">
                <label for="bip" id="titreBip">Bip</label>
                <input type="number" class="form-control" name="bip" id="bip" placeholder="Ex : 123" >
                <div class="invalid-feedback">
                    Le Bip obligatoire
                </div>
            </div>
        </div> 

        <!-- Partie pro -->
        <div id="blockPro">
        <div class="form">
            <label for="indice">Indice</label>
            <input type="number" class="form-control" name="indice" id="indice" placeholder="Ex : 840" >
            <div class="invalid-feedback">
                L'indice est obligatoire
            </div>
        </div>
        <div class="form">
            <label for="dateEmbauche">Date d'embauche'</label>
            <input type="date" class="form-control" name="dateEmbauche" id="dateEmbauche" >
            <div class="invalid-feedback">
                La date d'embauche est obligatoire'
            </div>
        </div>
        </div> 
    </div>
    <br>
    <div class="form-row">
        <input type="submit" value="Valider" class="btn btn-primary" name="valider" />
    </div>
    <br>
    <script>
            aff_cach_input('volontaire');
    </script>

    </form>
</div>

<script>
(function() {
    "use strict"
    window.addEventListener("load", function() {
    var form = document.getElementById("form")
    form.addEventListener("submit", function(event) {
        if (form.checkValidity() == false) {
        event.preventDefault()
        event.stopPropagation()
        }
        form.classList.add("was-validated")
    }, false)
    }, false)
}())
</script>

<?php include_once './include/footer.inc.php'; ?>