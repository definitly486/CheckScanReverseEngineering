package defpackage;

/* JADX INFO: loaded from: classes5.dex */
public class au1 {
    public final yd4 a;
    public boolean b = true;

    public au1(yd4 yd4Var) {
        this.a = yd4Var;
    }

    public void a() {
        this.b = false;
    }

    public void b(byte b) {
        this.a.d(b);
    }

    public final void c(char c) {
        yd4 yd4Var = this.a;
        yd4Var.a(yd4Var.b, 1);
        char[] cArr = yd4Var.a;
        int i = yd4Var.b;
        yd4Var.b = i + 1;
        cArr[i] = c;
    }

    public void d(int i) {
        this.a.d(i);
    }

    public void e(long j) {
        this.a.d(j);
    }

    public void f(short s) {
        this.a.d(s);
    }

    public void g(String str) {
        str.getClass();
        this.a.e(str);
    }

    public void h() {
    }

    public void i() {
    }
}
