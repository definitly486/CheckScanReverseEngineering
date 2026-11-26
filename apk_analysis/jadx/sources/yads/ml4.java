package yads;

import android.content.Context;

/* JADX INFO: loaded from: classes6.dex */
public final class ml4 implements wa6 {
    public final gr2 a;
    public final we3 b;
    public final za6 c;
    public final r76 d;
    public bb6 e;

    public ml4(Context context, d9 d9Var, bf5 bf5Var, gr2 gr2Var, ja6 ja6Var, em4 em4Var, cb6 cb6Var, jf6 jf6Var, ob6 ob6Var, we3 we3Var) {
        za6 za6Var = new za6(context, bf5Var, cb6Var);
        this.a = gr2Var;
        this.b = we3Var;
        this.c = za6Var;
        r76 r76Var = new r76(context, bf5Var, new vk4(gr2Var), em4Var, ja6Var, new vl4(em4Var), new ec6(), jf6Var, ob6Var, new ll4(this), d9Var, true);
        this.d = r76Var;
        ub6 ub6Var = r76Var.g;
        ub6Var.i.setValue(ub6Var, ub6.k[0], cb6Var);
    }

    @Override // yads.wa6
    public final void a(bb6 bb6Var) {
        this.e = bb6Var;
    }

    @Override // yads.wa6
    public final void play() {
        this.d.a();
    }

    @Override // yads.wa6
    public final void stop() {
        r76 r76Var = this.d;
        r76Var.h.b();
        r76Var.a.pauseAd();
        this.a.g();
    }
}
