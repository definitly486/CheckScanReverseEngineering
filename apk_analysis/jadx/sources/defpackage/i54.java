package defpackage;

import java.util.Arrays;

/* JADX INFO: loaded from: classes5.dex */
public final class i54 extends s96 {
    public final boolean l;

    public i54(String str, j54 j54Var) {
        super(str, j54Var, 1);
        this.l = true;
    }

    @Override // defpackage.s96
    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof i54) {
            mp7 mp7Var = (mp7) obj;
            if (this.a.equals(mp7Var.h())) {
                i54 i54Var = (i54) obj;
                if (i54Var.l && Arrays.equals((mp7[]) this.j.getValue(), (mp7[]) i54Var.j.getValue())) {
                    int iE = mp7Var.e();
                    int i = this.c;
                    if (i == iE) {
                        for (int i2 = 0; i2 < i; i2++) {
                            if (aa4.e(d(i2).h(), mp7Var.d(i2).h()) && aa4.e(d(i2).getKind(), mp7Var.d(i2).getKind())) {
                            }
                        }
                        return true;
                    }
                }
            }
        }
        return false;
    }

    @Override // defpackage.s96
    public final int hashCode() {
        return super.hashCode() * 31;
    }

    @Override // defpackage.mp7
    public final boolean isInline() {
        return this.l;
    }
}
