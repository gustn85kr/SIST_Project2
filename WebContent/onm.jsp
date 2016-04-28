<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet"
	href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">

<link rel="stylesheet"
	href="assets/plugins/bootstrap/css/bootstrap.min.css">
<link rel="stylesheet" href="assets/css/one.style.css">
<link rel="stylesheet" href="assets/dist/dragula.css" type="text/css">
<link rel="shortcut icon" href="favicon.ico">

<link rel="stylesheet" href="http://www.w3schools.com/lib/w3.css">
<link rel="stylesheet"
	href="http://www.w3schools.com/lib/w3-theme-teal.css">
<link rel="stylesheet"
	href="http://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.3.0/css/font-awesome.min.css">
<%-- css --%>

<link rel='stylesheet' href='calendar/jquery-ui.min.css' />
<link href="calendar/fullcalendar.css" rel="stylesheet" />
<link href="calendar/fullcalendar.print.css" rel='stylesheet'
	media='print' />
<!-- <link rel="stylesheet" href="http://code.jquery.com/ui/1.9.2/themes/base/jquery-ui.css" /> -->
<link rel="stylesheet" href="assets/css/jquery-ui.css" />
<script src="assets/plugins/jquery/jquery.min.js"></script>
<script src="assets/plugins/bootstrap/js/bootstrap.min.js"></script>
<script src="calendar/moment.min.js"></script>
<script src="calendar/fullcalendar.min.js"></script>

<script type="text/javascript"
	src="http://code.jquery.com/ui/1.9.2/jquery-ui.js"></script>
<script type="text/javascript"
	src="http://www.pureexample.com/js/lib/jquery.ui.touch-punch.min.js"></script>

<script src="assets/plugins/jquery/jquery-migrate.min.js"></script>
<script src='//cdn.tinymce.com/4/tinymce.min.js'></script>
<script type="text/javascript"
	src="//apis.daum.net/maps/maps3.js?apikey=a41bbfd5db3d2e44b63d4711d5c8d15f&libraries=services"></script>


<style type="text/css">
body {
	font-family: 'Malgun Gothic';
	padding: 20px;
}

.bar {
	width: 100px;
	height: 20px;
	margin: 2px;
	border: 1px solid black;
	background-color: lightgreen;
	text-align: center;
	float: left;
	margin: 2px;
	padding: 2px;
	cursor: pointer;
	border-radius: 3px;
}

.modal-header, h4, .close {
	background-color: #5cb85c;
	color: white !important;
	text-align: center;
	font-size: 25px;
	min-height: auto;
	min-width: auto;
}

.modal-footer {
	background-color: #f9f9f9;
	min-height: auto;
	min-width: auto;
}

#PwdChageModal {
	left: -100px;
}

#planSearchModal .modal-content {
	width: 1350px;
	height: 700px;
	min-height: auto;
	min-width: auto;
}

#planSearchModal {
	position: fixed;
	left: -800px;
	min-height: auto;
	min-width: auto;
}

.list {
	background-color: #FFFFFF;
	border: 1px solid;
	border-radius: 2em;
	margin: 5px;
	padding: 5px;
	font-size: 20px;
	word-break: break-all;
}

#timetable {
	height: 800px;
	border: 2px solid;
	border-bottom-color: #fff;
	border-top-color: #fff;
	border-right-color: #fff;
	border-left-color: #D7CECC;
}

#timetable {
	height: 800px;
	border: 2px solid;
	border-bottom-color: #fff;
	border-top-color: #fff;
	border-right-color: #fff;
	border-left-color: #D7CECC;
}

>>>>>>>
refs /remotes/origin/master
.items .ui-selected {
	background: red;
	color: white;
	font-weight: bold;
}

.items {
	list-style-type: none;
	margin: 0;
	padding: 10px;
}

.items li {
	margin: 2px;
	padding: 2px;
	cursor: pointer;
	border: #fff;
	border-bottom: 2px solid #FFE72C;
	border-radius: 1px;
	width: 85%;
	margin-bottom: 15px;
}

.weekday {
	width: 300px;
	padding: 5px;
	border-bottom: 2px solid #EDE1E7;
	border-top: 2px solid #EDE1E7;
	background-color: #fff;
	margin: 20px;
}

.listTitleBtn, .listTitleCancel {
	float: left;
	background: #fff;
	border: #fff;
}

.listTitleBtn:hover, .listTitleBtn:active {
	border-bottom: 2px solid #2694e8;
}

.listTitleBtn, .listTitleCancel {
	float: left;
	background: #fff;
	border: #fff;
}

.listTitleBtn:hover, .listTitleBtn:active {
	border-bottom: 2px solid #2694e8;
}

.listTitleCancel:hover, .listTitleCancel:active {
	border-bottom: 2px solid #2694e8;
}

.cardInsert.btn-primary:hover, .cardInsert.btn-primary:active {
	border-bottom: 2px solid #2694e8;
}

.cardCancel.btn-primary:hover, .cardCancel.btn-primary:active {
	border-bottom: 2px solid #2694e8;
}

.cardInsert.btn-primary, .cardCancel.btn-primary {
	float: right;
	background: #fff;
	color: black;
	border: #fff;
}

.availablelist {
	background-color: orange;
	display: inline;
}

#draggablePanelList .panel-heading {
	cursor: move;
}

#calendar_attr {
	margin: 40px 10px;
	padding: 0;
	font-family: "Lucida Grande", Helvetica, Arial, Verdana, sans-serif;
	font-size: 14px;
}

#sist {
	height: 700px;
}

#cardList {
	
}

#calendar_container {
	position: relative;
	top: 700px;
	max-width: 700px;
	margin: 0 auto;
}

#sist {
	/* width:4500px; */
	height: 700px;
}

#cardList {
	
}

.listHeader {
	margin: 2px;
	font: bold;
	font-size: 25px;
}

.footText {
	width: 280px;
}

.footInput {
	width: 280px;
	text-align: center;
	margin: 5px;
	height: 50px;
}

.footInput textarea {
	width: 280px;
}

