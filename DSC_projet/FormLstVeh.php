<?php
session_start();

if(!isset($_SESSION['role']) || empty($_SESSION['role']) || $_SESSION['role']!="admin" ) {

        header('Location: ./pageConnexion.php?err=1005');die();
    }
?>

<?php include_once './include/connection.inc.php';?>

<?php include_once './include/header.inc.php';?>
<?php echo generationEntete("Gestion des véhicules","") ?>

<div class="album py-5 bg-light">
    <div class="container">
        <div class="row row-cols-1 row-cols-sm-2 row-cols-md-3 g-3">
            <?php
            $listeEngin="SELECT * FROM dsc_projet.typeengin;";

            foreach($db->query($listeEngin) as $row){
                ?>
                <div class="col">
                    <div class="card shadow-sm">
                        <img src="./images/<?= $row['images'] ?>" class="card-img-top">
                        <div class="card-body">
                        <span><?= $row['LblEngincol'] ?></span>
                            <div class="d-flex align-items-center">
                                <div class="btn-group">
                                    <a href="./ModifVeh.php?id=<?= $row['IdTypeEngin'];?>" class="btn btn-sm btn-outline-secondary" tabindex="-1" role="button">Modifier</a>
                                </div>  
                            </div>
                        </div>
                    </div>
                </div>
            <?php
            }
            ?>
        </div>
    </div>
</div>

<?php include_once './include/footer.inc.php'; ?>
