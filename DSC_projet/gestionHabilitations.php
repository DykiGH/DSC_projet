<?php session_start(); ?>

<?php include_once 'include/connection.inc.php'?>
<?php

$sqlChoixPomp="SELECT P.matricule, nomPompier, prenomPompier, LblGrade, LblHabilitation 
                FROM pompier P, grade G, habilitation H, exercer E 
                WHERE P.IdGrade=G.IdGrade 
                AND P.matricule=E.matricule AND E.IdHabilitation=H.IdHabilitation ORDER BY P.nomPompier, P.prenomPompier";

$req = $db->prepare($sqlChoixPomp);
$req->execute();
$result = $req->fetchAll();

?>

<?php include_once './include/header.inc.php';?>
<?php echo generationEntete("Gérer un pompier","Choix du pompier") ?>

<div class="margetab">

    <table class="table table-red text-center">
        <thead>
            <tr>
                <th scope="col">Matricule</th>
                <th scope="col">Nom</th>
                <th scope="col">Prenom</th>
                <th scope="col">Grade</th>
                <th scope="col">Habilitation</th>
                <?php
                if(isset($_SESSION['role']) && !empty($_SESSION['role']) && $_SESSION['role']=="admin" ) {
                ?>
                    <th scope="col">Modifier</th>
                <?php 
                } ?>

            </tr>
        </thead>
        <tbody>

            <?php
            foreach($result as $key=>$choixPomp){

                $matricule=$choixPomp['matricule'];
                $nomPomp=$choixPomp['nomPompier'];
                $prenomPomp=$choixPomp['prenomPompier'];
                $lblGrade=$choixPomp['LblGrade'];
                $lblHab=$choixPomp['LblHabilitation'];

            ?>
                
                <tr>
                    <td><?= $matricule ?></td>
                    <td><?= $nomPomp ?></td>
                    <td><?= $prenomPomp ?></td>
                    <td><?= $lblGrade ?></td>
                    <td><?= $lblHab ?></td>
                    <?php 
                        if(isset($_SESSION['role']) && !empty($_SESSION['role']) && $_SESSION['role']=="admin" ) {
                        ?>
                            <td>
                                <a class="btn btn-dark" title="Choix du Pompier" href="ModifPompier.php?mat=<?= $matricule ?>" role="button">
                                <i class="bi bi-file-person-fill"></i></a>
                            </td>
                        <?php 
                        } ?>
                    
                </tr>
            <?php
            }
            ?>
        </tbody>
    </table>
</div>

<?php include_once './include/footer.inc.php'; ?>

