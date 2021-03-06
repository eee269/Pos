<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 

<%@ include file="../include/header.jsp" %>

<script type="text/javascript">
	/* var stf_id = (Integer) session.getAttribute("stf_id"); */
	if(${empty sessionScope.stf_id}){
		alert('로그인 해주시길 바랍니다.');
		location.href ='login';
	}
</script>
<div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <h1>Dashboard<small>Welcome</small></h1>
      <ol class="breadcrumb">
        <li><a href="main"><i class="fa fa-dashboard"></i> Home</a></li>
        <li class="active">Dashboard</li>
      </ol>
    </section>

    <!-- Main content -->
    <section class="content">

      <!-- Default box -->
      <div class="box">
        <div class="box-body">
          		
				<div class="row" style="margin:0px;">
					  <div class="col-lg-3 col-xs-6">
						<div class="small-box bg-aqua">
						  						  <div class="inner">
							<h3 style="font-size:30px;">0.00 (0)</h3>
							<p>Today's Sale (USD)</p>
						  </div>
						  <div class="icon">
							<i class="ion ion-bag"></i>
						  </div>
						  <a href="sales/sales.php?from=17-01-2021&to=17-01-2021" class="small-box-footer">More info <i class="fa fa-arrow-circle-right"></i></a>
						</div>
					  </div>
					  <div class="col-lg-3 col-xs-6">
						<div class="small-box bg-green">
						  						  <div class="inner">
							<h3 style="font-size:30px;">0.00 (0)</h3>
							<p>Current Month Sale (USD)</p>
						  </div>
						  <div class="icon">
							<i class="ion ion-bag"></i>
						  </div>
						  <a href="sales/sales.php?from=01-01-2021&to=31-01-2021" class="small-box-footer">More info <i class="fa fa-arrow-circle-right"></i></a>
						</div>
					  </div>
					  <div class="col-lg-3 col-xs-6">
						<div class="small-box bg-yellow">
						  						  <div class="inner">
							<h3 style="font-size:30px;">1</h3>
							<p>Total Items</p>
						  </div>
						  <div class="icon">
							<i class="ion ion-bag"></i>
						  </div>
						  <a href="products/items.php" class="small-box-footer">More info <i class="fa fa-arrow-circle-right"></i></a>
						</div>
					  </div>
					  <div class="col-lg-3 col-xs-6">
						<div class="small-box bg-red">
						  						  <div class="inner">
							<h3 style="font-size:30px;">0</h3>
							<p>Total Customers</p>
						  </div>
						  <div class="icon">
							<i class="ion ion-bag"></i>
						  </div>
						  <a href="customers/customers.php" class="small-box-footer">More info <i class="fa fa-arrow-circle-right"></i></a>
						</div>
					  </div>
				</div>
				
				<div class="row" style="margin:0px;">
					<div class="col-md-6 col-xs-12">
						<div class="box box-success">
							<div class="box-header with-border">
							<h3 class="box-title">Last 12 Month Sale</h3>
							</div>
							<div class="box-body no-padding">
								<div class="chart" id="line-chart" style="height: 250px;"></div>
							</div>
						</div>
					</div>
				  	<div class="col-md-6 col-xs-12">
					
						<div class="box box-success">
							
							<div class="box-footer no-padding">
							  <ul class="nav nav-stacked">
								<li style="border-bottom: solid 1px #e0e0e0;"><a href="sales/new_sale.php">Add New Sale <span class="pull-right"><span class="glyphicon glyphicon-plus"></span></span></a></li>
								<li style="border-bottom: solid 1px #e0e0e0;"><a href="sales/sales.php">Sales History <span class="pull-right"><span class="glyphicon glyphicon-th-list"></span></span></a></li>
								<li style="border-bottom: solid 1px #e0e0e0;"><a href="sales/sales.php?from=17-01-2021&to=17-01-2021">Today's Sale Report <span class="pull-right"><span class="glyphicon glyphicon-signal"></span></span></a></li>
								<li style="border-bottom: solid 1px #e0e0e0;"><a href="#">Extended Sale Report <span class="pull-right"><span class="glyphicon glyphicon-th"></span></span></a></li>
								<li style="border-bottom: solid 1px #e0e0e0;"><a href="customers/customers.php">Manage Customers <span class="pull-right"><span class="glyphicon glyphicon-user"></span></span></a></li>
								<li style="border-bottom: solid 1px #e0e0e0;"><a href="customers/cust_deposit.php">Customer Deposit <span class="pull-right"><span class="glyphicon glyphicon-euro"></span></span></a></li>
								<li style="border-bottom: solid 1px #e0e0e0;"><a href="products/items.php">Products List <span class="pull-right"><span class="glyphicon glyphicon-list-alt"></span></span></a></li>
								<li style="border-bottom: solid 1px #e0e0e0;"><a href="stock/received.php?from=17-01-2021&to=17-01-2021">Today's Receiving <span class="pull-right"><span class="glyphicon glyphicon-tasks"></span></span></a></li>
							  </ul>
							</div>
							
					  	</div>
						
				  	</div>
			   </div>
			   
<!-- 			   <div class="row" style="margin:0px;"> -->
<!-- 			   		<div class="box"> -->
<!-- 						<div class="box-header"> -->
<!-- 						  <h3 class="box-title">Recent Sales <small>(<a href="sales/sales.php">View All</a>)</small></h3> -->
<!-- 						</div> -->
<!-- 						/.box-header -->
<!-- 						<div class="box-body table-responsive no-padding"> -->
<!-- 						  <table class="table table-hover tbl_narrow"> -->
<!-- 							<tr> -->
<!-- 								<th>Sale ID</th> -->
<!-- 								<th>Date</th> -->
<!-- 								<th>Customer Name</th> -->
<!-- 								<th>Qty</th> -->
<!-- 								<th class="text-right">Amount</th> -->
<!-- 								<th class="text-right">Paid</th> -->
<!-- 								<th class="text-right">Balance</th> -->
<!-- 								<th width="10%">Status</th> -->
<!-- 							</tr> -->
<!-- 														</table> -->
<!-- 						</div> -->
<!-- 						/.box-body -->
<!-- 					  </div> -->
<!-- 			   </div> -->
			   
<!-- 			   <div class="row" style="margin:0px;"> -->
<!-- 			   		<div class="box"> -->
<!-- 						<div class="box-header"> -->
<!-- 						  <h3 class="box-title">Recent Expense <small>(<a href="expenses/expenses.php">View All</a>)</small></h3> -->
<!-- 						</div> -->
<!-- 						/.box-header -->
<!-- 						<div class="box-body table-responsive no-padding"> -->
<!-- 						  <table class="table table-hover tbl_narrow"> -->
<!-- 							<tr> -->
<!-- 								<th>Sr#</th> -->
<!-- 								<th>Date</th> -->
<!-- 								<th>Expense Detail</th> -->
<!-- 								<th class="text-right">Amount</th> -->
<!-- 								<th class="text-center">Status</th> -->
<!-- 							</tr> -->
<!-- 														</table> -->
<!-- 						</div> -->
<!-- 						/.box-body -->
<!-- 					  </div> -->
<!-- 			   </div> -->
				
        </div>
      </div>
      <!-- /.box -->

    </section>
    <!-- /.content -->
  </div>
  
<%@ include file="../include/footer.jsp" %>
 