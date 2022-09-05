<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<header class="align-items-center d-flex">
	<%-- 로고 영역 --%>
	<div class="logo col-2 d-flex align-items-center">
		<h3>
			<a href="#" class="text-success">Melong</a>
		</h3>
	</div>
	<%-- 검색 영역 --%>
	<div class="searchcol-10">
		<div class="search-bar">
			<div class="input-group d-flex">
				<form method="get" action="/lesson03/quiz02/header.jsp?info_template=">
					<input type="text" class="form-control">
					<div class="input-group-append">
						<button class="btn btn-info" type="button">검색</button>
					</div>
				</form>
			</div>
		</div>
	</div>
</header>