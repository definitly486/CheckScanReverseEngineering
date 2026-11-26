package defpackage;

/* JADX INFO: loaded from: classes5.dex */
public final class ia4 extends rb4 {
    public final nl3<Throwable, j59> f;

    /* JADX WARN: Multi-variable type inference failed */
    public ia4(nl3<? super Throwable, j59> nl3Var) {
        this.f = nl3Var;
    }

    @Override // defpackage.rb4
    public final boolean k() {
        return false;
    }

    @Override // defpackage.rb4
    public final void l(Throwable th) {
        this.f.invoke(th);
    }
}
