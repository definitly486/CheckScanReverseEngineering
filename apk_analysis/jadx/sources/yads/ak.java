package yads;

/* JADX INFO: loaded from: classes6.dex */
public final class ak {
    public final String a;
    public final String b;
    public final Object c;
    public final ot3 d;
    public final boolean e;
    public final boolean f;
    public final wr3 g;

    public ak(String str, String str2, Object obj, ot3 ot3Var, boolean z, boolean z2, wr3 wr3Var) {
        this.a = str;
        this.b = str2;
        this.c = obj;
        this.d = ot3Var;
        this.e = z;
        this.f = z2;
        this.g = wr3Var;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ak)) {
            return false;
        }
        ak akVar = (ak) obj;
        return defpackage.aa4.e(this.a, akVar.a) && defpackage.aa4.e(this.b, akVar.b) && defpackage.aa4.e(this.c, akVar.c) && defpackage.aa4.e(this.d, akVar.d) && this.e == akVar.e && this.f == akVar.f && defpackage.aa4.e(this.g, akVar.g);
    }

    public final int hashCode() {
        int iA = l4.a(this.a.hashCode() * 31, 31, this.b);
        Object obj = this.c;
        int iHashCode = (iA + (obj == null ? 0 : obj.hashCode())) * 31;
        ot3 ot3Var = this.d;
        int iA2 = m7.a(m7.a((iHashCode + (ot3Var == null ? 0 : ot3Var.hashCode())) * 31, 31, this.e), 31, this.f);
        wr3 wr3Var = this.g;
        return iA2 + (wr3Var != null ? wr3Var.hashCode() : 0);
    }

    public final String toString() {
        String str = this.a;
        String str2 = this.b;
        Object obj = this.c;
        ot3 ot3Var = this.d;
        boolean z = this.e;
        boolean z2 = this.f;
        wr3 wr3Var = this.g;
        StringBuilder sbD = defpackage.ad2.d("Asset(name=", str, ", type=", str2, ", value=");
        sbD.append(obj);
        sbD.append(", link=");
        sbD.append(ot3Var);
        sbD.append(", isClickable=");
        sbD.append(z);
        sbD.append(", isRequired=");
        sbD.append(z2);
        sbD.append(", layoutRestriction=");
        sbD.append(wr3Var);
        sbD.append(")");
        return sbD.toString();
    }
}