.cardInsert {
	margin-left: 100px;
}

.listHeader {
	margin: 5px;
	height: 20px;
}

.listHeader p {
	color: black;
	font-size: 20px;
	margin: 5px;
}

#calendar {
	
}

.footInput {
	width: 280px;
	text-align: center;
	margin: 5px;
	height: 50px;
}

.footInput textarea {
	width: 280px;
}

.cardInsert {
	margin-left: 100px;
}

.listHeader {
	margin: 5px;
	height: 20px;
}

.listHeader p {
	color: white;
	font-size: 20px;
	margin: 5px;
}

#calendar {
	
}

#cardList {
	
}

.listHeader {
	margin: 2px;
	font: bold;
	font-size: 25px;
}

.footText {
	width: 280px;
}

.footInput {
	width: 280px;
	text-align: center;
	margin: 5px;
	height: 50px;
}

.footInput textarea {
	width: 280px;
}

.cardInsert {
	margin-left: 100px;
}

.listHeader {
	margin: 5px;
	height: 20px;
}

.listHeader p {
	color: black;
	font-size: 20px;
	margin: 5px;
}

#calendar {
	
}

#cardDetail .modal-dialog {
	width: 75%
}

.fc-time {
	display: none;
}

#cardDetail {
	padding-right: 460px;
}

.modal-dialog {
	
}

.fc-time {
	display: none;
}

#blah {
	width: 110px;
	height: 80px;
	text-align: center;
}

.addListBtn {
	background-color: transparent;
	color: black;
	display: block;
	height: 100%;
	/*  line-height: 40px; */
	text-decoration: none;
	/* width: 100%; */
	/* text-align: left; */
	cursor: pointer;
}

.addListTxt {
	background-color: transparent;
	color: black;
	display: block;
	height: 40px;
	line-height: 40px;
	text-decoration: none;
	width: 100%;
	text-align: center;
	border: inherit;
	margin: 10px;
}

.btn-primary.footText {
	color: #fff;
	background-color: #fff;
	border-color: #fff;
	border: #fff;
	margin-bottom: 5px;
}

.btn.btn-sm.btn-default.listDelete {
	float: right;
	text-align: center;
	width: 30px;
	height: 30px;
	background: #fff;
	border: #fff;
	margin: 0px;
	padding: 0px;
}

#listtitleaddbtn {
	text-align: center;
}

#calendarunder {
	height: 30px;
	background: #D3F1B9;
	width: 100px;
}

#calendarunder img {
	margin-right: 10px;
}

.ui-progressbar-value {
	background: #BCF12A;
}
</style>

