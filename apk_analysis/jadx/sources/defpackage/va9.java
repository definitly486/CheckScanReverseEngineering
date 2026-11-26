package defpackage;

/* JADX INFO: loaded from: classes5.dex */
public final class va9 extends l79<ea9> {
    public final h16 e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public va9(h16 h16Var) {
        super(yu5.b, h16Var == h16.ZERO ? 2 : 1, h16Var == h16.SPACE ? 2 : null);
        h16Var.getClass();
        j79<ea9> j79Var = yu5.a;
        this.e = h16Var;
    }

    public final boolean equals(Object obj) {
        if (obj instanceof va9) {
            return this.e == ((va9) obj).e;
        }
        return false;
    }

    public final int hashCode() {
        return this.e.hashCode();
    }
}
