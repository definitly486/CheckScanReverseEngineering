package defpackage;

import java.io.EOFException;

/* JADX INFO: loaded from: classes5.dex */
public final class qq7 {
    public static final yz5 d;
    public static final gx0 e;
    public final wu0 a;
    public final ry6 b;
    public String c;

    static {
        gx0 gx0Var = gx0.e;
        d = yz5.a.b(gx0.a.c("\r\n"), gx0.a.c("\r"), gx0.a.c("\n"), gx0.a.c("data: "), gx0.a.c("data:"), gx0.a.c("data\r\n"), gx0.a.c("data\r"), gx0.a.c("data\n"), gx0.a.c("id: "), gx0.a.c("id:"), gx0.a.c("id\r\n"), gx0.a.c("id\r"), gx0.a.c("id\n"), gx0.a.c("event: "), gx0.a.c("event:"), gx0.a.c("event\r\n"), gx0.a.c("event\r"), gx0.a.c("event\n"), gx0.a.c("retry: "), gx0.a.c("retry:"));
        e = gx0.a.c("\r\n");
    }

    public qq7(wu0 wu0Var, ry6 ry6Var) {
        wu0Var.getClass();
        this.a = wu0Var;
        this.b = ry6Var;
    }

    public final boolean a() throws EOFException {
        String strY = this.c;
        bu0 bu0Var = new bu0();
        while (true) {
            wu0 wu0Var = this.a;
            yz5 yz5Var = d;
            int iF0 = wu0Var.f0(yz5Var);
            if (iF0 >= 0 && iF0 < 3) {
                if (bu0Var.c == 0) {
                    return true;
                }
                this.c = strY;
                bu0Var.skip(1L);
                String strQ0 = bu0Var.q0();
                ry6 ry6Var = this.b;
                ry6Var.a.G(ry6Var, strQ0);
                return true;
            }
            gx0 gx0Var = e;
            if (3 <= iF0 && iF0 < 5) {
                bu0Var.A0(10);
                wu0Var.c(bu0Var, wu0Var.W(gx0Var));
                wu0Var.f0(yz5Var);
            } else if (5 <= iF0 && iF0 < 8) {
                bu0Var.A0(10);
            } else if (8 <= iF0 && iF0 < 10) {
                strY = wu0Var.Y();
                if (strY.length() <= 0) {
                    strY = null;
                }
            } else if (10 <= iF0 && iF0 < 13) {
                strY = null;
            } else if (13 <= iF0 && iF0 < 15) {
                wu0Var.Y();
            } else if (15 > iF0 || iF0 >= 18) {
                if (18 <= iF0 && iF0 < 20) {
                    String strY2 = wu0Var.Y();
                    byte[] bArr = gb9.a;
                    try {
                        Long.parseLong(strY2);
                    } catch (NumberFormatException unused) {
                    }
                } else {
                    if (iF0 != -1) {
                        xp.g();
                        return false;
                    }
                    long jW = wu0Var.W(gx0Var);
                    if (jW == -1) {
                        return false;
                    }
                    wu0Var.skip(jW);
                    wu0Var.f0(yz5Var);
                }
            }
        }
    }
}
