package JavaOOP.Vererbungskonzept.Aufgabe2;

public class Klang {
	public int baesse, hoehen;
	public Klang (int b, int h) {
		baesse = b;
		hoehen = h;
	}
	public String toString () {
		return "B:" + baesse + " H:" + hoehen;
	}
	public void mehrPower (int b) {
		baesse += b;
	}
}