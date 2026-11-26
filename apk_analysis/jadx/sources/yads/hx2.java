package yads;

import java.util.Iterator;

/* JADX INFO: loaded from: classes6.dex */
public final class hx2 implements vc6 {
    public final t5 a;
    public final hl4 b;
    public final al4 c;
    public final Iterator d;
    public final jd0 e;

    public hx2(t5 t5Var, hl4 hl4Var, al4 al4Var, Iterator it, jd0 jd0Var) {
        this.a = t5Var;
        this.b = hl4Var;
        this.c = al4Var;
        this.d = it;
        this.e = jd0Var;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // yads.vc6
    public final void a() {
        if (this.d.hasNext()) {
            defpackage.b36 b36Var = (defpackage.b36) this.d.next();
            String str = (String) b36Var.b;
            String str2 = (String) b36Var.c;
            t5 t5Var = this.a;
            hl4 hl4Var = this.b;
            al4 al4Var = this.c;
            al4Var.a(str, new hx2(t5Var, hl4Var, al4Var, this.d, this.e), str2);
        }
    }

    @Override // yads.vc6
    public final void b() {
        this.e.a(id0.FAILED_TO_CREATE_DOWNLOAD_MANAGER);
    }

    @Override // yads.vc6
    public final void c() {
        a();
    }
}
