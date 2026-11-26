package defpackage;

/* JADX INFO: loaded from: classes5.dex */
public final class am9 extends qx7<k92> {
    public final h16 d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public am9(h16 h16Var) {
        super(l92.a, Integer.valueOf(h16Var != h16.ZERO ? 1 : 4), h16Var != h16.SPACE ? null : 4);
        h16Var.getClass();
        this.d = h16Var;
    }

    public final boolean equals(Object obj) {
        if (obj instanceof am9) {
            return this.d == ((am9) obj).d;
        }
        return false;
    }

    public final int hashCode() {
        return Boolean.hashCode(false) + (this.d.hashCode() * 31);
    }
}