<script type="text/javascript">
	$(document)
			.ready(
					function() {
						$("#userDetail2").click(function() {
							var emailChage = $('#emailChage').val("");
							var nicknameChange = $('#nicknameChange').val("");
							var pwdChange = $('#pwdChange').val("");
							var newPwdChange = $('#newPwdChange').val("");
							var newPwdChange2 = $('#newPwdChange2').val("");
							$("#PwdChageModal").modal();
						});
						
						//검색창 모달
						$("#searchBtn").click(function(){
							$("#planSearchModal").modal();
						});
						
						
						$('#calendar').fullCalendar(
								{
									theme : true,
									header : {
										left : 'prev,next today',
										center : 'title',
										right : 'month'
									},
									defaultDate : '2016-04-02',
									selectable : true,
									selectHelper : true,
									eventDurationEditable : false, // 이벤트 resize disable

									/* 		select: function(start, end) {
												
												var eventData;
												if (title) {
													eventData = {
														title: title,
														start: start,
														end: end
													};
													
												}
												$('#calendar').fullCalendar('unselect');
											}, *///이벤트 추가함수
									editable : true,
									eventDrop : function(event, delta,
											revertFunc) {
										var startdate = event.start
												.format('YYYY/MM/DD');
										var enddate = event.end
												.format('YYYY/MM/DD');
										var cardno = event.id;
										alert(cardno);
										$.ajax({
											url : 'dateDrag.do',
											type : 'post',
											dataType : "json",
											data : {
												"startdate" : startdate,
												"enddate" : enddate,
												"no" : cardno
											},
											success : function(data) {
												alert("성공2")
											}
										});

									},
									eventClick: function(event) {
										//ev.preventDefault();
									    var target = "detail.do?no=";
									    var cdno = 'card'+event.id;
									    target= target+cdno.trim();
									    alert(target);
										$("#cardDetail .modal-dialog").load(target, function() {
											
												$('#sdate').datepicker({ dateFormat: 'yy/mm/dd'});
											    $('#sdate').datepicker("option", "maxDate", $("#edate").val());
											    $('#sdate').datepicker("option", "onClose", function ( selectedDate ) {
											        $("#edate").datepicker( "option", "minDate", selectedDate );
											    });
											    $('#edate').datepicker({ dateFormat: 'yy/mm/dd'});
											    $('#edate').datepicker("option", "minDate", $("#sdate").val());
											    $('#edate').datepicker("option", "onClose", function ( selectedDate ) {
											        $("#sdate").datepicker( "option", "maxDate", selectedDate );
											    });
											    
											    //여기부터 지도
											    $("#txtAddress").keydown(function(e) {
								                      if (e.keyCode == 13) {
								                    	  $("#modalMap").css("display","block");
								                     		/* map.relayout(); */
								                       var searchPlace = $(this).val();   
								                    	// 마커를 클릭하면 장소명을 표출할 인포윈도우 입니다
								                    	
								                    	  var infowindow = new daum.maps.InfoWindow({zIndex:1});

								                    	  var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
								                    	      mapOption = {
								                    	          center: new daum.maps.LatLng(37.566826, 126.9786567), // 지도의 중심좌표
								                    	          level: 1 // 지도의 확대 레벨
								                    	      };  

								                    	  // 지도를 생성합니다    
								                    	  var map = new daum.maps.Map(mapContainer, mapOption); 

								                    	  // 장소 검색 객체를 생성합니다
								                    	  var ps = new daum.maps.services.Places(); 

								                    	  // 키워드로 장소를 검색합니다
								                    	  ps.keywordSearch(searchPlace, placesSearchCB); 

								                    	  // 키워드 검색 완료 시 호출되는 콜백함수 입니다
								                    	  function placesSearchCB (status, data, pagination) {
								                    	      if (status === daum.maps.services.Status.OK) {

								                    	          // 검색된 장소 위치를 기준으로 지도 범위를 재설정하기위해
								                    	          // LatLngBounds 객체에 좌표를 추가합니다
								                    	          var bounds = new daum.maps.LatLngBounds();

								                    	          for (var i=0; i<data.places.length; i++) {
								                    	              displayMarker(data.places[i]);    
								                    	              bounds.extend(new daum.maps.LatLng(data.places[i].latitude, data.places[i].longitude));
								                    	          }       

								                    	          // 검색된 장소 위치를 기준으로 지도 범위를 재설정합니다
								                    	          map.setBounds(bounds);
								                    	      } 
								                    	  }

								                    	  // 지도에 마커를 표시하는 함수입니다
								                    	  function displayMarker(place) {
								                    	      
								                    	      // 마커를 생성하고 지도에 표시합니다
								                    	      var marker = new daum.maps.Marker({
								                    	          map: map,
								                    	          position: new daum.maps.LatLng(place.latitude, place.longitude) 
								                    	      });

								                    	      // 마커에 클릭이벤트를 등록합니다
								                    	      daum.maps.event.addListener(marker, 'click', function() {
								                    	          // 마커를 클릭하면 장소명이 인포윈도우에 표출됩니다
								                    	          infowindow.setContent('<div style="padding:5px;font-size:12px;">' + place.title + '</div>');
								                    	          infowindow.open(map, marker);
								                    	      });
								                    	  }

								                     		
								                      }
								                  });  //지도 끝
											    
									    });
										
										$("#cardDetail").modal("show"); 
								  	   /*이벤트 클릭시 발생하는 함수  alert("이벤트 클릭시 발생하는 함수");*/
								  	   
								  	},
									eventLimit : true, // allow "more" link when too many events
									events : [

									]
								});
						calInit();
						function calInit() {
							<c:forEach var="vo" items="${clist}">
							var events = new Array();
							event = new Object();
							event.title = "${vo.title}";
							event.start = "${vo.startdate}";
							event.end = "${vo.enddate}";
							event.id = "${vo.no}";
							var labelC = "${vo.label}";

							if (labelC == "") {
								event.color = "green";
							} else {
								event.color = labelC;
							}
							event.allDay = false;
							events.push(event);

							$('#calendar').fullCalendar('addEventSource',
									events);

							</c:forEach>

						}
						$(this)
								.on(
										"click",
										".list",
										function() {
											//ev.preventDefault();
											var target = "detail.do?no=";
											target = target
													+ $(this).attr("id");
											alert(target);
											$("#cardDetail .modal-dialog")
													.load(
															target,
															function() {

																$('#sdate')
																		.datepicker(
																				{
																					dateFormat : 'yy/mm/dd'
																				});
																$('#sdate')
																		.datepicker(
																				"option",
																				"maxDate",
																				$(
																						"#edate")
																						.val());
																$('#sdate')
																		.datepicker(
																				"option",
																				"onClose",
																				function(
																						selectedDate) {
																					$(
																							"#edate")
																							.datepicker(
																									"option",
																									"minDate",
																									selectedDate);
																				});
																$('#edate')
																		.datepicker(
																				{
																					dateFormat : 'yy/mm/dd'
																				});
																$('#edate')
																		.datepicker(
																				"option",
																				"minDate",
																				$(
																						"#sdate")
																						.val());
																$('#edate')
																		.datepicker(
																				"option",
																				"onClose",
																				function(
																						selectedDate) {
																					$(
																							"#sdate")
																							.datepicker(
																									"option",
																									"maxDate",
																									selectedDate);
																				});

																//여기부터 지도
																$("#txtAddress")
																		.keydown(
																				function(
																						e) {
																					if (e.keyCode == 13) {
																						$(
																								"#modalMap")
																								.css(
																										"display",
																										"block");
																						/* map.relayout(); */
																						var searchPlace = $(
																								this)
																								.val();
																						// 마커를 클릭하면 장소명을 표출할 인포윈도우 입니다

																						var infowindow = new daum.maps.InfoWindow(
																								{
																									zIndex : 1
																								});
																						var mapContainer = document
																								.getElementById('map'), // 지도를 표시할 div 
																						mapOption = {
																							center : new daum.maps.LatLng(
																									37.566826,
																									126.9786567), // 지도의 중심좌표
																							level : 1
																						// 지도의 확대 레벨
																						};
																						// 지도를 생성합니다    
																						var map = new daum.maps.Map(
																								mapContainer,
																								mapOption);
																						// 장소 검색 객체를 생성합니다
																						var ps = new daum.maps.services.Places();
																						// 키워드로 장소를 검색합니다
																						ps
																								.keywordSearch(
																										searchPlace,
																										placesSearchCB);
																						// 키워드 검색 완료 시 호출되는 콜백함수 입니다
																						function placesSearchCB(
																								status,
																								data,
																								pagination) {
																							if (status === daum.maps.services.Status.OK) {
																								// 검색된 장소 위치를 기준으로 지도 범위를 재설정하기위해
																								// LatLngBounds 객체에 좌표를 추가합니다
																								var bounds = new daum.maps.LatLngBounds();
																								for (var i = 0; i < data.places.length; i++) {
																									displayMarker(data.places[i]);
																									bounds
																											.extend(new daum.maps.LatLng(
																													data.places[i].latitude,
																													data.places[i].longitude));
																								}
																								// 검색된 장소 위치를 기준으로 지도 범위를 재설정합니다
																								map
																										.setBounds(bounds);
																							}
																						}
																						// 지도에 마커를 표시하는 함수입니다
																						function displayMarker(
																								place) {

																							// 마커를 생성하고 지도에 표시합니다
																							var marker = new daum.maps.Marker(
																									{
																										map : map,
																										position : new daum.maps.LatLng(
																												place.latitude,
																												place.longitude)
																									});
																							// 마커에 클릭이벤트를 등록합니다
																							daum.maps.event
																									.addListener(
																											marker,
																											'click',
																											function() {
																												// 마커를 클릭하면 장소명이 인포윈도우에 표출됩니다
																												infowindow
																														.setContent('<div style="padding:5px;font-size:12px;">'
																																+ place.title
																																+ '</div>');
																												infowindow
																														.open(
																																map,
																																marker);
																											});
																						}

																					}
																				}); //지도 끝

															});
											$("#cardDetail").modal("show");
											/* $('#cardDetail').modal({
												remote : 'detail.do'
											}); */
										});

						$("#timetable .items")
								.sortable(
										{
											connectWith : "ul",
											update : function(e, ui) { //드롭이 시작한곳에서 한번 실행된후 발생한곳에서 또한번실행
												/* 	 var test1= $(this).html();
												   alert(test1); */

												var listno = $(this).parents(
														'.weekday').attr('id');
												var draghtml = $(this).parents(
														'.weekday').html();
												var ehtml = "<div class='weekday col-md-1' id="+listno+">"
														+ draghtml + "</div>";

												$.ajax({
													url : 'dragEvent.do',
													type : 'post',
													dataType : "json",
													data : {
														"listno" : listno,
														"html" : ehtml
													},
													success : function(data) {

													}
												});
											}
										});
						$("ul[id^='available']").draggable({
							revert : true, // immediately snap back to original position
							revertDuration : 0
						});
						$(this).on(
								"click",
								".footText",
								function() {
									$('.footText').show();
									$(this).css('display', 'none');
									$('.footInput').hide();
									$(this).siblings(".footInput").css(
											'display', 'inline');
									$(this).siblings('.footInput').find(
											'textarea').focus();
								});
						$(this)
								.on(
										"click",
										".cardInsert",
										function() {
											var text = $(this).siblings(
													'textarea').val();
											var cardno = "tmpcard";
											$(this).siblings('textarea')
													.val("");

											$(this).parents(".listFoot")
													.siblings('.items').append(
															"<li class='list' id="+cardno+">"
																	+ text
																	+ "</li>");
											$(this).parent(".footInput").css(
													'display', 'none');
											$(this).parent(".footInput")
													.siblings('.footText')
													.css('display', 'inline');

											$
													.ajax({
														url : 'createCard.do',
														type : 'post',
														dataType : "json",
														data : {
															"title" : text
														},
														success : function(data) {
															cardno = data;
															alert(cardno);
															$('#tmpcard')
																	.attr(
																			'id',
																			"card"
																					+ cardno);
															var listno = $(
																	"#card"
																			+ cardno)
																	.parents(
																			'.weekday')
																	.attr('id');
															var draghtml = $(
																	"#card"
																			+ cardno)
																	.parents(
																			'.weekday')
																	.html();
															var ehtml = "<div class='weekday col-md-1' id="+listno+">"
																	+ draghtml
																	+ "</div>";
															alert
															$
																	.ajax({
																		url : 'dragEvent.do',
																		type : 'post',
																		dataType : "json",
																		data : {
																			"listno" : listno,
																			"html" : ehtml
																		},
																		success : function(
																				data) {

																		}
																	});

														}
													});

										});
						$(this).on("click", ".cardCancel", function() {

							$('.footText').show();
							$(this).parents('.footInput').hide();

						});
						$(this).on(
								"click",
								".addListBtn",
								function() {
									/*  var listTitle =""; */
									$(this).css('display', 'none');
									$(this).siblings('.addListPanel').show();
									$(this).siblings('.addListPanel').find(
											'.addListTxt').focus();

								});
						
						/* addListPanelCreation addListPanelCancel */
						$(this).on(
								"click",
								".listTitleCancel",
								function() {
									$(this).parent('.addListPanel').hide();
									$(this).parent('.addListPanel').siblings(
											'.addListBtn').show();
									$(this).siblings('.addListTxt').val("");

								});
						$(this)
								.on(
										"click",
										".listTitleBtn",
										function() {

											var listTitle = $(this).siblings(
													'.addListTxt').val();
											$(this).parent('.addListPanel')
													.parent('.weekday').hide();
											$
													.ajax({
														url : "getListNo.do",
														type : 'post',
														success : function(data) {
															listno = data;
															var tmpHtml = "<div class='weekday col-md-1' id=list"+listno+"><div class='listHeader'><p>"
																	+ listTitle
																	+ "<button type='button' class='btn btn-sm btn-default listDelete'> "
																	+ "<img src='calendar/images/deletelist.png'></button></p>"
																	+ "</div><ul class='items'></ul><div class = 'listFoot'> "
																	+ "<button class='btn-primary footText' id='listtitleaddbtn'><img src='calendar/images/plus-hover.png'></button><div class='footInput' style='display:none;'> "
																	+ " <textarea cols='30' rows='3'></textarea><input type='button' value='취소' class='cardCancel btn-primary'/>"
																	+ " <input type='button' value='추가' class='cardInsert btn-primary'/>  "
																	+ "</div></div></div> ";
															$('#timetable')
																	.append(
																			tmpHtml);

															$('#timetable')
																	.append(
																			"<div class='weekday col-md-1'><div class='addListBtn'><span><img src='calendar/images/createlist.png' ></span></div> "
																					+ "<div class='addListPanel' style='display:none;'><input name='name' class='addListTxt' type='text' placeholder='List Title'/> "
																					+ "<input type='button' value='추가' class='listTitleBtn' /> <input type='button' value='취소' class='listTitleCancel' />"
																					+ "</div><div>");
															$(
																	"#timetable .items")
																	.sortable(
																			{
																				connectWith : "ul"
																			});
															$
																	.ajax({
																		url : 'listAdd.do',
																		type : 'post',
																		dataType : "json",
																		data : {
																			"title" : listTitle,
																			"html" : tmpHtml,
																			"no" : listno
																		},
																		success : function(
																				data) {
																			/* alert(tmpHtml); */
																		}
																	});

															$(
																	"#timetable .items")
																	.sortable(
																			{
																				connectWith : "ul",
																				update : function(
																						e,
																						ui) { //드롭이 시작한곳에서 한번 실행된후 발생한곳에서 또한번실행
																					/* 	 var test1= $(this).html();
																					   alert(test1); */

																					var listno = $(
																							this)
																							.parents(
																									'.weekday')
																							.attr(
																									'id');
																					var draghtml = $(
																							this)
																							.parents(
																									'.weekday')
																							.html();
																					var ehtml = "<div class='weekday col-md-1' id="+listno+">"
																							+ draghtml
																							+ "</div>";

																					$
																							.ajax({
																								url : 'dragEvent.do',
																								type : 'post',
																								dataType : "json",
																								data : {
																									"listno" : listno,
																									"html" : ehtml
																								},
																								success : function(
																										data) {

																								}
																							});
																				}
																			});

														}
													});
										});
						$("#insertContent").tooltip();
						$(this)
								.on(
										"click",
										"#insertContent",
										function() {
											$(this).parent("#contentText")
													.siblings("#newTA")
													.css('display', 'inline');
											$(this).parent("#contentText")
													.siblings("#showContent")
													.css('display', 'none');
											$(this).css('display', 'none');

											tinymce
													.init({
														selector : '#mytextarea',
														height : 200,
														theme : 'modern',
														plugins : [
																'advlist autolink lists link image charmap print preview hr anchor pagebreak',
																'searchreplace wordcount visualblocks visualchars code fullscreen',
																'insertdatetime media nonbreaking save table contextmenu directionality',
																'emoticons template paste textcolor colorpicker textpattern imagetools' ],
														toolbar1 : 'insertfile undo redo | styleselect | bold italic | alignleft aligncenter alignright alignjustify | bullist numlist outdent indent | link image',
														toolbar2 : 'print preview media | forecolor backcolor emoticons',
														image_advtab : true,
														templates : [ {
															title : 'Test template 1',
															content : 'Test 1'
														} ],
														content_css : [
																'//fast.fonts.net/cssapi/e6dc9b99-64fe-4292-ad98-6974f93cd2a2.css',
																'//www.tinymce.com/css/codepen.min.css' ]

													});

										});
						$(this)
								.on(
										"click",
										"#contentInsert",
										function() {
											var cardno = $('#cardNo').val();
											var tmp = tinyMCE.activeEditor
													.getContent();
											$.ajax({
												url : 'contentUpdate.do',
												type : 'post',
												dataType : "json",
												data : {
													"content" : tmp,
													"no" : cardno
												},
												success : function(data) {
													/* alert("Yes"); */
												}
											});
											$(this).parent("#newTA").css(
													'display', "none");
											$(this).parent("#newTA").siblings(
													"#showContent").css(
													'display', "inline");
											$(this).parent("#newTA").siblings(
													"#showContent").empty();
											$(this).parent("#newTA").siblings(
													"#showContent").append(tmp);
											$(this).parent("#newTA").siblings(
													"#contentText").children(
													"#insertContent").css(
													'display', "inline");
										});
						$(this)
								.on(
										"click",
										"#contentCancel",
										function() {
											var tmp = tinyMCE.activeEditor
													.getContent();
											$(this).parent("#newTA").css(
													'display', "none");
											$(this).parent("#newTA").siblings(
													"#showContent").css(
													'display', "inline");
											$(this).parent("#newTA").siblings(
													"#contentText").children(
													"#insertContent").css(
													'display', "inline");
										});
						$(this).on("click", "#priorityBtn", function() {
							obj = document.getElementById('priorityDiv');
							if (obj.style.display == "none") {
								divHide();
								$("#priorityDiv").css('display', 'inline');
							} else {
								$("#priorityDiv").css('display', 'none');
							}
						});
						$(this)
								.on(
										"click",
										"#priorityInsert",
										function() {
											$("#priorityDiv").css('display',
													'none');
											var op1 = $(
													':radio[name="option1"]:checked')
													.val();
											alert(op1);
											var op2 = $(
													':radio[name="option2"]:checked')
													.val();
											alert(op2);
											var cardno = $('#cardNo').val();
											$.ajax({
												url : 'priorityUpdate.do',
												type : 'post',
												dataType : "json",
												data : {
													"op1" : op1,
													"op2" : op2,
													"no" : cardno
												},
												success : function(data) {
													/* alert("Yes"); */
												}
											});
											$('input').prop('checked', false);
											$('#modalPriority').empty();
											$('#modalPriority')
													.append(
															"<span class='glyphicon glyphicon-star'>우선순위</span><br/><div id='priorityIf'></div> ");
											if (op1 != null) {
												$("#priorityIf")
														.append(
																"<span style='background-color:"+op1+"'> 중요도</span>");
											}
											if (op2 != null) {
												$("#priorityIf")
														.append(
																"<span style='background-color:"+op2+"'> 선호도</span>");
											}
										});
						$(this).on("click", "#priorityCancel", function() {
							$("#priorityDiv").css('display', 'none');
							$('#modalPriority').empty();
						});
						$(this).on("click", "#checkBtn", function() {
							obj = document.getElementById('checkDiv');
							if (obj.style.display == "none") {

								divHide();
								$("#checkDiv").css("display", "inline");
							} else {
								$("#checkDiv").css("display", "none");
							}

						});
						$(this).on("click", "#checkInsert", function() {
							$("#dateDiv").css("display", "none");
							$("#checklistadd").css("display", 'inline');
							var title = $('#checkTitle').val();
							$('#checklisttitle').text(title);
						});
						$(this).on("click", "#checkCancel", function() {
							$("#checklistadd").empty();
						});
						$(this).on("click", "#dateBtn", function() {
							obj = document.getElementById('dateDiv');
							if (obj.style.display == "none") {
								divHide();
								$("#dateDiv").css("display", "inline");
							} else {
								$("#dateDiv").css("display", "none");
							}
						});
						$(this).on("click", "#btnMap", function() {
							obj = document.getElementById('mapApp');
							if (obj.style.display == "none") {
								divHide();
								$("#mapApp").css("display", "inline");
							} else
								$("#mapApp").css("display", "none");

							obj = document.getElementById('modalMap');
							if (obj.style.display == "block")
								$("#modalMap").css("display", "none");
						});
						$(this).on("click", "#labelBtn", function() {
							obj = document.getElementById('labelDiv');
							if (obj.style.display == "none") {
								divHide();
								$("#labelDiv").css("display", "inline");
							} else {
								$("#labelDiv").css("display", "none");
							}
						});
						$(this).on("click", "#labelDelete", function() {
							$('#modalLabel').empty();
						});
						$(this)
								.on(
										"click",
										"#labelInsert",
										function() {

											var cardno = $('#cardNo').val();
											$('#modalLabel').empty();
											var labelColor = $(
													':radio[name="option10"]:checked')
													.val();
											$.ajax({
												url : 'labelUpdate.do',
												type : 'post',
												dataType : "json",
												data : {
													"label" : labelColor,
													"no" : cardno
												},
												success : function(data) {
													/* alert("Yes"); */
												}
											});

											var title = $('#glypTitle').text();
											var startDate = $('#sdateDiv')
													.text().substring(5);
											alert(startDate);
											var endDate = $('#edateDiv').text()
													.substring(5);
											if (startDate != "") {
												$('#calendar').fullCalendar(
														'removeEvents', cardno);
												var events = new Array();
												event = new Object();
												event.title = title;
												event.start = startDate; // its a date string
												event.end = endDate;
												event.id = cardno;
												event.color = labelColor;

												event.allDay = false;
												events.push(event);

												$('#calendar').fullCalendar(
														'addEventSource',
														events);
											}
											$('#modalLabel')
													.append(
															"<span class='glyphicon glyphicon-tags'>라벨</span><br/><div id='labelColor' style='width:50px; background-color:"+labelColor+" '>&nbsp;</div> ");
										});
						
						   /*
		   				<div id=modalBottom>
						<span class="glyphicon glyphicon-comment" id="glypBottom"> 댓글</span><br>
						<div id="commentAdd">
							<textarea id="commentBox" placeholder="댓글을 입력해주세요.."></textarea><br>
							<div id="commentBtnBox">
								<button id="commentAddBtn">추가</button>
							</div>
						</div>
						<div id="commentArea">
							
						</div>	
					</div>
		   */
		   
		   $(this).on("click",'#commentAddBtn',function(){
			  
			   var textcomment= $(this).parent('#commentBtnBox').siblings('#commentBox').val().replace(/\n/g, '<br/>');
			   $(this).parents("#modalBottom").append("<div id='commentArea'><button id='commentDelete' style='float:right; background-color:transparent'>x</button><div>"+textcomment+"</div></div>");
			   $(this).parents("#modalBottom").append("<div id='commentAdd'><textarea id='commentBox' placeholder='댓글을 입력해주세요..'></textarea><br><div id='commentBtnBox'><button id='commentAddBtn'>추가</button></div></div>");
			   $(this).parents('#commentAdd').remove();

			  
		   });
		   
		   $(this).on("click",'#commentDelete',function(){
			  $(this).parents('#commentArea').remove(); 
		   });
		   
		   $(this).on("keyup",'#commentBox',function(){
			   var txt = $(this).val();
			   if(txt==""){
				   $(this).siblings('#commentBtnBox').hide();
			   }else{
				   $(this).siblings('#commentBtnBox').show(); 
			   }
		   });


						$(this).on("click", "#mapSearch", function() {
							$("#modalMap").css("display", "block");

						});
						$(this).on("click", "#lockaddBtn", function() {
							var op;
							var cardno = $('#cardNo').val();
							obj = document.getElementById('lockchange');
							if (obj.style.display == "inline") {
								$("#lockchange").css("display", "none");
								$("#lockchacom").css("display", 'inline');
								op = 2;
							} else {
								$("#lockchange").css("display", "inline");
								$("#lockchacom").css("display", 'none');
								op = 1;
							}
							$.ajax({
								url : 'openUpdate.do',
								type : 'post',
								dataType : "json",
								data : {
									"open" : op,
									"no" : cardno
								},
								success : function(data) {
									/* alert("Yes"); */
								}
							});
						});
						$(this).on("click", "#mapCancel", function() {
							$("#modalMap").css("display", "none");

						});
						$(this).on("click", "#modalBdClose", function() {
							$('#cardDetail').modal('hide');
						});
						$(this)
								.on(
										"click",
										"#dateInsert",
										function() {
											$("#dateDiv")
													.css("display", "none");
											var title = $('#glypTitle').text();
											var id = $('#cardNo').val();
											var startDate = $('#sdate').val();
											var endDate = $('#edate').val();
											var labelColor = $('#labelColor')
													.css("background-color");
											alert(labelColor);
											var cardno = $('#cardNo').val();
											$('#calendar').fullCalendar(
													'removeEvents', cardno);
											var events = new Array();
											event = new Object();
											event.title = title;
											event.start = startDate; // its a date string
											event.end = endDate;
											event.id = id;
											if (labelColor == null) {
												event.color = "green";
											} else {
												event.color = labelColor;
											}
											event.allDay = false;
											events.push(event);

											$('#calendar').fullCalendar(
													'addEventSource', events);
											$('#modalDate').empty();
											$('#modalDate')
													.append(
															"<span class='glyphicon glyphicon-calendar'>일정날짜</span><div id='sdateDiv'> <b id='startD'>시작일 </b>: "
																	+ startDate
																	+ "</div>");
											if (endDate != "") {
												$('#modalDate').append(
														"<div id='edateDiv'> <b id='endD'>종료일 </b>: "
																+ endDate
																+ "</div>");
											}

											$.ajax({
												url : 'dateUpdate.do',
												type : 'post',
												dataType : "json",
												data : {
													"start" : startDate,
													"end" : endDate,
													"no" : cardno
												},
												success : function(data) {
													/* alert("Yes"); */
												}
											});
										});
						$(this).on(
								"click",
								".listDelete",
								function() {
									if (confirm('해당 리스트를 삭제 하시겠습니까?')) {
										var deleteid = $(this).parents(
												".weekday").attr("id");
										$.ajax({
											url : 'listDelete.do',
											type : 'post',
											dataType : "json",
											data : {
												"id" : deleteid
											},
											success : function(data) {
												/* alert("Yes"); */
											}
										});
										/* alert(deleteid); */
										$(this).parents(".weekday").remove();
									} else {
										// Do nothing!
									}

								});
						$(this).on("click", "#fileUpButton", function() {
							obj = document.getElementById('fileUpDiv');
							if (obj.style.display == "none") {
								divHide();
								$("#fileUpDiv").css("display", "inline");
							} else
								$("#fileUpDiv").css("display", "none");
						});
						$(this).on("click", "#fileDelete", function() {
							$("#fileUpDiv").css('display', 'none');
						});
						/* 	    $(this).ready(function(){
						 function readURL(input) {
						 if (input.files && input.files[0]) {
						 var reader = new FileReader();
						 reader.onload = function (e) { 
						 $('#blah').attr('src', e.target.result);
						 }                    
						 reader.readAsDataURL(input.files[0]);
						 }
						 }
						 $("#upload").change(function(){
						 readURL(this);
						 });
						 }); */

						$(this)
								.on(
										"click",
										"#addchecklist",
										function() {
											$('#checkready')
													.append(
															"<textarea cols='30' rows='1' id='chetext'></textarea>");
											$('#complecheck').css('display',
													"inline");
											document
													.getElementById("complecheck").disabled = false;
											document
													.getElementById("addchecklist").disabled = true;
										});
						$(this)
								.on(
										"click",
										"#complecheck",
										function() {
											var message = $('textarea#chetext')
													.val();
											$('#chetext')
													.css('display', "none");
											$('#checkready').append(
													"<form id='checkboxform'><p><input type='checkbox' />"
															+ message
															+ "</p></form>");
											document
													.getElementById("addchecklist").disabled = false;
											document
													.getElementById("complecheck").disabled = true;
											$('#chetext').remove();

											$('#checkready')
													.ready(
															function() {

																// get box count
																var count = 0;
																var checked = 0;
																function countBoxes() {
																	count = $("input[type='checkbox']").length;
																	console
																			.log(count);
																}

																countBoxes();
																$(":checkbox")
																		.click(
																				countBoxes);

																// count checks
																function countChecked() {
																	checked = $("input:checked").length;

																	var percentage = parseInt(
																			((checked / count) * 100),
																			10);
																	$(
																			".progressbar-bar")
																			.progressbar(
																					{
																						value : percentage
																					});
																	$(
																			".progressbar-label")
																			.text(
																					percentage
																							+ "%");
																}

																countChecked();
																$(":checkbox")
																		.click(
																				countChecked);

															});
										});
					});
	function resize(obj) {
		obj.style.height = "1px";
		obj.style.height = (50 + obj.scrollHeight) + "px";
	}
	function divHide() {
		$('#fileUpDiv').hide();
		$('#checkDiv').hide();
		$('#mapApp').hide();
		$('#priorityDiv').hide();
		$('#labelDiv').hide();
		$('#dateDiv').hide();
	}//디테일카드에서 버튼클릭시 다른버튼 지워주는기능
