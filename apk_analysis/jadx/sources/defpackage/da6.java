package defpackage;

/* JADX INFO: loaded from: classes5.dex */
public final class da6<T> extends k1<T> {
    public final ne4<T> a;
    public final kx2 b = kx2.b;
    public final cl4 c = nm4.a(po4.PUBLICATION, new kg0(this, 3));

    public da6(ne4<T> ne4Var) {
        this.a = ne4Var;
    }

    @Override // defpackage.k1
    public final ne4<T> c() {
        return this.a;
    }

    @Override // defpackage.xp7, defpackage.xl2
    public final mp7 getDescriptor() {
        return (mp7) this.c.getValue();
    }

    public final String toString() {
        return "kotlinx.serialization.PolymorphicSerializer(baseClass: " + this.a + ')';
    }
}
