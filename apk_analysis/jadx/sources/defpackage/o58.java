package defpackage;

/* JADX INFO: loaded from: classes5.dex */
public final class o58 implements f34 {
    public final String a;
    public final String b;
    public final String c;
    public final int d;
    public final b06 e;

    public o58(int i, b06 b06Var, String str, String str2, String str3) {
        str3.getClass();
        this.a = str;
        this.b = str2;
        this.c = str3;
        this.d = i;
        this.e = b06Var;
    }

    @Override // defpackage.f34
    public final int d() {
        return this.d;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof o58)) {
            return false;
        }
        o58 o58Var = (o58) obj;
        return aa4.e(this.a, o58Var.a) && this.b.equals(o58Var.b) && this.c.equals(o58Var.c) && this.d == o58Var.d && aa4.e(this.e, o58Var.e);
    }

    public final int hashCode() {
        String str = this.a;
        int iB = ej0.b(this.d, zg.b(zg.b((str == null ? 0 : str.hashCode()) * 31, 961, this.b), 31, this.c), 31);
        b06 b06Var = this.e;
        return iB + (b06Var != null ? b06Var.hashCode() : 0);
    }

    public final String toString() {
        StringBuilder sbD = ad2.d("SpecialViewModel(imageUrl=", this.a, ", deeplink=", this.b, ", drawableRes=null, title=");
        o2.e(sbD, this.c, ", id=", this.d, ", ord=");
        sbD.append(this.e);
        sbD.append(")");
        return sbD.toString();
    }
}
