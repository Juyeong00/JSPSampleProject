package db.dto;

public class PersonInfoDTO {
	//DTO Data Transfer Object
	
	public int id;	//숫자 NUMBER
	public String name;	//문자열 VARCHAR2
	
	public PersonInfoDTO(int id, String name) {
		super();
		this.id = id;
		this.name = name;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}
	
	
}
