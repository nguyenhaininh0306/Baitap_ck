<?php
	class database
	{
		function connect()
		{
			$con = mysql_connect("localhost", "nhomthuchanh", "123456");
			if (!$con)
			{
				echo 'Không có Database';
				exit();
			}
			else
			{
				mysql_select_db("dbbanhang_ck");
				mysql_query("SET NAMES UTF8");
				return $con;
			}
		}
		
		/*Xuất sản phẩm*/
		function xuatsp($sql)
		{
			$link = $this->connect();
			$ketqua = mysql_query($sql,$link);
			$i = mysql_num_rows($ketqua);
			if ($i > 0)
			{
				while ($row = mysql_fetch_array($ketqua))
				{
					$id = $row['id'];
					$tensp = $row['tensp'];
					$gia = $row['gia'];
					$hinh = $row['hinh'];
					$mota = $row['mota'];
					echo '<img src="images/home/'.$hinh.'" alt="" />
						<h2>'.$gia.'</h2>
						<p>'.$mota.'</p>
						<a href="#" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Thêm vào giỏ hàng</a>';
				}
			}
			
		}
		
		function xuatspoverlay($sql)
		{
			$link = $this->connect();
			$ketqua = mysql_query($sql,$link);
			$i = mysql_num_rows($ketqua);
			if ($i > 0)
			{
				while ($row = mysql_fetch_array($ketqua))
				{
					$id = $row['id'];
					$tensp = $row['tensp'];
					$gia = $row['gia'];
					$hinh = $row['hinh'];
					$mota = $row['mota'];
					echo '<h2>'.$gia.'</h2>
						<p>'.$mota.'</p>
						<a href="#" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Thêm vào giỏ hàng</a>';
						
				}
			}
			
		}
	}
?>