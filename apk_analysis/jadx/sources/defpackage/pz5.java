package defpackage;

import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public final class pz5 implements oz5 {
    public final iz5 a;

    public pz5(iz5 iz5Var) {
        this.a = iz5Var;
    }

    @Override // defpackage.oz5
    public final mz7 a(int i, int i2) {
        return this.a.c(i, i2, 15, null);
    }

    @Override // defpackage.oz5
    public final mz7<List<fz5>> b(int i) {
        return this.a.b(i);
    }

    @Override // defpackage.oz5
    public final mz7<List<py5>> c() {
        return this.a.a();
    }

    @Override // defpackage.oz5
    public final mz7 d(int i, long j) {
        return this.a.c(0, i, 15, Long.valueOf(j));
    }
}
