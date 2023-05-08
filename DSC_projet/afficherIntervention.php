<?php include_once 'include/connection.inc.php'?>

<?php

if(!isset($_GET['affiche']) || empty($_GET['affiche'])){

header("Location: infosIntervention.php");
}

$affiche = htmlspecialchars($_GET['affiche']);

$sqlDetails = "SELECT I.IdNatureSinistre , LblNatureSinistre, dateInterv, nomPompier, prenomPompier, commentairePompier FROM intervention I, natureSinistre N, pompier P WHERE N.IdNatureSinistre=I.IdNatureSinistre 
AND I.matricule=P.matricule AND I.IdNatureSinistre =:affiche ";

$req = $db->prepare($sqlDetails);
$req->bindParam(':affiche', $affiche, PDO::PARAM_INT);
$req->execute();
$result = $req->fetchAll();

?>

<?php include_once './include/header.inc.php';?>
<?php echo generationEntete("Interventions","Détail de l'invtervention N°".$affiche) ?>

<div class="margetab text-center">

        <table class="table table-red text-center">
            <thead>
                <tr>
                    <th scope="col">Nature du sinistre</th>
                    <th scope="col">Date de l'intervention</th>
                    <th scope="col">Nom</th>
                    <th scope="col">Prenom</th>
                    <th scope="col">Commentaire</th>

                </tr>
            </thead>
            <tbody>

                <?php

                foreach($result as $key=>$valAff){

                    $sinistre=$valAff['LblNatureSinistre'];

                    $timestamp = strtotime($valAff['dateInterv']); //changer la date en FR
                    $dateIntervFR = date('d/m/Y', $timestamp);

                    $nomPompier=$valAff['nomPompier'];
                    $prenomPompier=$valAff['prenomPompier'];
                    $commentaire=$valAff['commentairePompier'];
                    ?>
                    
                    <tr>
                        <td><?= $sinistre ?></td>
                        <td><?= $dateIntervFR ?></td>
                        <td><?= $nomPompier ?></td>
                        <td><?= $prenomPompier ?></td>
                        <td><?= $commentaire ?></td>

                    </tr>
                <?php
                }
                ?>

            </tbody>
        </table>
        <a href="./infosIntervention.php" class="btn btn-primary">Retour</a>
        
</div>



<?php include_once './include/footer.inc.php'; ?>