</script>
<title>오늘 일을 내일로 미루자</title>
</head>
<!-- ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ -->
<!-- 회원정보 변경 모달  -->
<!-- Modal -->
<div class="modal fade" id="PwdChageModal" role="dialog" tabindex="-1"
	aria-labelledby="modal-login-label" aria-hidden="true">
	<div class="modal-dialog">
		<!-- Modal content-->
		<div class="modal-content">
			<div class="modal-header" style="padding: 30px 30px;">
				<button type="button" class="close" data-dismiss="modal"
					style="margin-top: 7px;">
					<span aria-hidden="true">&times;</span><span class="sr-only">Close</span>
				</button>
				<h4>
					<span class="glyphicon glyphicon-user"></span> 회원정보 변경
				</h4>
			</div>
			<form class="form-horizontal" method="POST" id="chageFrm"
				name="chageFrm">
				<div class="modal-body" style="padding: 40px 50px; height: 410px;">
					<div class="form-group" id="divEmail">
						<label for="email"><span class="glyphicon glyphicon-user"></span>
							이메일</label> <input type="text" class="email form-control" id="emailChage"
							name="emailChage" placeholder="이메일을 입력하세요">
					</div>
					<div class="form-group" id="divNickname">
						<label for="nickname"> <span
							class="glyphicon glyphicon-apple"></span> 닉네임
						</label> <input type="text" class="pwd form-control" id="nicknameChange"
							name="nicknameChange" placeholder="사용하실 대화명을 입력하세요.(4자리 이상)">
					</div>
					<div class="form-group" id="divPwd">
						<label for="psw"> <span
							class="glyphicon glyphicon-eye-open"></span> 기존 비밀번호
						</label> <input type="password" class="pwd form-control" id="pwdChange"
							name="pwdChange" placeholder="기존 비밀번호를 입력하세요(4자리 이상)">
					</div>
					<div class="form-group" id="divNewPwd">
						<label for="psw"><span
							class="glyphicon glyphicon-eye-open"></span> 새 비밀번호</label> <input
							type="password" class="form-control" id="newPwdChange"
							name="newPwdChange" placeholder="새 비밀번호를 입력하세요(4자리 이상)">
					</div>
					<div class="form-group" id="divNewPwd2">
						<label for="checknum"><span
							class="glyphicon glyphicon-eye-open"></span> 인증번호</label> <input
							type="text" class="form-control" id="newPwdChange2"
							name="newPwdChange2" placeholder="새 비밀번호를 입력하세요(4자리 이상)">
					</div>
				</div>
				<div class="modal-footer">
					<button type="button" id="changeYes" name="chageYes"
						class="btn btn-success btn-default pull-left" value="Send"
						style="margin: 10px; margin-left: 35px" disabled>
						<span class="glyphicon glyphicon-plus"></span>완 료
					</button>
					<button type="button" class="btn btn-danger btn-default pull-left"
						data-dismiss="modal" value="Input Button" style="margin: 10px">
						<span class="glyphicon glyphicon-remove"></span>취 소
					</button>
				</div>
			</form>
		</div>
	</div>
