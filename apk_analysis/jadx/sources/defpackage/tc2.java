package defpackage;

/* JADX INFO: loaded from: classes5.dex */
public final class tc2 extends xh5<k92> {
    public final vc2 d;

    public tc2(vc2 vc2Var) {
        super(l92.d, vc2Var.a, "dayOfWeekName");
        this.d = vc2Var;
    }

    public final boolean equals(Object obj) {
        return (obj instanceof tc2) && this.d.a.equals(((tc2) obj).d.a);
    }

    public final int hashCode() {
        return this.d.a.hashCode();
    }
}
