package yads;

import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
public final class ir2 implements mt5 {
    public final long b;
    public final k55 c;

    public ir2(long j, k55 k55Var) {
        this.b = j;
        this.c = k55Var;
    }

    @Override // yads.mt5
    public final long a(int i) {
        if (i == 0) {
            return this.b;
        }
        defpackage.mi2.b();
        return 0L;
    }

    @Override // yads.mt5
    public final List b(long j) {
        if (j >= this.b) {
            return this.c;
        }
        le3 le3Var = oe3.c;
        return k55.f;
    }

    @Override // yads.mt5
    public final int a(long j) {
        return this.b > j ? 0 : -1;
    }

    @Override // yads.mt5
    public final int a() {
        return 1;
    }
}