</div>
<!-- ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ -->

<!-- 일정찾기 -->
<div class="container">
	<!-- Modal -->
	<div class="modal fade" id="planSearchModal" role="dialog">
		<div class="modal-dialog">
			<!-- Modal content-->
			<div class="modal-content">
				<div class="modal-header" style="padding: 30px 30px;">
					<button type="button" class="close" data-dismiss="modal"
						style="margin-top: 7px;">
						<span aria-hidden="true">&times;</span><span class="sr-only">Close</span>
					</button>
					<h4 style="width: auto; height: auto;">
						<span class="glyphicon glyphicon-user"></span> 일정 검색
					</h4>
				</div>
				<div class="modal-body" style="padding: 40px 50px;">
					<div class=""></div>
				</div>
			</div>
		</div>
	</div>
</div>

<!-- ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ -->
<body id="body" data-spy="scroll" data-target=".one-page-header"
	class="demo-lightbox-gallery">
	<!--=== Header ===-->
	<nav class="one-page-header navbar navbar-default navbar-fixed-top"
		role="navigation">
		<div class="container">
			<div class="menu-container page-scroll">
				<!--<button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-ex1-collapse">
					<span class="sr-only">Toggle navigation</span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
				</button>
				-->
				<a class="navbar-brand" href="#intro"> <span>오</span>내미 <!-- <img src="assets/img/logo1.png" alt="Logo"> -->
				</a>
			</div>
			<!-- Collect the nav links, forms, and other content for toggling -->
			<div class="collapse navbar-collapse navbar-ex1-collapse">
				<div class="menu-container">
					<ul class="nav navbar-nav">
						<c:if test="${logNickname eq null}">
							<li class="page-scroll home" id="myBtn1"><a href="#about">
									<span class="glyphicon glyphicon-log-in"></span>&nbsp;&nbsp;&nbsp;로그인
							</a></li>

							<li class="page-scroll home" id="myBtn2"><a href="#services">
									<span class="glyphicon glyphicon-user"></span>&nbsp;&nbsp;&nbsp;회원가입
							</a></li>
						</c:if>
						<c:if test="${logNickname ne null}">
							<li class="page-scroll home"><a href="intro.do"> <span
									class="glyphicon glyphicon-pencil"></span>&nbsp;&nbsp;&nbsp;집으로
							</a></li>

							<li class="page-scroll home" id="userDetail2"><a
								href="#detail"> <span class="glyphicon glyphicon-user"></span>&nbsp;&nbsp;&nbsp;${logNickname}님
							</a></li>

							<li class="page-scroll home" id="myBtn3"><a
								href="logOutOK.do"> <span class="glyphicon glyphicon-remove"></span>&nbsp;&nbsp;&nbsp;로그아웃
							</a></li>
						</c:if>
					</ul>
				</div>
			</div>
			<!-- /.navbar-collapse -->
		</div>
		<!-- /.container -->
	</nav>
	<!--=== End Header ===-->
	<div id="sist" class="row">
		<div class=" col-md-6 half" id='calendar'>
			<div id="calendar_attr">
				<div id='calendar_container'></div>
			</div>
		</div>

		<!-- 일정 검색 위치 -->
		<form role="form">
			<div class="form-group has-success has-feedback">
				<label class="col-sm-0 control-label" for="inputSuccess"
					style="float: left; text-align: center; height: auto; padding-top: 6px;">&nbsp;&nbsp;&nbsp;&nbsp;일정
					검색 <span class="glyphicon glyphicon-search"></span>
				</label>
				<div class="col-sm-2">
					<input type="text" class="form-control" id="inputSuccess"
						placeholder="찾고싶은 일정을 입력하세요..."> &nbsp;&nbsp;&nbsp;
				</div>
				<div>
					<button type="button" class="btn btn-success" id="searchBtn">검색</button>
					&nbsp;&nbsp;&nbsp; <label class="radio-inline"
						style="padding-top: 3px;"> <input type="radio"
						name="optradio" id="radioMyplan">내 일정
					</label> <label class="radio-inline" style="padding-top: 3px;"> <input
						type="radio" name="optradio" id="radioAllplan">모든 일정
					</label> <label class="radio-inline" style="padding-top: 3px;"> <input
						type="radio" name="optradio" id="radioHash">#해시태그
					</label>
				</div>
			</div>
		</form>
		<div class="col-md-6 half" id='cardList'>
			<div style="clear: both"></div>
			<div id="timetable"
				style="float: left; max-width: 7000px; margin-top: 50px;">

				<div style="text-align: center"></div>
				<c:forEach var="vo" items="${list}">

	    			${vo.html}

	    		</c:forEach>
				<div class="weekday col-md-1">


					<div class="addListBtn">
						<span><img src="calendar/images/createlist.png"></span>
					</div>

					<div class="addListPanel" style="display: none;">
						<input name="name" class="addListTxt" type="text"
							placeholder="리스트 추가하기.." /> <input type="button" value="추가"
							class="listTitleBtn" /> <input type="button" value="취소"
							class="listTitleCancel" />
					</div>
				</div>
			</div>
		</div>
	</div>
	<div class="modal fade" id="cardDetail" role="dialog">
		<div class="modal-dialog">
			<div>

				<%-- <jsp:include page="detail.do" flush="false" /> --%>
			</div>

		</div>
	</div>
</body>
<!-- JS Global Compulsory -->
</html>