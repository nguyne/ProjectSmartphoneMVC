<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="/WEB-INF/views/layouts/user/tablib.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Chi tiết sản phẩm</title>
</head>
<body>
<div class="grid wide">
    <div class="chitiet-chitiet ">
   	<h1>${cart.size()}</h1>
		<div class="form-active-chitiet ">
			<c:forEach var = "itemproduct" items = "${product_Details}">
			 	<form class = "" method = "GET" action = "/addCart/${itemproduct.id}">
					<div class="header-chitiet-content">
									<h3>
										${itemproduct.title}
									</h3>
								</div> 
								<div class="chitiet-container l-12 m-12 c-12">
										<div class="chitiet-container-img">
											<div class="chitiet-container-above">
												<img src="<c:url value = "/image/${itemproduct.thumnail}"/>" alt="Điện thoại hình ảnh ở trên" class="chitiet-container-above-img">
											</div>
											
											<ul class="chitiet-container-below">
											<li class="chitiet-container-below-img">
												<a href="#" class="chitiet-container-link">
													<div class="chitiet-container-hinhnho">
														<img src="<c:url value ="/assets/img/icon_hot.svg"/>" alt="icon hot" class="chitiet-container-below-img-concon">
													</div>
													<span class = "chitiet-container-tenhinh">Điểm nổi bật</span>
												</a>
											</li>
											
											
											<li class="chitiet-container-below-imgimg">
												<a href="#" class="chitiet-container-link">
													<div class="chitiet-container-hinhnho">
														<img src="../assets/photos/'.$img->img_desct.'" alt="Điện thoại hình ảnh ở dưới" class="chitiet-container-below-img-con">
													</div>
													
												</a>
											</li>
											
											<li class="chitiet-container-below-img">
												<a href="#" class="chitiet-container-link">
													<div class="chitiet-container-hinhnho">
														<img src="<c:url value ="/assets/img/icon_camera.svg"/>" alt="icon icon_camera" class="chitiet-container-below-img-concon">
													</div>
													<span class = "chitiet-container-tenhinh">Chụp từ camera</span>
												</a>
											</li>
									</ul>
								</div>
						<div class="chitiet-container-embrace l-5 m-12 c-12">
							<div class="chitiet-container-price">
									<h3>Giá: </h3>
										<div class="gia-chitiet">
											<h4 class = "gia-chitiet__1"><fmt:formatNumber type="number" groupingUsed="true" value="${(itemproduct.price - itemproduct.price/100)}" /></h4><sup class = "sub-chitiet">₫</sup>
											<h4 class = "gia-chitiet__2"><fmt:formatNumber type="number" groupingUsed="true" value="${itemproduct.price}" /></h4><sup>₫</sup>
										</div>
									
									</div>
									<div class="chitiet-container-nhandat">
										<span>Nhận đặt trước</span>
									</div>
							
										
											<div class="chitiet-container-chitiet-khuyenmai">
												<h4>Khuyến Mãi</h4>
												
												<ul class="chitiet-container-chitiet-khuyenmai-list">
											<c:forEach var = "itemdiscount" items = "${product_discounttext}">
													<li class="chitiet-container-chitiet-khuyenmai-item">
														${ itemdiscount.discount_text}
													</li>
											</c:forEach>
													</ul>
						
													</div>
													
													<div class="chitiet-buton-thanhtoan">
														<button class="chitiet-container-type-btn-tragop-phantram">
														<h4>Mua trả góp 0%</h4>
														<span>Duyệt hồ sơ trong 5 phút </span>
														</button>
		
														<button class="chitiet-container-type-btn-tragop-the" >
														<h4> Trả góp qua thẻ</h4>
														<span>Visa, Mastercart, JCB, Amex</span>
														</button>
													</div>
													
													<a href="<c:url value = "/addCart/${itemproduct.id}"/>" class="chitiet-container-type-btn">
								                         Thêm vảo giỏ hàng
								                     </a>
												<input class="chitiet-container-type-btn" type="submit" name="add_cart" value="Thêm vào giỏ hàng">
													<div class="chitiet-container-copy">
														<button class= "chitiet-container-copy-link">
															<span class="chitiet-container-boder">
																<svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" fill="currentColor" class="bi bi-link-45deg" viewBox="0 0 16 16">
																	<path d="M4.715 6.542 3.343 7.914a3 3 0 1 0 4.243 4.243l1.828-1.829A3 3 0 0 0 8.586 5.5L8 6.086a1.002 1.002 0 0 0-.154.199 2 2 0 0 1 .861 3.337L6.88 11.45a2 2 0 1 1-2.83-2.83l.793-.792a4.018 4.018 0 0 1-.128-1.287z" />
																	<path d="M6.586 4.672A3 3 0 0 0 7.414 9.5l.775-.776a2 2 0 0 1-.896-3.346L9.12 3.55a2 2 0 1 1 2.83 2.83l-.793.792c.112.42.155.855.128 1.287l1.372-1.372a3 3 0 1 0-4.243-4.243L6.586 4.672z" />
																</svg>
															</span>
															<span>Sao chép đường dẫn</span>
														</button>
														<button class= "chitiet-container-copy-thongtin">
															<span class="chitiet-container-boder">
																<svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" fill="currentColor" class="bi bi-clipboard2" viewBox="0 0 16 16">
																	<path d="M3.5 2a.5.5 0 0 0-.5.5v12a.5.5 0 0 0 .5.5h9a.5.5 0 0 0 .5-.5v-12a.5.5 0 0 0-.5-.5H12a.5.5 0 0 1 0-1h.5A1.5 1.5 0 0 1 14 2.5v12a1.5 1.5 0 0 1-1.5 1.5h-9A1.5 1.5 0 0 1 2 14.5v-12A1.5 1.5 0 0 1 3.5 1H4a.5.5 0 0 1 0 1h-.5Z" />
																	<path d="M10 .5a.5.5 0 0 0-.5-.5h-3a.5.5 0 0 0-.5.5.5.5 0 0 1-.5.5.5.5 0 0 0-.5.5V2a.5.5 0 0 0 .5.5h5A.5.5 0 0 0 11 2v-.5a.5.5 0 0 0-.5-.5.5.5 0 0 1-.5-.5Z" />
																</svg>
															</span>
															<span>Sao chép thông tin</span>
														</button>
													</div>
												</div>
												<div class="tinhtrang-content l-3 m-12 c-12">
													<div class = "header__nav-type">
														<img src="<c:url value = "assets/img/thongso.svg"/>" alt="" class="header__nav-tab-img">
														<div class="header__nav-tab-vac">
															<span>Thông số kĩ thuật</span>
														</div>
													</div>
													<table class = "tinhtrang-table__cauhinh">
														<tbody>
														<c:forEach var = "itemconfig" items = "${product_configuration}">
																<tr class = "tr-1" > 
																	<td class = "title_charactestic">Độ phân giải</td>
																	<td class = "content_charactestic">1290 x 2796 pixels</td>
																</tr>
																<tr class = "tr-0">
																	<td class = "title_charactestic">Màn hình rộng</td>
																	<td class = "content_charactestic">${itemconfig.screen}</td>
																</tr>
																<tr class = "tr-1"> 
																	<td class = "title_charactestic">Độ phân giải camera sau</td>
																	<td class = "content_charactestic">${itemconfig.rear_camera}</td>
																</tr>
																<tr class = "tr-0">
																	<td class = "title_charactestic">Độ phân giải camera trước</td>
																	<td class = "content_charactestic">${itemconfig.front_camera}</td>
																</tr>
																<tr class = "tr-1"> 
																	<td class = "title_charactestic">Bộ nhớ trong</td>
																	<td class = "content_charactestic">${itemconfig.ram}</td>
																</tr>
																<tr class = "tr-0">
																	<td class = "title_charactestic">Dung lượng pin</td>
																	<td class = "content_charactestic">${itemconfig.pin}</td>
																</tr>
																<tr class = "tr-0">
																	<td class = "title_charactestic">Sim</td>
																	<td class = "content_charactestic">${itemconfig.sim}</td>
																</tr>
															</c:forEach>	
															</tbody>
															</table>
															<div class= "tinhtrang-button__chitiet">
																<a href="" class="tinhtrang-button__chitiet-link">
																	Xem cấu hình chi tiết
																</a>
															</div>
															</div>
														</div>
													</div>
												</div>
									</div>
								</div>
							</div>
							<div class="grid wide">
								<div class="comment_content">
									<!-- Comment -->
									<div class="l-9 c-12 comment_chitiet_content">
									<span id="message"></span>
										<div class="comment_heading">
											<div class="comment_heading-name">
												Đánh giá 
											</div>
										</div> 
										<div class="comment_form_content ">
												<div class="row l-3 c-3">
													<div class="row_cmt--1">
														<p class="row_cmt--col">
															
															<span>
																/5
															</span>
														</p>
														<div class="comment_1--start">
															<img src=" <c:url value = "/assets/img/Comment/star-fill.png"/>" alt="">
															&nbsp;
															<img src="<c:url value = "/assets/img/Comment/star-fill.png"/>" alt="">
															&nbsp;
															<img src="<c:url value = "/assets/img/Comment/star-fill.png"/>" alt="">
															&nbsp;
															<img src="<c:url value = "/assets/img/Comment/star-fill.png"/>" alt="">
															&nbsp;
															<img src="<c:url value = "/assets/img/Comment/star-fill.png"/>" alt="">
														</div>
														<p class="cmt_count">
															đánh giá
														</p>
													</div>
												</div>
												<div class="l-6 c-6">
													<div class="row_cmt--2">
														<div class="row_cmt--rating">
														<c:forEach var = "a" items = "[1,2,3,4,5]">
																	<div class="phantram_sao">
																		<div class="phantram_sao--p">
																				<img src="<c:url value = "/assets/img/Comment/star-fill.png"/>" alt="" class="lazy-loaded">
																		</div>	
																	</div>
														</c:forEach>	
																<div class="row_cmt--progess1">
																	<div class="progress">
																		<div class="progress-bar" style="width:'.round($pt,1).'%">

																		</div>
																	</div>
																</div>
																<p class="phantram-text">
																'.round($pt,1).'%
																</p>
															<div class="phantram_sao">
																<div class="phantram_sao--p">
																	<img src="<c:url value = "/assets/img/Comment/star-fill.png"/>" alt="" class="lazy-loaded">
																</div>
															</div>
															<div class="phantram_sao">
																<div class="phantram_sao--p">
																	<img src="<c:url value = "/assets/img/Comment/star-fill.png"/>" alt="" class="lazy-loaded">
																</div>
															</div>
															<div class="phantram_sao">
																<div class="phantram_sao--p">
																	<img src="<c:url value = "/assets/img/Comment/star-fill.png"/>" alt="" class="lazy-loaded">
																</div>
															</div>
															<div class="phantram_sao">
																<div class="phantram_sao--p">
																	<img src="<c:url value = "/assets/img/Comment/star-fill.png"/>" alt="" class="lazy-loaded">
																</div>
															</div>
															<div class="phantram_sao">
																<div class="phantram_sao--p">
																	<img src="<c:url value = "/assets/img/Comment/star-fill.png"/>" alt="" class="lazy-loaded">
																</div>
															</div>
															<div class="row_cmt--progess1">
																<div class="progress">
																	<div class="progress-bar" style="width:0%">

																	</div>
																</div>
															</div>
															<p class="phantram-text">
															0%
															</p>
															
														</div>

														<!-- 2 -->
														<div class="row_cmt--rating">
														
																<div class="phantram_sao">
																	<div class="phantram_sao--p">
																		<img src="../assets/img/Comment/star-fill.png" alt="" class="lazy-loaded">
																	</div>
																</div>
																
															<div class="phantram_sao">
																<div class="phantram_sao--p">
																	<img src="../assets/img/Comment/star-empty.png" alt="" class="lazy-loaded">
																</div>
															</div>
															
															<div class="row_cmt--progess1">
																<div class="progress">
																	<div class="progress-bar" style="width:'.round($pt,1).'%">

																	</div>
																</div>
															</div>
															<p class="phantram-text">
															'.round($pt,1).'%
															</p>
															
															<div class="phantram_sao">
																<div class="phantram_sao--p">
																	<img src="../assets/img/Comment/star-fill.png" alt="" class="lazy-loaded">
																</div>
															</div>
															<div class="phantram_sao">
																<div class="phantram_sao--p">
																	<img src="../assets/img/Comment/star-fill.png" alt="" class="lazy-loaded">
																</div>
															</div>
															<div class="phantram_sao">
																<div class="phantram_sao--p">
																	<img src="../assets/img/Comment/star-fill.png" alt="" class="lazy-loaded">
																</div>
															</div>
															<div class="phantram_sao">
																<div class="phantram_sao--p">
																	<img src="../assets/img/Comment/star-fill.png" alt="" class="lazy-loaded">
																</div>
															</div>
															<div class="phantram_sao">
																<div class="phantram_sao--p">
																	<img src="../assets/img/Comment/star-empty.png" alt="" class="lazy-loaded">
																</div>
															</div>
															<div class="row_cmt--progess1">
																<div class="progress">
																	<div class="progress-bar" style="width:0%">

																	</div>
																</div>
															</div>
															<p class="phantram-text">
															0%
															</p>
															
														?>
														</div>

														<div class="row_cmt--rating">
														
																<div class="phantram_sao">
																	<div class="phantram_sao--p">
																		<img src="../assets/img/Comment/star-fill.png" alt="" class="lazy-loaded">
																	</div>
																</div>
																
																<div class="phantram_sao">
																<div class="phantram_sao--p">
																	<img src="../assets/img/Comment/star-empty.png" alt="" class="lazy-loaded">
																</div>
															</div>
																
															<div class="row_cmt--progess1">
																<div class="progress">
																	<div class="progress-bar" style="width:'.round($pt,1).'%">

																	</div>
																</div>
															</div>
															<p class="phantram-text">
															'.round($pt,1).'%
															</p>
															
															<div class="phantram_sao">
																<div class="phantram_sao--p">
																	<img src="../assets/img/Comment/star-fill.png" alt="" class="lazy-loaded">
																</div>
															</div>
															<div class="phantram_sao">
																<div class="phantram_sao--p">
																	<img src="../assets/img/Comment/star-fill.png" alt="" class="lazy-loaded">
																</div>
															</div>
															<div class="phantram_sao">
																<div class="phantram_sao--p">
																	<img src="../assets/img/Comment/star-fill.png" alt="" class="lazy-loaded">
																</div>
															</div>
															<div class="phantram_sao">
																<div class="phantram_sao--p">
																	<img src="../assets/img/Comment/star-empty.png" alt="" class="lazy-loaded">
																</div>
															</div>
															<div class="phantram_sao">
																<div class="phantram_sao--p">
																	<img src="../assets/img/Comment/star-empty.png" alt="" class="lazy-loaded">
																</div>
															</div>
															<div class="row_cmt--progess1">
																<div class="progress">
																	<div class="progress-bar" style="width:0%">

																	</div>
																</div>
															</div>
															<p class="phantram-text">
															0%
															</p>
															
														</div>

														<div class="row_cmt--rating">
														
																<div class="phantram_sao">
																	<div class="phantram_sao--p">
																		<img src="../assets/img/Comment/star-fill.png" alt="" class="lazy-loaded">
																	</div>
																</div>
																
															
																<div class="phantram_sao">
																<div class="phantram_sao--p">
																	<img src="../assets/img/Comment/star-empty.png" alt="" class="lazy-loaded">
																</div>
															</div>
																
															
															<div class="row_cmt--progess1">
																<div class="progress">
																	<div class="progress-bar" style="width:'.round($pt,1).'%">

																	</div>
																</div>
															</div>
															<p class="phantram-text">
															'.round($pt,1).'%
															</p>
															
															<div class="phantram_sao">
																<div class="phantram_sao--p">
																	<img src="../assets/img/Comment/star-fill.png" alt="" class="lazy-loaded">
																</div>
															</div>
															<div class="phantram_sao">
																<div class="phantram_sao--p">
																	<img src="../assets/img/Comment/star-fill.png" alt="" class="lazy-loaded">
																</div>
															</div>
															<div class="phantram_sao">
																<div class="phantram_sao--p">
																	<img src="../assets/img/Comment/star-empty.png" alt="" class="lazy-loaded">
																</div>
															</div>
															<div class="phantram_sao">
																<div class="phantram_sao--p">
																	<img src="../assets/img/Comment/star-empty.png" alt="" class="lazy-loaded">
																</div>
															</div>
															<div class="phantram_sao">
																<div class="phantram_sao--p">
																	<img src="../assets/img/Comment/star-empty.png" alt="" class="lazy-loaded">
																</div>
															</div>
															<div class="row_cmt--progess1">
																<div class="progress">
																	<div class="progress-bar" style="width:0%">

																	</div>
																</div>
															</div>
															<p class="phantram-text">
															0%
															</p>
															
														</div>

														<div class="row_cmt--rating">
														
																<div class="phantram_sao">
																	<div class="phantram_sao--p">
																		<img src="../assets/img/Comment/star-fill.png" alt="" class="lazy-loaded">
																	</div>
																</div>
																
															
															
																<div class="phantram_sao">
																<div class="phantram_sao--p">
																	<img src="../assets/img/Comment/star-empty.png" alt="" class="lazy-loaded">
																</div>
															</div>
																
														
															<div class="row_cmt--progess1">
																<div class="progress">
																	<div class="progress-bar" style="width:'.round($pt,1).'%">

																	</div>
																</div>
															</div>
															<p class="phantram-text">
															'.round($pt,1).'%
															</p>
															
													
															
															<div class="phantram_sao">
																<div class="phantram_sao--p">
																	<img src="../assets/img/Comment/star-fill.png" alt="" class="lazy-loaded">
																</div>
															</div>
															<div class="phantram_sao">
																<div class="phantram_sao--p">
																	<img src="../assets/img/Comment/star-empty.png" alt="" class="lazy-loaded">
																</div>
															</div>
															<div class="phantram_sao">
																<div class="phantram_sao--p">
																	<img src="../assets/img/Comment/star-empty.png" alt="" class="lazy-loaded">
																</div>
															</div>
															<div class="phantram_sao">
																<div class="phantram_sao--p">
																	<img src="../assets/img/Comment/star-empty.png" alt="" class="lazy-loaded">
																</div>
															</div>
															<div class="phantram_sao">
																<div class="phantram_sao--p">
																	<img src="../assets/img/Comment/star-empty.png" alt="" class="lazy-loaded">
																</div>
															</div>
															<div class="row_cmt--progess1">
																<div class="progress">
																	<div class="progress-bar" style="width:0%">

																	</div>
																</div>
															</div>
															<p class="phantram-text">
															0%
															</p>
															
														</div>
													</div>
												</div>
												<div class="row l-3 c-3">
													<div class="cmt_row--3">
														<p class="cmt_row--3-p">
															<a href="" class = "cmt_row--3-p__link">
																<span class="cmt_row--text-1">
																	Viết đánh giá
																</span>
																<span class="cmt_row--text-2">
																	Đóng đánh giá
																</span>
																<!-- <span class="cmt_row--text">
																	Đóng bình luận
																</span> -->
															</a>
														</p>
													</div>
												</div>
												<div class="row l-3 c-3">
													<div class="cmt_row--3">
														<p class="cmt_row--3-p">
															<a href="../../../../../../WebDiDong_PTPMCN/DiThoaiThongMinh-PTPMCN/authen/login" class = "cmt_row--3-p__link">
																<span class="cmt_row--text">
																	Viết đánh giá
																</span>
															</a>
														</p>
													</div>
												</div>
												
										</div>
										<form method="POST" class="comment-form" id="commentForm">
											<div class="comments-content__container">
												<div class="comment-form">
													<div class="comment-form__content">
														<div class="comment-form__heading">
															<div class="comment-form__heading-text">
																Đánh giá của bạn về sản phẩm:
															</div>
														</div>
														<div id="rating">
															<input type="radio" id="star5" name="rating" value="5" />
															<label class = "full" for="star5" title="Awesome - 5 stars"></label>
														
															<input type="radio" id="star4" name="rating" value="4" />
															<label class = "full" for="star4" title="Pretty good - 4 stars"></label>
														
															<input type="radio" id="star3" name="rating" value="3" />
															<label class = "full" for="star3" title="Meh - 3 stars"></label>
														
															<input type="radio" id="star2" name="rating" value="2" />
															<label class = "full" for="star2" title="Kinda bad - 2 stars"></label>
														
															<input type="radio" id="star1" name="rating" value="1" />
															<label class = "full" for="star1" title="Sucks big time - 1 star"></label>
														</div>
													</div>
													<div class="comment-form__form-content">
														<div class="l-6 m-6 c-12">
															<textarea class ="form-control" placeholder="Nội dung đánh giá của bạn" name="comment" id="comment"></textarea>
														</div>
														<div class="l-6 m-6 c-12">
															<div class="row-l-6__content">
																<div class="row_form-control-1">
																	<input type="text" class ="form-control-1 row_form-control-1__input" name="fullname" id="fullname" placeholder="Họ và tên" value="<?php echo $fullname?>">
																</div>
																<div class="row_form-control-2">
																	<input type="submit" class = "btn_submit-danhgia" name="submit" id="submit" value="Gửi đánh giá">
																</div>
															</div>
														</div>
													</div>
												</div>
											</div>
										<input type="hidden" name="commentId" id="commentId" value="0" />
									</form>
										<!-- Code comment tại đây -->
										<div class="comment_chitiet--hienthi" id="showComments"></div>
										<script src = "../Javascript/comment.js"></script>
									</div>
								</div>
							</div>

