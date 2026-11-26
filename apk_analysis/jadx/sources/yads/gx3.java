package yads;

import androidx.media3.common.C;

/* JADX INFO: loaded from: classes6.dex */
public final class gx3 extends kx5 {
    public final p04 c;

    public gx3(p04 p04Var) {
        this.c = p04Var;
    }

    @Override // yads.kx5
    public final jx5 a(int i, jx5 jx5Var, long j) {
        jx5Var.a(jx5.s, this.c, null, C.TIME_UNSET, C.TIME_UNSET, C.TIME_UNSET, false, true, null, 0L, C.TIME_UNSET, 0, 0, 0L);
        jx5Var.m = true;
        return jx5Var;
    }

    @Override // yads.kx5
    public final int b() {
        return 1;
    }

    @Override // yads.kx5
    public final int a() {
        return 1;
    }

    @Override // yads.kx5
    public final hx5 a(int i, hx5 hx5Var, boolean z) {
        hx5Var.a(z ? 0 : null, z ? fx3.f : null, 0, C.TIME_UNSET, 0L, a6.g, true);
        return hx5Var;
    }

    @Override // yads.kx5
    public final int a(Object obj) {
        return obj == fx3.f ? 0 : -1;
    }

    @Override // yads.kx5
    public final Object a(int i) {
        return fx3.f;
    }
}
