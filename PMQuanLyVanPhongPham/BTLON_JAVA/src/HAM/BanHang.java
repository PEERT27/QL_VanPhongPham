/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package HAM;

/**
 *
 * @author Admin
 */
public class BanHang {

    public BanHang() {
    }

    public BanHang(int MASP, int LOAISP, int HSX, int TONKHO, int TRANGTHAI, String TENSP) {
        this.MASP = MASP;
        this.LOAISP = LOAISP;
        this.HSX = HSX;
        this.TONKHO = TONKHO;
        this.TRANGTHAI = TRANGTHAI;
        this.TENSP = TENSP;
    }

    public int getMASP() {
        return MASP;
    }

    public int getLOAISP() {
        return LOAISP;
    }

    public int getHSX() {
        return HSX;
    }

    public int getTONKHO() {
        return TONKHO;
    }

    public int getTRANGTHAI() {
        return TRANGTHAI;
    }

    public String getTENSP() {
        return TENSP;
    }

    public void setMASP(int MASP) {
        this.MASP = MASP;
    }

    public void setLOAISP(int LOAISP) {
        this.LOAISP = LOAISP;
    }

    public void setHSX(int HSX) {
        this.HSX = HSX;
    }

    public void setTONKHO(int TONKHO) {
        this.TONKHO = TONKHO;
    }

    public void setTRANGTHAI(int TRANGTHAI) {
        this.TRANGTHAI = TRANGTHAI;
    }

    public void setTENSP(String TENSP) {
        this.TENSP = TENSP;
    }
    private int MASP, LOAISP, HSX, TONKHO , TRANGTHAI;
    private String TENSP;
}
