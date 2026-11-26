package defpackage;

import java.io.IOException;

/* JADX INFO: loaded from: classes5.dex */
public final class ec3 extends qj3 {
    public final long c;
    public final boolean d;
    public long e;

    public ec3(v48 v48Var, long j, boolean z) {
        super(v48Var);
        this.c = j;
        this.d = z;
    }

    @Override // defpackage.qj3, defpackage.v48
    public final long t0(bu0 bu0Var, long j) throws IOException {
        bu0Var.getClass();
        long j2 = this.e;
        long j3 = this.c;
        if (j2 > j3) {
            j = 0;
        } else if (this.d) {
            long j4 = j3 - j2;
            if (j4 == 0) {
                return -1L;
            }
            j = Math.min(j, j4);
        }
        long jT0 = this.b.t0(bu0Var, j);
        if (jT0 != -1) {
            this.e += jT0;
        }
        long j5 = this.e;
        if ((j5 >= j3 || jT0 != -1) && j5 <= j3) {
            return jT0;
        }
        if (jT0 > 0 && j5 > j3) {
            long j6 = bu0Var.c - (j5 - j3);
            bu0 bu0Var2 = new bu0();
            bu0Var2.j0(bu0Var);
            bu0Var.H(bu0Var2, j6);
            bu0Var2.p();
        }
        StringBuilder sbF = xp.f(j3, "expected ", " bytes but got ");
        sbF.append(this.e);
        throw new IOException(sbF.toString());
    }
}
