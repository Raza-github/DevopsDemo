<?php
session_start();
include_once 'includes/config.php';
$oid=intval($_GET['oid']);
 ?>
<script language="javascript" type="text/javascript">
function f2()
{
window.close();
}ser
function f3()
{
window.print(); 
}
</script>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>Order Tracking Details</title>
<link href="style.css" rel="stylesheet" type="text/css" />
<link href="anuj.css" rel="stylesheet" type="text/css">
</head>
<body>

	<div class="span9">
					<div class="content">

	<div class="module">
							<div class="module-head">
								<h3>RECEIPT</h3>
							</div>
							<div class="module-body table">

							
			
								
<?php 
 $f1="00:00:00";
$from=date('Y-m-d')." ".$f1;
$t1="23:59:59";
$to=date('Y-m-d')." ".$t1;
$query=mysqli_query($con,"select products.productName as pname,products.id as proid,orders.productId as opid,orders.quantity as qty,products.productPrice as pprice,orders.paymentMethod as paym,orders.orderDate as odate,orders.id as orderid from orders join products on orders.productId=products.id where orders.userId='".$_SESSION['id']."' and orders.paymentMethod is not null");
$cnt=1;
while($row=mysqli_fetch_array($query))
{
?>								<table cellpadding="0" cellspacing="0" border="0" class="datatable-1 table table-bordered table-striped	 display table-responsive" >
								<tbody>
										
				<tr><td>Qauntity</td><td class="cart-product-quantity">
						<?php echo $qty=$row['qty']; ?> </tr></td>  
					<tr><td>Name</td style="width:100px"><td><?php echo $row['pname']; ?>  </td></tr>
					<tr><td>Price</td><td><?php echo $price=$row['pprice']; ?>  </td></tr>
					<tr><td>Ttal Price</td><td class="cart-product-grand-total"><?php echo ($qty*$price);?></td></tr>
					<tr><td>pay mode</td><td class="cart-product-sub-total"><?php echo $row['paym']; ?>  </td></tr>
					<tr><td>date</td><td class="cart-product-sub-total"><?php echo $row['odate']; ?>  </td></tr>
											<tr>
      <td colspan="2"><hr /></td>
    </tr>
										<?php  } ?>
										</tbody>
								</table>
							</div>
						</div>						

						
						
					</div><!--/.content-->
				</div><!--/.span9-->

</body>
</html>

     