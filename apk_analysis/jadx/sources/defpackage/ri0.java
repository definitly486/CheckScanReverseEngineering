package defpackage;

import com.google.zxing.FormatException;

/* JADX INFO: loaded from: classes4.dex */
public final class ri0 {
    public final qi0 a;
    public uc9 b;
    public si3 c;
    public boolean d;

    public ri0(qi0 qi0Var) throws FormatException {
        int i = qi0Var.c;
        if (i < 21 || (i & 3) != 1) {
            throw FormatException.a();
        }
        this.a = qi0Var;
    }

    public final int a(int i, int i2, int i3) {
        boolean z = this.d;
        qi0 qi0Var = this.a;
        return z ? qi0Var.c(i2, i) : qi0Var.c(i, i2) ? (i3 << 1) | 1 : i3 << 1;
    }

    public final si3 b() throws FormatException {
        si3 si3Var = this.c;
        if (si3Var != null) {
            return si3Var;
        }
        int iA = 0;
        int iA2 = 0;
        for (int i = 0; i < 6; i++) {
            iA2 = a(i, 8, iA2);
        }
        int iA3 = a(8, 7, a(8, 8, a(7, 8, iA2)));
        for (int i2 = 5; i2 >= 0; i2--) {
            iA3 = a(8, i2, iA3);
        }
        int i3 = this.a.c;
        int i4 = i3 - 7;
        for (int i5 = i3 - 1; i5 >= i4; i5--) {
            iA = a(8, i5, iA);
        }
        for (int i6 = i3 - 8; i6 < i3; i6++) {
            iA = a(i6, 8, iA);
        }
        si3 si3VarA = si3.a(iA3, iA);
        if (si3VarA == null) {
            si3VarA = si3.a(iA3 ^ 21522, iA ^ 21522);
        }
        this.c = si3VarA;
        if (si3VarA != null) {
            return si3VarA;
        }
        throw FormatException.a();
    }

    public final uc9 c() throws FormatException {
        uc9 uc9Var = this.b;
        if (uc9Var != null) {
            return uc9Var;
        }
        int i = this.a.c;
        int i2 = (i - 17) / 4;
        if (i2 <= 6) {
            return uc9.c(i2);
        }
        int i3 = i - 11;
        int iA = 0;
        int iA2 = 0;
        for (int i4 = 5; i4 >= 0; i4--) {
            for (int i5 = i - 9; i5 >= i3; i5--) {
                iA2 = a(i5, i4, iA2);
            }
        }
        uc9 uc9VarB = uc9.b(iA2);
        if (uc9VarB != null && (uc9VarB.a * 4) + 17 == i) {
            this.b = uc9VarB;
            return uc9VarB;
        }
        for (int i6 = 5; i6 >= 0; i6--) {
            for (int i7 = i - 9; i7 >= i3; i7--) {
                iA = a(i6, i7, iA);
            }
        }
        uc9 uc9VarB2 = uc9.b(iA);
        if (uc9VarB2 == null || (uc9VarB2.a * 4) + 17 != i) {
            throw FormatException.a();
        }
        this.b = uc9VarB2;
        return uc9VarB2;
    }
}
