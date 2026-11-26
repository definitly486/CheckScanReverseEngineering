package yads;

/* JADX INFO: loaded from: classes6.dex */
public final class f66 implements i66 {
    public final e66 a;
    public final String b;
    public final String c;

    public f66(e66 e66Var, String str, String str2) {
        this.a = e66Var;
        this.b = str;
        this.c = str2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof f66)) {
            return false;
        }
        f66 f66Var = (f66) obj;
        return this.a == f66Var.a && defpackage.aa4.e(this.b, f66Var.b) && defpackage.aa4.e(this.c, f66Var.c);
    }

    public final int hashCode() {
        int iHashCode = this.a.hashCode() * 31;
        String str = this.b;
        int iHashCode2 = (iHashCode + (str == null ? 0 : str.hashCode())) * 31;
        String str2 = this.c;
        return iHashCode2 + (str2 != null ? str2.hashCode() : 0);
    }

    public final String toString() {
        e66 e66Var = this.a;
        String str = this.b;
        String str2 = this.c;
        StringBuilder sb = new StringBuilder("Failure(status=");
        sb.append(e66Var);
        sb.append(", assetName=");
        sb.append(str);
        sb.append(", description=");
        return defpackage.me0.d(sb, str2, ")");
    }
}
