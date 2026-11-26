package defpackage;

/* JADX INFO: loaded from: classes5.dex */
public final class mp2 extends rb4 {
    public final hp2 f;

    public mp2(hp2 hp2Var) {
        this.f = hp2Var;
    }

    @Override // defpackage.rb4
    public final boolean k() {
        return false;
    }

    @Override // defpackage.rb4
    public final void l(Throwable th) {
        this.f.dispose();
    }
}
