package shop;

public class BClass {

	public void print(MemberDTO dto) {
		System.out.println("당신의 id는" + dto.getId());
		System.out.println("당신의 pw는" + dto.getPw());
		System.out.println("당신의 name는" + dto.getName());
		System.out.println("당신의 tel는" + dto.getTel());
	}
}
