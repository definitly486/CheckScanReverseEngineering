package defpackage;

/* JADX INFO: loaded from: classes5.dex */
public final class w39 implements kv6 {
    public final ne4<?> a;
    public final String b;

    public w39(ne4<?> ne4Var) {
        this.a = ne4Var;
        this.b = oe4.a(ne4Var);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return obj != null && w39.class == obj.getClass() && this.b.equals(((w39) obj).b);
    }

    @Override // defpackage.kv6
    public final String getValue() {
        return this.b;
    }

    public final int hashCode() {
        return this.b.hashCode();
    }

    public final String toString() {
        return this.b;
    }
}
