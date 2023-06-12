$(function() {
	getJson();
});

function getJson() {
	$.getJSON("WifiProject/lib.json", function(data) {
		$.each(data, function(key, val) {
			if(key == "DESCRIPTION") {
				$("table").attr("border","1");
				
				$("thead").append(
					"<tr>" +
						"<th>"+val.X_SWIFI_MGR_NO+"</th>" +
						"<th>"+val.X_SWIFI_WRDOFC+"</th>" +
						"<th>"+val.X_SWIFI_MAIN_NM+"</th>" +
						"<th>"+val.X_SWIFI_ADRES1+"</th>" +
						"<th>"+val.X_SWIFI_ADRES2+"</th>" +
						"<th>"+val.X_SWIFI_INSTL_FLOOR+"</th>" +
						"<th>"+val.X_SWIFI_INSTL_TY+"</th>" +
						"<th>"+val.X_SWIFI_INSTL_MBY+"</th>" +
						"<th>"+val.X_SWIFI_SVC_SE+"</th>" +
						"<th>"+val.X_SWIFI_CMCWR+"</th>" +
						"<th>"+val.X_SWIFI_CNSTC_YEAR+"</th>" +
						"<th>"+val.X_SWIFI_INOUT_DOOR+"</th>" +
						"<th>"+val.X_SWIFI_REMARS3+"</th>" +
						"<th>"+val.LAT+"</th>" +
						"<th>"+val.LNT+"</th>" +
						"<th>"+val.WORK_DTTM+"</th>" +
					"</tr>"
				);
			} else {
				var list = val;
				for(var i = 0; i < list.length; i++) {
					var str = list[i];
					$("tbody").append(
						"<tr>" +
						"<td>"+str.x_swifi_mgr_no+"</td>" +
						"<td>"+str.x_swifi_wrdofc+"</td>" +
						"<td>"+str.x_swifi_main_nm+"</td>" +
						"<td>"+str.x_swifi_adres1+"</td>" +
						"<td>"+str.x_swifi_adres2+"</td>" +
						"<td>"+str.x_swifi_instl_floor+"</td>" +
						"<td>"+str.x_swifi_instl_ty+"</td>" +
						"<td>"+str.x_swifi_instl_mby+"</td>" +
						"<td>"+str.x_swifi_svc_se+"</td>" +
						"<td>"+str.x_swifi_cmcwr+"</td>" +
						"<td>"+str.x_swifi_cnstc_year+"</td>" +
						"<td>"+str.x_swifi_inout_door+"</td>" +
						"<td>"+str.x_swifi_remars3+"</td>" +
						"<td>"+str.lat+"</td>" +
						"<td>"+str.lnt+"</td>" +
						"<td>"+str.work_dttm+"</td>" +
						
						//db에 값들을 '/'로 나눠서 넘겨줌
						"<input type = 'hidden' name = 'lib' value ='"+
						str.x_swifi_mgr_no + "/" + str.x_swifi_wrdofc + "/" + str.x_swifi_main_nm + "/" + str.x_swifi_adres1 + "/" + str.x_swifi_adres2 + "/" +
						str.x_swifi_instl_floor + "/" + str.x_swifi_instl_ty + "/" + str.x_swifi_instl_mby + "/" + str.x_swifi_svc_se + "/" + str.x_swifi_cmcwr + "/" +
						str.x_swifi_cnstc_year + "/" + str.x_swifi_inout_door + "/" + str.x_swifi_remars3 + "/" + str.lat + "/" + str.lnt + "/" + str.work_dttm + "'>" +
					"</tr>"
					);
				}
			}
		});
	});
}