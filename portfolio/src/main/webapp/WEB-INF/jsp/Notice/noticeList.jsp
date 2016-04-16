<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<%@ include file="/WEB-INF/include/include-header.jspf" %>
</head>
<body>
	<h2 class="pd_10">알림사항</h2>
	<div id="bthDiv" class="btnDiv" align="right"> 
	<a href="#this" class="btn" id="write">글쓰기</a>
	</div>
	<div class="pd_10">
	<table class="board_list">
		<colgroup>
			<col width="7px"/> 
			<col width="*"/>
			<col width="15%"/>
			<col width="20%"/>
		</colgroup>
		<thead>
			<tr> 
				<th scope="col"></th>
				<th scope="col">제목</th>
				<th scope="col">조회수</th>
				<th scope="col">작성일</th>
			</tr>
		</thead>
		<tbody>
			
		</tbody>
	</table>
	</div>
	<div id="PAGE_NAVI"></div>
	<input type="hidden" id="PAGE_INDEX" name="PAGE_INDEX"/>
	
	<br/>
	
	
	<%@ include file="/WEB-INF/include/include-body.jspf" %>
	<script type="text/javascript">
		$(document).ready(function(){
			fn_selectBoardList(1);
		
			$(document).on("click", "#write", function(e){
				e.preventDefault();
				fn_openBoardWrite();
			});

			$(document).on("click", "table>tbody>tr>td", function(e){
				e.preventDefault();
				fn_openBoardDetail($(this));
			});
			
			$(document).on("mouseover", "table>tbody>tr", function(e){
				$(this).addClass("hover");
			});
			
			$(document).on("mouseout", "table>tbody>tr", function(e){
				$(this).removeClass("hover");
			});

		});

		function fn_openBoardWrite(){
			var comSubmit = new ComSubmit();
			comSubmit.setUrl("<c:url value='/board/openBoardWrite.do' />");
			comSubmit.submit();
		}
		
		function fn_openBoardDetail(obj){
			var comSubmit = new ComSubmit();
			comSubmit.setUrl("<c:url value='/board/openBoardDetail.do' />");
			comSubmit.addParam("IDX", obj.find("#IDX").val());
			comSubmit.submit();
		}
		
		function fn_selectBoardList(pageNo){
			var comAjax = new ComAjax();
			comAjax.setUrl("<c:url value='/board/selectBoardList.do' />");
			comAjax.setCallback("fn_selectBoardListCallback");
			comAjax.addParam("PAGE_INDEX",$("#PAGE_INDEX").val());
			comAjax.addParam("PAGE_ROW", 20);
			comAjax.addParam("IDX_FE", $("#IDX_FE").val());
			comAjax.ajax();
		}
		
		function fn_selectBoardListCallback(data){
			var total = data.TOTAL;
			var body = $("table>tbody");
			if(total == 0){
				var str = "<tr>" + 
								"<td colspan='4'>조회된 결과가 없습니다.</td>" + 
							"</tr>";
				body.append(str);
			}
			else{
				var params = { 
					divId : "PAGE_NAVI",
					pageIndex : "PAGE_INDEX",
					pageRow : data.PAGEROW, 
					totalCount : total,
					eventName : "fn_selectBoardList"
				};
				gfn_renderPaging(params);
				
				var str = "";
				$.each(data.list, function(key, value){
					str += "<tr>" + 
								"<td class='tdHead'></td>" +  
								"<td class='title'>" +
									value.TITLE + 
									"<input type='hidden' name='title' ID ='IDX' value=" + value.IDX + ">" + 
								"</td>" +
								"<td>" + value.HIT_CNT + "</td>" + 
								"<td>" + value.CREA_DTM + "</td>" + 
							"</tr>";
				});
				body.append(str);
			}
		}
	</script>	
</body>
</html>