package yads;

import java.util.Collections;
import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
public final class lt5 implements mt5 {
    public final sb0[] b;
    public final long[] c;

    public lt5(sb0[] sb0VarArr, long[] jArr) {
        this.b = sb0VarArr;
        this.c = jArr;
    }

    @Override // yads.mt5
    public final long a(int i) {
        if (i < 0) {
            defpackage.mi2.b();
            return 0L;
        }
        long[] jArr = this.c;
        if (i < jArr.length) {
            return jArr[i];
        }
        defpackage.mi2.b();
        return 0L;
    }

    @Override // yads.mt5
    public final List b(long j) {
        sb0 sb0Var;
        int iB = u56.b(this.c, j, false);
        return (iB == -1 || (sb0Var = this.b[iB]) == sb0.s) ? Collections.EMPTY_LIST : Collections.singletonList(sb0Var);
    }

    @Override // yads.mt5
    public final int a() {
        return this.c.length;
    }

    @Override // yads.mt5
    public final int a(long j) {
        int iA = u56.a(this.c, j, false);
        if (iA < this.c.length) {
            return iA;
        }
        return -1;
    }
}
