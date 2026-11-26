package defpackage;

/* JADX INFO: loaded from: classes5.dex */
public final class kp2 implements q21 {
    public final hp2 b;

    public kp2(hp2 hp2Var) {
        this.b = hp2Var;
    }

    @Override // defpackage.q21
    public final void b(Throwable th) {
        this.b.dispose();
    }

    public final String toString() {
        return "DisposeOnCancel[" + this.b + ']';
    }
}
