package defpackage;

/* JADX INFO: loaded from: classes5.dex */
public final class sc2 extends l79<k92> {
    public final h16 e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public sc2(h16 h16Var) {
        super(l92.c, h16Var == h16.ZERO ? 2 : 1, h16Var == h16.SPACE ? 2 : null);
        h16Var.getClass();
        fp3<k92, Integer> fp3Var = l92.a;
        this.e = h16Var;
    }

    public final boolean equals(Object obj) {
        if (obj instanceof sc2) {
            return this.e == ((sc2) obj).e;
        }
        return false;
    }

    public final int hashCode() {
        return this.e.hashCode();
    }
}
