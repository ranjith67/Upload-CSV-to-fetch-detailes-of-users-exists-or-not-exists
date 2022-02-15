    <?php
// Load the database configuration file
include_once 'dbConfig.php';

// Get status message
if(!empty($_GET['status'])){
    switch($_GET['status']){
        case 'succ':
            $statusType = 'alert-success';
            $statusMsg = 'Members data has been imported successfully.';
            break;
        case 'err':
            $statusType = 'alert-danger';
            $statusMsg = 'Some problem occurred, please try again.';
            break;
        case 'invalid_file':
            $statusType = 'alert-danger';
            $statusMsg = 'Please upload a valid CSV file.';
            break;
        default:
            $statusType = '';
            $statusMsg = '';
    }
}
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="../CSS/main.css">
    <script src="https://cdnjs.cloudflare.com/ajax/libs/xlsx/0.17.0/xlsx.full.min.js"></script>
    <title>Document</title>
</head>
<body>
<div class="hai">
    <h1>Database Search</h1>
</div>
<!-- Display status message -->
<?php if(!empty($statusMsg)){ ?>
<div class="col-xs-12">
    <div class="alert <?php echo $statusType; ?>"><?php echo $statusMsg; ?></div>
</div>
<?php } ?>

<div class="row">
                <!-- Import link -->
        <!-- <div class="col-md-12 head">
            <div class="float-right">
                <a href="javascript:void(0);" class="btn btn-success" onclick="formToggle('importFrm');"><i class="plus"></i> Import</a>
            </div>
        </div> -->
        <!-- CSV file upload form -->
        <div class="col-md-12" id="importFrm" >
            <form action="importData.php" method="post" enctype="multipart/form-data">
                <input type="file" name="file" class="custom-file-input" />
                <input type="submit" class="jay" name="importSubmit" value="IMPORT">
            </form>
        </div>
    <!-- Data list table --> 
    <div class="tik">
        <div class="waseem">
                        <input type="button" onclick="export_data()" value="Export">
        </div>
           <table id="data">
            <tr>
                <th>S.I No</th>
                <th>Name</th>
                <th>Phone</th>
                <th>Website</th>
                <th>Status</th>
            </tr>
        // Get member rows
        //king567(1)
                        <?php
                $result = $db->query("SELECT * FROM king1 WHERE EXISTS (SELECT phone FROM tmp_data WHERE tmp_data.phone = king1.phone)");
        if($result->num_rows > 0){
            while($row = $result->fetch_assoc()){
        ?>
            <tr>
                <td><?php echo $row['id']; ?></td>
                <td><?php echo $row['name']; ?></td>
                <td><?php echo $row['phone']; ?></td>
                <td>King567(1)</td>
                <td>Active</td>
            </tr>
        <?php } }else{ ?>
            
        <?php } ?>
        <!-- //king567(2)-->
                <?php
                $result = $db->query("SELECT * FROM king2 WHERE EXISTS (SELECT phone FROM tmp_data WHERE tmp_data.phone = king2.phone)");
        if($result->num_rows > 0){
            while($row = $result->fetch_assoc()){
        ?>
            <tr>
                <td><?php echo $row['id']; ?></td>
                <td><?php echo $row['name']; ?></td>
                <td><?php echo $row['phone']; ?></td>
                <td>King567(2)</td>
                <td>Active</td>
            </tr>
        <?php } }else{ ?>
            
        <?php } ?>
        <!-- playwin567 -->
                        <?php
                $result = $db->query("SELECT * FROM playwin567 WHERE EXISTS (SELECT phone FROM tmp_data WHERE tmp_data.phone = playwin567.phone)");
        if($result->num_rows > 0){
            while($row = $result->fetch_assoc()){
        ?>
            <tr>
                <td><?php echo $row['id']; ?></td>
                <td><?php echo $row['name']; ?></td>
                <td><?php echo $row['phone']; ?></td>
                <td>Playwin567</td>
                <td>Active</td>
            </tr>
        <?php } }else{ ?>

        <?php } ?>
        <!-- Play567 -->
                                <?php
                $result = $db->query("SELECT * FROM play567 WHERE EXISTS (SELECT phone FROM tmp_data WHERE tmp_data.phone = play567.phone)");
        if($result->num_rows > 0){
            while($row = $result->fetch_assoc()){
        ?>
            <tr>
                <td><?php echo $row['id']; ?></td>
                <td><?php echo $row['name']; ?></td>
                <td><?php echo $row['phone']; ?></td>
                <td>Play567</td>
                <td>Active</td>
            </tr>
        <?php } }else{ ?>

        <?php } ?>
        <!-- winexch567 -->
                                        <?php
                $result = $db->query("SELECT * FROM winexch567 WHERE EXISTS (SELECT phone FROM tmp_data WHERE tmp_data.phone = winexch567.phone)");
        if($result->num_rows > 0){
            while($row = $result->fetch_assoc()){
        ?>
            <tr>
                <td><?php echo $row['id']; ?></td>
                <td><?php echo $row['name']; ?></td>
                <td><?php echo $row['phone']; ?></td>
                <td>Winexch567</td>
                <td>Active</td>
            </tr>
        <?php } }else{ ?>

        <?php } ?>
        <!-- gamexch567 -->
                                                <?php
                $result = $db->query("SELECT * FROM gameexch567 WHERE EXISTS (SELECT phone FROM tmp_data WHERE tmp_data.phone = gameexch567.phone)");
        if($result->num_rows > 0){
            while($row = $result->fetch_assoc()){
        ?>
            <tr>
                <td><?php echo $row['id']; ?></td>
                <td><?php echo $row['name']; ?></td>
                <td><?php echo $row['phone']; ?></td>
                <td>gameexch567</td>
                <td>Active</td>
            </tr>
        <?php } }else{ ?>

        <?php } ?>
        <!-- Non Existing members-->
                <?php
        // Get member rows
        $result = $db->query("SELECT  * FROM tmp_data WHERE phone NOT IN(SELECT phone FROM king1 
        UNION 
        SELECT phone FROM king2
        UNION
        SELECT phone FROM playwin567
        UNION
        SELECT phone FROM play567
        UNION
        SELECT phone FROM winexch567
        UNION
        SELECT phone FROM gameexch567
        )");
        if($result->num_rows > 0){
            while($row = $result->fetch_assoc()){
        ?>
            <tr>
                <td><?php echo $row['id']; ?></td>
                <td><?php echo $row['name']; ?></td>
                <td><?php echo $row['phone']; ?></td>
                <td></td>
                <td>Non-Active</td>
            </tr>
        <?php } }else{ ?>

        <?php
}?>
    </table>
    </div>
</div>

<!-- Show/hide CSV upload form -->
<script>
function formToggle(ID){
    var element = document.getElementById(ID);
    if(element.style.display === "none"){
        element.style.display = "block";
    }else{
        element.style.display = "none";
    }
}
</script>
<script>
function export_data(){
	let data=document.getElementById('data');
	var fp=XLSX.utils.table_to_book(data,{sheet:'sheet1'});
	XLSX.write(fp,{
		bookType:'xlsx',
		type:'base64'
	});
	XLSX.writeFile(fp, 'active&non-activeplayers.xlsx');
}
</script>
</body>
</html>
