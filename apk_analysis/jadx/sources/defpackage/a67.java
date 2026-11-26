package defpackage;

/* JADX INFO: loaded from: classes5.dex */
public final class a67 extends rb4 {
    public final c31 f;

    public a67(c31 c31Var) {
        this.f = c31Var;
    }

    @Override // defpackage.rb4
    public final boolean k() {
        return false;
    }

    @Override // defpackage.rb4
    public final void l(Throwable th) {
        this.f.resumeWith(j59.a);
    }
}
