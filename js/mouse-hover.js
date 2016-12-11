    $(document).ready(function() {
	    $("tr").mouseover(setBgColor);     //鼠标移动到表格的行上设置行的背景颜色
		$("tr").mouseout(clearBgColor);     //鼠标离开到表格的行上取消行的背景颜色
	    $("td").addClass("viewBorder");    //设置单元格样式
	});
	function setBgColor() {
	   $(this).css({'background-color':'#D3DBE6'});
	}
	function clearBgColor() {
	    $(this).css({'background-color':'#FFFFFF'});
	}