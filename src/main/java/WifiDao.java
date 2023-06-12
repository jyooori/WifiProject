

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.List;

import javax.sql.DataSource;

import database.Database;
import database.JDBCTemplate;

@SuppressWarnings("unused")
public class WifiDao extends JDBCTemplate{
	public int delete() {
		Connection con = getConnection();
		PreparedStatement pstm = null;
		int res = 0;
		
		String sql = " DELETE FROM WIFI";
		
		try {
			pstm = con.prepareStatement(sql);
			
			res = pstm.executeUpdate();
			
			if(res > 0) {
				commit(con);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close((Connection) pstm);
			close((Connection) con);
		}
		return res;
	}
	


	public void commit(Connection con) {
		// TODO Auto-generated method stub
		
	}



	public int insert(List<WifiInfoDto> dtos) {
		Connection con = getConnection();
		PreparedStatement pstm = null;
		int res = 0;
		
		String sql = "INSERT INTO TbPublicWifiInfo_GC VALUES(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
		
		try {
			pstm = con.prepareStatement(sql);
			
			for(int i = 0; i < dtos.size(); i++) {
				WifiInfoDto dto = dtos.get(i);
				
				pstm.setString(1, dto.getx_swifi_mgr_no());
				pstm.setString(2, dto.getx_swifi_wrdofc());
				pstm.setString(3, dto.getx_swifi_main_nm());
				pstm.setString(4, dto.getx_swifi_adres1());
				pstm.setString(5, dto.getx_swifi_adres2());
				pstm.setString(6, dto.getx_swifi_instl_floor());
				pstm.setString(7, dto.getx_swifi_instl_ty());
				pstm.setString(8, dto.getx_swifi_instl_mby());
				pstm.setString(9, dto.getx_swifi_svc_se());
				pstm.setString(10, dto.getx_swifi_cmcwr());
				pstm.setString(11, dto.getx_swifi_cnstc_year());
				pstm.setString(12, dto.getx_swifi_inout_door());
				pstm.setString(13, dto.getx_swifi_remars3());
				pstm.setString(14, dto.getlat());
				pstm.setString(15, dto.getlnt());
				pstm.setString(16, dto.getwork_dttm());
				
				pstm.addBatch();
			}
			int[] result = pstm.executeBatch();
			
			for(int i = 0; i < result.length; i++) {
				if(result[i] == -2) {
					res++;
				}
			}
			if(res == dtos.size()) {
				commit(con);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close((Connection) pstm);
			close(con);
		}
		return res;
	}
}
