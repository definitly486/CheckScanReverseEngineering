package yads;

import android.net.Uri;
import java.util.Collections;
import java.util.Map;

/* JADX INFO: loaded from: classes6.dex */
public final class jt4 implements nu3 {
    public final long a;
    public final bd0 b;
    public final int c;
    public final rq5 d;
    public final it4 e;
    public volatile Object f;

    public jt4(wc0 wc0Var, Uri uri, int i, it4 it4Var) {
        Map map = Collections.EMPTY_MAP;
        zj.a(uri, "The uri must be set.");
        bd0 bd0Var = new bd0(uri, 0L, 1, null, map, 0L, -1L, null, 1, null);
        this.d = new rq5(wc0Var);
        this.b = bd0Var;
        this.c = i;
        this.e = it4Var;
        this.a = cu3.a.getAndIncrement();
    }

    @Override // yads.nu3
    public final void a() {
        this.d.b = 0L;
        yc0 yc0Var = new yc0(this.d, this.b);
        try {
            yc0Var.b.a(yc0Var.c);
            yc0Var.e = true;
            Uri uriD = this.d.a.d();
            uriD.getClass();
            this.f = this.e.a(uriD, yc0Var);
        } finally {
            u56.a(yc0Var);
        }
    }

    @Override // yads.nu3
    public final void b() {
    }
}
