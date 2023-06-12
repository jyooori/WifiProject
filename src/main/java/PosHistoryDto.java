
public class PosHistoryDto {

	private int ID;
	private int H_LAT;
	private int H_LNT;
	private int DAY;
	private String NOTE;
	
	public PosHistoryDto() {
		super();
	}
	
	public PosHistoryDto(int ID, int H_LAT, int H_LNT, int DAY, String NOTE) {
		super();
		this.ID = ID;
		this.H_LAT = H_LAT;
		this.H_LNT = H_LNT;
		this.DAY = DAY;
		this.NOTE = NOTE;
	}
	
	public int ID() {
		return ID;
	}
	public void ID(int ID) {
		this.ID = ID;
	}
	public int H_LAT() {
		return H_LAT;
	}
	public void H_LAT(int H_LAT) {
		this.H_LAT = H_LAT;
	}
	public int H_LNT() {
		return H_LNT;
	}
	public void H_LNT(int H_LNT) {
		this.H_LNT = H_LNT;
	}
	public int DAY() {
		return DAY;
	}
	public void DAY(int DAY) {
		this.DAY = DAY;
	}
	public String NOTE() {
		return NOTE;
	}
	public void NOTE(String NOTE) {
		this.NOTE = NOTE;
	}


}
