package defpackage;

/* JADX INFO: loaded from: classes3.dex */
public final class tm5 {
    public final String a;
    public final String b;
    public final pm5 c;
    public final um5 d;
    public final b53 e;

    public tm5(String str, String str2, pm5 pm5Var, um5 um5Var, b53 b53Var) {
        this.a = str;
        this.b = str2;
        this.c = pm5Var;
        this.d = um5Var;
        this.e = b53Var;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof tm5)) {
            return false;
        }
        tm5 tm5Var = (tm5) obj;
        return this.a.equals(tm5Var.a) && aa4.e(this.b, tm5Var.b) && this.c.equals(tm5Var.c) && aa4.e(this.d, tm5Var.d) && aa4.e(this.e, tm5Var.e);
    }

    public final int hashCode() {
        int iC = k.c(this.c.a, zg.b(this.a.hashCode() * 31, 31, this.b), 31);
        um5 um5Var = this.d;
        return this.e.a.hashCode() + ((iC + (um5Var == null ? 0 : um5Var.hashCode())) * 31);
    }

    public final String toString() {
        StringBuilder sbD = ad2.d("NetworkRequest(url=", this.a, ", method=", this.b, ", headers=");
        sbD.append(this.c);
        sbD.append(", body=");
        sbD.append(this.d);
        sbD.append(", extras=");
        sbD.append(this.e);
        sbD.append(")");
        return sbD.toString();
    }
}
