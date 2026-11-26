package defpackage;

/* JADX INFO: loaded from: classes5.dex */
public final class ex2 implements a44 {
    public final boolean b;

    public ex2(boolean z) {
        this.b = z;
    }

    @Override // defpackage.a44
    public final bo5 b() {
        return null;
    }

    @Override // defpackage.a44
    public final boolean isActive() {
        return this.b;
    }

    public final String toString() {
        return xp.e(new StringBuilder("Empty{"), this.b ? "Active" : "New", '}');
    }
}
