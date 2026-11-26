package yads;

import java.util.Map;

/* JADX INFO: loaded from: classes6.dex */
public final class ll4 implements ya6 {
    public final /* synthetic */ ml4 a;

    public ll4(ml4 ml4Var) {
        this.a = ml4Var;
    }

    @Override // yads.ya6
    public final void a(ja6 ja6Var, gb6 gb6Var) {
        this.a.a.a(gb6Var);
        bb6 bb6Var = this.a.e;
        if (bb6Var != null) {
            bb6Var.a();
        }
    }

    @Override // yads.ya6
    public final void b(ja6 ja6Var) {
        za6 za6Var = this.a.c;
        za6Var.getClass();
        e75 e75Var = e75.AD_LOADING_RESULT;
        h75 h75VarA = za6Var.a.a();
        Map map = h75VarA.a;
        za6Var.b.a(new g75("video_ad_start", defpackage.n05.n(map), h75VarA.b));
        bb6 bb6Var = this.a.e;
        if (bb6Var != null) {
            bb6Var.c();
        }
    }

    @Override // yads.ya6
    public final void c(ja6 ja6Var) {
        za6 za6Var = this.a.c;
        za6Var.getClass();
        e75 e75Var = e75.AD_LOADING_RESULT;
        h75 h75VarA = za6Var.a.a();
        Map map = h75VarA.a;
        za6Var.b.a(new g75("video_ad_complete", defpackage.n05.n(map), h75VarA.b));
        bb6 bb6Var = this.a.e;
        if (bb6Var != null) {
            bb6Var.b();
        }
    }

    @Override // yads.ya6
    public final void d(ja6 ja6Var) {
    }

    @Override // yads.ya6
    public final void f(ja6 ja6Var) {
    }

    @Override // yads.ya6
    public final void g(ja6 ja6Var) {
    }

    @Override // yads.ya6
    public final void h(ja6 ja6Var) {
        bb6 bb6Var = this.a.e;
        if (bb6Var != null) {
            bb6Var.b();
        }
    }

    @Override // yads.ya6
    public final void i(ja6 ja6Var) {
        this.a.b.h();
    }

    @Override // yads.ya6
    public final void j(ja6 ja6Var) {
        this.a.d.a.d();
    }

    @Override // yads.ya6
    public final void k(ja6 ja6Var) {
    }

    @Override // yads.ya6
    public final void a(ja6 ja6Var, float f) {
    }

    @Override // yads.ya6
    public final void a(ja6 ja6Var) {
        this.a.b.d();
    }
}
