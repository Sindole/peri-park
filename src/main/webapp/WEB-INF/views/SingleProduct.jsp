<%@ include file="Header.jsp"%>
<head>
<link
	href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css"
	rel="stylesheet">
<link href="https://fonts.googleapis.com/css?family=Open+Sans:400,700"
	rel="stylesheet">
<style>
body {
	overflow-x: hidden;
}

img {
	max-width: 100%;
}

.preview {
	font-family: 'Segoe Print';
	display: -webkit-box;
	display: -webkit-flex;
	display: -ms-flexbox;
	display: flex;
	-webkit-box-orient: vertical;
	-webkit-box-direction: normal;
	-webkit-flex-direction: column;
	-ms-flex-direction: column;
	flex-direction: column;
}

@media screen and (max-width: 996px) {
	.preview {
		margin-bottom: 20px;
	}
}

.preview-pic {
	-webkit-box-flex: 1;
	-webkit-flex-grow: 1;
	-ms-flex-positive: 1;
	flex-grow: 1;
}

.preview-thumbnail.nav-tabs {
	border: none;
	margin-top: 15px;
}

.preview-thumbnail.nav-tabs li {
	width: 18%;
	margin-right: 2.5%;
}

.preview-thumbnail.nav-tabs li img {
	max-width: 100%;
	display: block;
}

.preview-thumbnail.nav-tabs li a {
	padding: 0;
	margin: 0;
}

.preview-thumbnail.nav-tabs li:last-of-type {
	margin-right: 0;
}

.tab-content {
	font-family: 'Segoe Print';
	overflow: hidden;
}

.tab-content img {
	width: 100%;
	-webkit-animation-name: opacity;
	animation-name: opacity;
	-webkit-animation-duration: .3s;
	animation-duration: .3s;
}

.card {
	margin-top: 50px;
	background: white;
	padding: 3em;
	line-height: 1.5em;
}

@media screen and (min-width: 997px) {
	.wrapper {
		font-family: 'Segoe Print';
		display: -webkit-box;
		display: -webkit-flex;
		display: -ms-flexbox;
		display: flex;
	}
}

.details {
	font-family: 'Segoe Print';
	display: -webkit-box;
	display: -webkit-flex;
	display: -ms-flexbox;
	display: flex;
	-webkit-box-orient: vertical;
	-webkit-box-direction: normal;
	-webkit-flex-direction: column;
	-ms-flex-direction: column;
	flex-direction: column;
}

.colors {
	-webkit-box-flex: 1;
	-webkit-flex-grow: 1;
	-ms-flex-positive: 1;
	flex-grow: 1;
}

.product-title, .price, .sizes, .colors, .quantity {
	font-family: 'Segoe Print';
	text-transform: UPPERCASE;
	font-weight: bold;
}

.checked, .price span {
	color: #ff9f1a;
}

.product-title, .rating, .product-description, .quantity, .price, .vote,
	.sizes {
	font-family: 'Segoe Print';
	margin-bottom: 15px;
}

.product-title {
	font-family: 'Segoe Print';
	margin-top: 0;
}

.size {
	margin-right: 10px;
}

.size:first-of-type {
	margin-left: 40px;
}

.color {
	display: inline-block;
	vertical-align: middle;
	margin-right: 10px;
	height: 2em;
	width: 2em;
	border-radius: 2px;
}

.color:first-of-type {
	margin-left: 20px;
}

.add-to-cart, .like {
	background: #ff9f1a;
	padding: 1.2em 1.5em;
	border: none;
	text-transform: UPPERCASE;
	font-weight: bold;
	color: #fff;
	-webkit-transition: background .3s ease;
	transition: background .3s ease;
}

.add-to-cart:hover, .like:hover {
	background: white;
	color: #fff;
}

.not-available {
	text-align: center;
	line-height: 2em;
}

.not-available:before {
	font-family: fontawesome;
	content: "\f00d";
	color: #fff;
}

.orange {
	background: #ff9f1a;
}

.green {
	background: #85ad00;
}

.blue {
	background: #0076ad;
}

.tooltip-inner {
	padding: 1.3em;
}

@
-webkit-keyframes opacity { 0% {
	opacity: 0;
	-webkit-transform: scale(3);
	transform: scale(3);
}

100%
{
opacity
:
 
1;
-webkit-transform
:
 
scale
(1);

            
transform
:
 
scale
(1);
 
}
}
@
keyframes opacity { 0% {
	opacity: 0;
	-webkit-transform: scale(3);
	transform: scale(3);
}
100%
{
opacity
:
 
1;
-webkit-transform
:
 
scale
(1);

            
transform
:
 
scale
(1);
 
}
}

/*# sourceMappingURL=style.css.map */
</style>
</head>

<body>
<form action="Cart" method="POST">
	<div class="container">
		<div class="card">
			<div class="container-fliud">
				<div class="wrapper row">
					<div class="preview col-md-6">

						<div class="preview-pic tab-content">
							<div class="tab-pane active" id="pic-1">
								<img src="images/led-apple.jpg" />
							</div>
						</div>
					</div>
					<div class="details col-md-3">
						<h3 class="product-title">LED Monitor with HD Resolution</h3>
						<p class="product-description">Apple iMac 21.5 Inch Display
							with 1.6GHz Dual-Core MK142HN-A The idea behind iMac has never
							wavered: to craft the ultimate desktop experience. The best
							display, paired with high-performance processors, graphics and
							storage ' all within an incredibly thin, seamless enclosure.</p>
						<h4 class="price">
							current price: <span style="color: green;">28700/-</span>
						</h4>
						<h4 class="quantity">
							Available Quantity: <span style="color: red;">12 units</span>
						</h4>
					</div>
					<!-- <div class="action"> -->
					<button class="add-to-cart btn btn-default" type="submit">add to cart</button>
					&nbsp;
					<button class="like btn btn-default" type="button" onclick="history.back()">Back to Products</button>
				</div>
			</div>
		</div>
	</div>
	</form>
</body>
</html>
