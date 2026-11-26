package yads;

import android.net.Uri;

/* JADX INFO: loaded from: classes6.dex */
public final class fi5 extends rb5 {
    public final /* synthetic */ cw i;
    public final /* synthetic */ bd0 j;
    public final /* synthetic */ ji5 k;

    public fi5(ji5 ji5Var, cw cwVar, bd0 bd0Var) {
        this.k = ji5Var;
        this.i = cwVar;
        this.j = bd0Var;
    }

    @Override // yads.rb5
    public final Object b() {
        cw cwVar = this.i;
        mc0 mc0Var = this.k.b;
        bd0 bd0Var = this.j;
        rq5 rq5Var = new rq5(cwVar);
        cu3.a.getAndIncrement();
        rq5Var.b = 0L;
        yc0 yc0Var = new yc0(rq5Var, bd0Var);
        try {
            yc0Var.b.a(yc0Var.c);
            yc0Var.e = true;
            Uri uri = cwVar.i;
            uri.getClass();
            return (kc0) mc0Var.a(uri, yc0Var);
        } finally {
            u56.a(yc0Var);
        }
    }
}
