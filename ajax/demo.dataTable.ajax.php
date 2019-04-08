<?php
$servername = "localhost";
$username = "username";
$password = "password";
// Create connection
$conn = new mysqli('localhost','root','gw@drc123','yourdatabase');

// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
} 



$request=$_POST;
$columns=[];


//Gwet all parameter from Post data
$draw=$request['draw'];
$length=$request['length'];
$offset=$request['start'];
$orderColumnId = (int)$request['order'][0]['column'];
$orderBy = $request['order'][0]['dir'];
$orderColumn=$request['columns'][$orderColumnId]['data'];
$sword=trim($request['search']['value']);

$searchable_columns=[];
foreach ($request['columns'] as $key=> $col) {
	if($col['searchable']){
		$searchable_columns[]=$col['data'];
	}
}

//Count total record from table
$count_sql = "SELECT count(*) FROM `data_table_ajax`";
$count_result = $conn->query($count_sql);
$total=$count_result->fetch_row();
$table_total=$total['0'];

//Create query for search word
$searchBy='';
if($sword!=''){

	//Search by colums what you want 
	// $searchBy.= "WHERE name LIKE('%".$sword."%')";
	
    //Below code will use  for search for all searchable columns
	$counter = 0; 
	$searchBy="WHERE ";
	foreach ($searchable_columns as $colum) {
		if( $counter == count( $searchable_columns ) - 1) { 
	    	$searchBy.=$colum." LIKE('%".$sword."%')";
	    }else{
			$searchBy.=$colum." LIKE('%".$sword."%') OR ";
		}
          
    	$counter = $counter + 1; 
	}
}


//Get Data as per passed parameter
$sql = "SELECT * FROM `data_table_ajax` ".$searchBy." ORDER BY ".$orderColumn." ".$orderBy." LIMIT ".$length." OFFSET ".$offset;
$result = $conn->query($sql);

$data=[];
if($result->num_rows>0){
   while ($row=$result->fetch_assoc()) {
       $data[]=$row;
   }
}

//Change total count of records  while search generelly used for paggination change during search operation
$table_total_filter=$table_total;
if($sword!=''){
	$table_total_filter=count($data);
}

//Create Array for data table operations 
$results = array(
	"draw" =>intval($draw),
    "recordsTotal" =>$table_total,
    "recordsFiltered" =>$table_total_filter,
    "aaData"=>$data
);

//Print table data
echo json_encode($results);
?>