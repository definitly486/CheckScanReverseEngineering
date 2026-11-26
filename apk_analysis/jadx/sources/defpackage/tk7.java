package defpackage;

/* JADX INFO: loaded from: classes5.dex */
public final class tk7 extends l79<hu8> {
    public final h16 e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public tk7(h16 h16Var) {
        super(iu8.c, h16Var == h16.ZERO ? 2 : 1, h16Var == h16.SPACE ? 2 : null);
        h16Var.getClass();
        j79<hu8> j79Var = iu8.a;
        this.e = h16Var;
    }

    public final boolean equals(Object obj) {
        if (obj instanceof tk7) {
            return this.e == ((tk7) obj).e;
        }
        return false;
    }

    public final int hashCode() {
        return this.e.hashCode();
    }
}
