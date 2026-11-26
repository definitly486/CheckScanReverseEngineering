package yads;

/* JADX INFO: loaded from: classes6.dex */
public final class r4 implements ds {
    public final /* synthetic */ defpackage.c31 a;

    public r4(defpackage.c31 c31Var) {
        this.a = c31Var;
    }

    @Override // yads.y85
    public final void a(Object obj) {
        d9 d9Var = (d9) obj;
        if (this.a.t() instanceof defpackage.no5) {
            this.a.resumeWith(new k70(d9Var));
        }
    }

    @Override // yads.x85
    public final void a(hi6 hi6Var) {
        if (this.a.t() instanceof defpackage.no5) {
            this.a.resumeWith(new j70(hi6Var));
        }
    }
}