<!-- Model chi tiết sản phẩm -->


<div class="modal-chitiet m-12 c-12">
	<div class="model-container__chitiet m-10">
		<div class="model-heading">
			<span class="model-heading__text">
				THÔNG SỐ KỸ THUẬT CHI TIẾT ${itemproduct.title}
			</span>
			<button class="close-model-chitiet">×</button>
		</div>
		<div class="model-container__content">
			<table class="model-content-detail">
				<tbody>
				<c:forEach var = "itemconfig2" items = "${product_configuration}">
					<tr>
						<td class="group_field">Kiểu màn hình</td>
					</tr>
					<tr>
						<td class="model-content-detail__title">Màn hình rộng</td>
						<td class="model-content-detail__charactestic">${itemconfig2.screen}</td>
					</tr>
					<tr >
						<td class="model-content-detail__title">Hệ điều hành</td>
						<td class="model-content-detail__charactestic">${itemconfig2.operating_system}</td>
					</tr>
					<tr>
						<td class="group_field">Camera trước</td>
					</tr>
					<tr >
						<td class="model-content-detail__title">Độ phân giải camera trước</td>
						<td class="model-content-detail__charactestic">${itemconfig2.front_camera}</td>
					</tr>
					<tr>
						<td class="group_field">Camera sau</td>
					</tr>
					<tr >
						<td class="model-content-detail__title">Độ phân giải camera sau</td>
						<td class="model-content-detail__charactestic">${itemconfig2.rear_camera}</td>
					</tr>
					<tr>
						<td class="group_field">Hệ điều hành & CPU</td>
					</tr>
					<tr>
						<td class="model-content-detail__title">Chip xử lý</td>
						<td class="model-content-detail__charactestic">${itemconfig2.chip}</td>
					</tr>
					<tr>
						<td class="group_field">Bộ nhớ và lưu trữ</td>
					</tr>
					<tr >
						<td class="model-content-detail__title">RAM</td>
						<td class="model-content-detail__charactestic">${itemconfig2.ram}</td>
					</tr>
					<tr>
						<td class="group_field">Kết nối</td>
					</tr>
					<tr >
						<td class="model-content-detail__title">Sim</td>
						<td class="model-content-detail__charactestic">${itemconfig2.sim}</td>
					</tr>
					<tr>
						<td class="group_field">Pin & Sạc</td>
					</tr>
					<tr >
						<td class="model-content-detail__title">Pin</td>
						<td class="model-content-detail__charactestic">${itemconfig2.pin}</td>
					</tr>
					</c:forEach>
						<tr>
							<td class="group_field">Thông tin chung</td>
						</tr>
						<tr>
							<td class="model-content-detail__title">Thời điểm ra mắt</td>
							<td class="model-content-detail__charactestic">'.$ttchung->thoidiemramat.'</td>
						</tr>
						<tr>
							<td class="group_field">Tiện ích</td>
						</tr>
						<tr>
							<td class="model-content-detail__title">Bảo mật nâng cao</td>
							<td class="model-content-detail__charactestic">'.$tienich->baomatnangcao.'</td>
						</tr>
						<tr>
							<td class="model-content-detail__title">Ghi âm</td>
							<td class="model-content-detail__charactestic">'.$tienich->ghiam.'</td>
						</tr>
						<tr>
							<td class="group_field">Thông tin sản phẩm</td>
						</tr>
						<tr>
							<td class="model-content-detail__title">Thương hiệu</td>
							<td class="model-content-detail__charactestic">'.$ttsp->thuonghieu.'</td>
						</tr>
				</tbody>
			</table>
		</div>
	</div>
</div>
</c:forEach>
<script type="text/javascript">
	const btnclodeModel = document.querySelector('.close-model-chitiet');
	const btnHienModel = document.querySelector('.tinhtrang-button__chitiet-link');
	const model = document.querySelector('.modal-chitiet');
	function showModelChiTiet() {
	    event.preventDefault();
	    model.classList.add('open')
	}
	
	function closeModelChiTiet() {
	    model.classList.remove('open');
	}
	
	btnHienModel.addEventListener('click',showModelChiTiet);
	btnclodeModel.addEventListener('click',closeModelChiTiet);

</script>
<!--<script type="text/javascript" src = "<c:url value = "Javascript/chitietsanpham.js"/>"></script> -->
</body>
</html>