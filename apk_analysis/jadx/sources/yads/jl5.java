package yads;

import android.net.Uri;
import androidx.media3.common.C;
import java.util.Collections;
import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
public final class jl5 extends kx5 {
    public static final Object h = new Object();
    public final long c;
    public final long d;
    public final boolean e;
    public final p04 f;
    public final j04 g;

    static {
        le3 le3Var = oe3.c;
        k55 k55Var = k55.f;
        List list = Collections.EMPTY_LIST;
        k55 k55Var2 = k55.f;
        m04 m04Var = m04.d;
        Uri uri = Uri.EMPTY;
        if (uri != null) {
            new k04(uri, null, list, null, k55Var2);
        }
        t04 t04Var = t04.H;
    }

    public jl5(long j, boolean z, boolean z2, p04 p04Var) {
        j04 j04Var = z2 ? p04Var.d : null;
        this.c = j;
        this.d = j;
        this.e = z;
        p04Var.getClass();
        this.f = p04Var;
        this.g = j04Var;
    }

    @Override // yads.kx5
    public final jx5 a(int i, jx5 jx5Var, long j) {
        zj.a(i, 1);
        return jx5Var.a(jx5.s, this.f, null, C.TIME_UNSET, C.TIME_UNSET, C.TIME_UNSET, this.e, false, this.g, 0L, this.d, 0, 0, 0L);
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
        zj.a(i, 1);
        Object obj = z ? h : null;
        long j = this.c;
        hx5Var.getClass();
        return hx5Var.a(null, obj, 0, j, 0L, a6.g, false);
    }

    @Override // yads.kx5
    public final int a(Object obj) {
        return h.equals(obj) ? 0 : -1;
    }

    @Override // yads.kx5
    public final Object a(int i) {
        zj.a(i, 1);
        return h;
    }
}
