package defpackage;

/* JADX INFO: loaded from: classes5.dex */
public final class hi1 extends rb4 implements gi1 {
    public final sb4 f;

    public hi1(sb4 sb4Var) {
        this.f = sb4Var;
    }

    @Override // defpackage.gi1
    public final boolean a(Throwable th) {
        return j().B(th);
    }

    @Override // defpackage.rb4
    public final boolean k() {
        return true;
    }

    @Override // defpackage.rb4
    public final void l(Throwable th) {
        this.f.w(j());
    }
}
