package yads;

import java.util.Iterator;

/* JADX INFO: loaded from: classes6.dex */
public final class gx2 implements vc6 {
    public final t5 a;
    public final hl4 b;
    public final hx2 c;

    public gx2(t5 t5Var, hl4 hl4Var, al4 al4Var, Iterator it, jd0 jd0Var) {
        this.a = t5Var;
        this.b = hl4Var;
        this.c = new hx2(t5Var, hl4Var, al4Var, it, jd0Var);
    }

    @Override // yads.vc6
    public final void a() {
        this.a.a(s5.VIDEO_CACHING);
        this.b.a();
        this.c.a();
    }

    @Override // yads.vc6
    public final void b() {
        this.a.a(s5.VIDEO_CACHING);
        this.b.a();
        this.c.e.a(id0.FAILED_TO_CREATE_DOWNLOAD_MANAGER);
    }

    @Override // yads.vc6
    public final void c() {
    }
}
