package yads;

import java.io.EOFException;

/* JADX INFO: loaded from: classes6.dex */
public final class ob3 {
    public final os4 a = new os4(10);

    public final h84 a(wk0 wk0Var, kb3 kb3Var) {
        h84 h84VarA = null;
        int i = 0;
        while (true) {
            try {
                wk0Var.b(this.a.a, 0, 10, false);
                this.a.e(0);
                if (this.a.m() != 4801587) {
                    break;
                }
                os4 os4Var = this.a;
                os4Var.e(os4Var.b + 3);
                int iJ = this.a.j();
                int i2 = iJ + 10;
                if (h84VarA == null) {
                    byte[] bArr = new byte[i2];
                    System.arraycopy(this.a.a, 0, bArr, 0, 10);
                    wk0Var.b(bArr, 10, iJ, false);
                    h84VarA = new mb3(kb3Var).a(bArr, i2);
                } else {
                    wk0Var.a(iJ, false);
                }
                i += i2;
            } catch (EOFException unused) {
            }
        }
        wk0Var.f = 0;
        wk0Var.a(i, false);
        return h84VarA;
    }
}
