package yads;

/* JADX INFO: loaded from: classes6.dex */
public final class d74 {
    public final String a;
    public final c74 b;

    public d74(String str, c74 c74Var) {
        this.a = str;
        this.b = c74Var;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof d74)) {
            return false;
        }
        d74 d74Var = (d74) obj;
        return defpackage.aa4.e(this.a, d74Var.a) && this.b == d74Var.b;
    }

    public final int hashCode() {
        return this.b.hashCode() + (this.a.hashCode() * 31);
    }

    public final String toString() {
        return "MediationNetworkMessage(message=" + this.a + ", type=" + this.b + ")";
    }
}
