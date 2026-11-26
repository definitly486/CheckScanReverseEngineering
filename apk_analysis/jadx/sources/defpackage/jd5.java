package defpackage;

/* JADX INFO: loaded from: classes5.dex */
public final class jd5 extends xh5<k92> {
    public final kd5 d;

    public jd5(kd5 kd5Var) {
        super(l92.b, kd5Var.a, "monthName");
        this.d = kd5Var;
    }

    public final boolean equals(Object obj) {
        return (obj instanceof jd5) && this.d.a.equals(((jd5) obj).d.a);
    }

    public final int hashCode() {
        return this.d.a.hashCode();
    }
}
