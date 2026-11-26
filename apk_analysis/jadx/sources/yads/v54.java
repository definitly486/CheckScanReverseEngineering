package yads;

/* JADX INFO: loaded from: classes6.dex */
public final class v54 {
    public final String a;
    public final String b;

    public v54(String str, String str2) {
        this.a = str;
        this.b = str2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof v54)) {
            return false;
        }
        v54 v54Var = (v54) obj;
        return defpackage.aa4.e(this.a, v54Var.a) && defpackage.aa4.e(this.b, v54Var.b);
    }

    public final int hashCode() {
        return this.b.hashCode() + (this.a.hashCode() * 31);
    }

    public final String toString() {
        return defpackage.n2.d("MediationAdapterSignature(format=", this.a, ", className=", this.b, ")");
    }
}
