<div class="shopping">
	<div class="container">
		<div class="col-lg-12">
			<h2 class="text-center text1">Keranjang Belanja</h2>
		</div>
		<table class="timetable_sub">
			<thead>
				<tr>
					<th>Produk</th>
					<th>Jumlah</th>
					<th>Diskon</th>
					<th>Harga</th>
					<th>Total</th>
				</tr>
			</thead>
			<?php
			if(!empty($_SESSION["cart"])){
				$total = 0;
				foreach ($_SESSION["cart"] as $keys => $values) {
					$totalDisc = $values['price']-($values['price'] * $values['disc']/100);
					$subtotal = $values['qty'] * $totalDisc;
					$total = $total + $subtotal;
			?>
			<tr>
				<td align="center">
					<div class="table-column-left">
						<img src="../miiadmin/img/<?php echo $values['item_img']; ?>" class="img-small">
					</div>
					<div class="table-column-right">
						Kode : <?php echo $values['product_id']; ?><br/>
						Nama : <?php echo $values['item_name']; ?><br/>
						Color : <?php echo $values['color']; ?><br/> 
						Size : <?php echo $values['size']; ?><br/>
					</div>
				</td>
				<td align="center"><?php echo $values['qty']; ?></td>
				<td align="center"><?php echo $values['disc']; ?>%</td>
				<td align="center"><?php echo 'Rp '.number_format($values['price'],0,".","."); ?></td>
				<td align="center"><?php echo 'Rp '.number_format($subtotal,0,".","."); ?></td>
			
			</tr>
			<?php
				}
			}
			?>
		</table>
		<?php
		if(isset($_GET['item'])){
			foreach ($_SESSION["cart"] as $keys => $values) {
				if($values['product_id'] == $_GET['item'] && $values['color'] == $_GET['clr'] && $values['size'] == $_GET['sz']){
					unset($_SESSION['cart'][$keys]);
				}
			}
			echo "<script>document.location = '../index.php?p=cart'; </script>";
		}
		?>
		<div class="shopping-left">
			<div class="shopping-left-basket">
				<ul>
					<li class="total">Total Keseluruhan: <span><?php echo 'Rp '.number_format($total,0,".","."); ?></span></li>
				</ul>
			</div>
		
			<div class="shopping-right-basket">
				<a class="btn-continue" href="../index.php">Lanjutkan</a>
				<?php
				if(isset($_SESSION['email'])){
					echo '
					<a class="btn-continue" href="../index.php?p=checkout">Berikutnya</a>
					';
				}elseif(isset($_COOKIE['email'])){
					echo '
					<a class="btn-continue" href="../index.php?p=checkout">Berikutnya</a>
					';
				}else{
					echo '
					<a class="btn-continue" href="../index.php?p=login">Berikutnya</a>
					';
				}
				?>
			</div>
			<div class="clearfix"></div>
			<?php
			if(isset($_GET['act'])){
				if($_GET['act'] == "clear"){
					unset($_SESSION['cart']);
					echo "<script>document.location = '../index.php?p=cart'; </script>";
				}
			}
			?>
		</div>				
	</div>
</div>