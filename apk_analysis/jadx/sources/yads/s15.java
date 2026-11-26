package yads;

import androidx.media3.common.C;
import java.io.IOException;

/* JADX INFO: loaded from: classes6.dex */
public final class s15 implements mc5 {
    public final int b;
    public final /* synthetic */ v15 c;

    public s15(v15 v15Var, int i) {
        this.c = v15Var;
        this.b = i;
    }

    @Override // yads.mc5
    public final int a(a03 a03Var, mi0 mi0Var, int i) {
        v15 v15Var = this.c;
        int i2 = this.b;
        if (v15Var.E || v15Var.I != C.TIME_UNSET) {
            return -3;
        }
        v15Var.c();
        u15 u15Var = v15Var.y;
        boolean[] zArr = u15Var.d;
        if (!zArr[i2]) {
            vz2 vz2Var = u15Var.a.a(i2).e[0];
            k14 k14Var = v15Var.f;
            k14Var.a(new r04(1, z84.d(vz2Var.m), vz2Var, 0, null, k14Var.a(v15Var.H), C.TIME_UNSET));
            zArr[i2] = true;
        }
        int iA = v15Var.t[i2].a(a03Var, mi0Var, i, v15Var.L);
        if (iA == -3) {
            v15Var.a(i2);
        }
        return iA;
    }

    @Override // yads.mc5
    public final int b(long j) throws Throwable {
        v15 v15Var = this.c;
        int i = this.b;
        if (v15Var.E || v15Var.I != C.TIME_UNSET) {
            return 0;
        }
        v15Var.c();
        u15 u15Var = v15Var.y;
        boolean[] zArr = u15Var.d;
        if (!zArr[i]) {
            vz2 vz2Var = u15Var.a.a(i).e[0];
            k14 k14Var = v15Var.f;
            k14Var.a(new r04(1, z84.d(vz2Var.m), vz2Var, 0, null, k14Var.a(v15Var.H), C.TIME_UNSET));
            zArr[i] = true;
        }
        lc5 lc5Var = v15Var.t[i];
        int iB = lc5Var.b(j, v15Var.L);
        synchronized (lc5Var) {
            if (iB >= 0) {
                int i2 = lc5Var.s + iB;
                if (i2 <= lc5Var.p) {
                    lc5Var.s = i2;
                }
            }
            throw new IllegalArgumentException();
        }
        if (iB == 0) {
            v15Var.a(i);
        }
        return iB;
    }

    @Override // yads.mc5
    public final boolean c() {
        v15 v15Var = this.c;
        return !v15Var.E && v15Var.I == C.TIME_UNSET && v15Var.t[this.b].a(v15Var.L);
    }

    @Override // yads.mc5
    public final void a() throws IOException {
        v15 v15Var = this.c;
        lc5 lc5Var = v15Var.t[this.b];
        eo2 eo2Var = lc5Var.h;
        if (eo2Var != null && eo2Var.c() == 1) {
            rl2 rl2VarA = lc5Var.h.a();
            rl2VarA.getClass();
            throw rl2VarA;
        }
        v15Var.l.a(v15Var.e.a(v15Var.C));
    }
}
