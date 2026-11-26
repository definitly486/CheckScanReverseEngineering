package defpackage;

/* JADX INFO: loaded from: classes5.dex */
public final class ew3 {
    public final String a;
    public final dn1.b b;

    public ew3(String str, dn1.b bVar) {
        this.a = str;
        this.b = bVar;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ew3)) {
            return false;
        }
        ew3 ew3Var = (ew3) obj;
        return this.a.equals(ew3Var.a) && aa4.e(this.b, ew3Var.b);
    }

    public final int hashCode() {
        int iHashCode = this.a.hashCode() * 31;
        dn1.b bVar = this.b;
        return iHashCode + (bVar == null ? 0 : bVar.hashCode());
    }

    public final String toString() {
        return "HikeFixed(fixed=" + this.a + ", powerCode=" + this.b + ")";
    }
}
