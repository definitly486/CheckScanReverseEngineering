package defpackage;

/* JADX INFO: loaded from: classes2.dex */
public final class m72 {
    public final String a;
    public final ya5 b;

    public m72(String str, ya5 ya5Var) {
        this.a = str;
        this.b = ya5Var;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!m72.class.equals(obj != null ? obj.getClass() : null)) {
            return false;
        }
        obj.getClass();
        m72 m72Var = (m72) obj;
        return this.a.equals(m72Var.a) && this.b.equals(m72Var.b);
    }

    public final int hashCode() {
        return this.b.hashCode() + (this.a.hashCode() * 31);
    }
}
