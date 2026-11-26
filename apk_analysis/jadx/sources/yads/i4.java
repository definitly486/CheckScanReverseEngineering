package yads;

/* JADX INFO: loaded from: classes6.dex */
public final class i4 extends hi6 {
    public static final /* synthetic */ int d = 0;
    public final o4 c;

    public i4(o4 o4Var) {
        super((en4) null);
        this.c = o4Var;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!i4.class.equals(obj != null ? obj.getClass() : null)) {
            return false;
        }
        obj.getClass();
        return this.c == ((i4) obj).c;
    }

    public final int hashCode() {
        return this.c.hashCode();
    }

    public i4(o4 o4Var, en4 en4Var) {
        super(en4Var);
        this.c = o4Var;
    }
}
