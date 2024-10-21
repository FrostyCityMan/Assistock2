<%--
  Created by IntelliJ IDEA.
  User: ITWILL
  Date: 2022-11-21
  Time: 오전 10:27
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java"
		 pageEncoding="UTF-8" isELIgnored="false" %>
<%@ include file="/header.jsp" %>
<%-- 본문시작 template.jsp--%>
<svg xmlns="http://www.w3.org/2000/svg" style="display: none;">
	<symbol id="check" viewBox="0 0 16 16">
		<title>Check</title>
		<path d="M13.854 3.646a.5.5 0 0 1 0 .708l-7 7a.5.5 0 0 1-.708 0l-3.5-3.5a.5.5 0 1 1 .708-.708L6.5 10.293l6.646-6.647a.5.5 0 0 1 .708 0z"></path>
	</symbol>
</svg>

<link rel="stylesheet" href="../css/pricing.css">

<div class="pricing-container py-3">

	<div class="background">
		<div class="pricing-container">
			<div class="panel pricing-table">

				<div class="pricing-plan">
					<img src="https://s22.postimg.cc/8mv5gn7w1/paper-plane.png" alt="" class="pricing-img">
					<h2 class="pricing-header">Personal</h2>
					<ul class="pricing-features">
						<li class="pricing-features-item">Custom domains</li>
						<li class="pricing-features-item">Sleeps after 30 mins of inactivity</li>
					</ul>
					<span class="pricing-price">Free</span>
					<a href="#/" class="pricing-button">Sign up</a>
				</div>

				<div class="pricing-plan">
					<img src="https://s28.postimg.cc/ju5bnc3x9/plane.png" alt="" class="pricing-img">
					<h2 class="pricing-header">Small team</h2>
					<ul class="pricing-features">
						<li class="pricing-features-item">Never sleeps</li>
						<li class="pricing-features-item">Multiple workers for more powerful apps</li>
					</ul>
					<span class="pricing-price">$150</span>
					<a href="#/" class="pricing-button is-featured">Free trial</a>
				</div>

				<div class="pricing-plan">
					<img src="https://s21.postimg.cc/tpm0cge4n/space-ship.png" alt="" class="pricing-img">
					<h2 class="pricing-header">Enterprise</h2>
					<ul class="pricing-features">
						<li class="pricing-features-item">Dedicated</li>
						<li class="pricing-features-item">Simple horizontal scalability</li>
					</ul>
					<span class="pricing-price">$400</span>
					<a href="#/" class="pricing-button">Free trial</a>
				</div>

			</div>
		</div>
	</div>

	<h2 class="display-6 text-center mb-4">Compare plans</h2>

	<div class="table-responsive">
		<table class="table text-center">
			<thead>
			<tr>
				<th style="width: 34%;"></th>
				<th style="width: 22%;">Free</th>
				<th style="width: 22%;">Pro</th>
				<th style="width: 22%;">Enterprise</th>
			</tr>
			</thead>
			<tbody>
			<tr>
				<th scope="row" class="text-start">Public</th>
				<td>
					<svg class="bi" width="24" height="24">
						<use xlink:href="#check"></use>
					</svg>
				</td>
				<td>
					<svg class="bi" width="24" height="24">
						<use xlink:href="#check"></use>
					</svg>
				</td>
				<td>
					<svg class="bi" width="24" height="24">
						<use xlink:href="#check"></use>
					</svg>
				</td>
			</tr>
			<tr>
				<th scope="row" class="text-start">Private</th>
				<td></td>
				<td>
					<svg class="bi" width="24" height="24">
						<use xlink:href="#check"></use>
					</svg>
				</td>
				<td>
					<svg class="bi" width="24" height="24">
						<use xlink:href="#check"></use>
					</svg>
				</td>
			</tr>
			</tbody>

			<tbody>
			<tr>
				<th scope="row" class="text-start">Permissions</th>
				<td>
					<svg class="bi" width="24" height="24">
						<use xlink:href="#check"></use>
					</svg>
				</td>
				<td>
					<svg class="bi" width="24" height="24">
						<use xlink:href="#check"></use>
					</svg>
				</td>
				<td>
					<svg class="bi" width="24" height="24">
						<use xlink:href="#check"></use>
					</svg>
				</td>
			</tr>
			<tr>
				<th scope="row" class="text-start">Sharing</th>
				<td></td>
				<td>
					<svg class="bi" width="24" height="24">
						<use xlink:href="#check"></use>
					</svg>
				</td>
				<td>
					<svg class="bi" width="24" height="24">
						<use xlink:href="#check"></use>
					</svg>
				</td>
			</tr>
			<tr>
				<th scope="row" class="text-start">Unlimited members</th>
				<td></td>
				<td>
					<svg class="bi" width="24" height="24">
						<use xlink:href="#check"></use>
					</svg>
				</td>
				<td>
					<svg class="bi" width="24" height="24">
						<use xlink:href="#check"></use>
					</svg>
				</td>
			</tr>
			<tr>
				<th scope="row" class="text-start">Extra security</th>
				<td></td>
				<td></td>
				<td>
					<svg class="bi" width="24" height="24">
						<use xlink:href="#check"></use>
					</svg>
				</td>
			</tr>
			</tbody>
		</table>
	</div>
	</main>

</div>
<%-- 본문끝--%>
<%@ include file="/footer.jsp" %>
