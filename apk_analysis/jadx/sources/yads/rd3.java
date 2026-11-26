package yads;

import defpackage.kv2;

/* JADX INFO: loaded from: classes6.dex */
public final class rd3 {
    public final int a;
    public final int b;
    public final String c;
    public final String d;
    public final zn5 e;
    public final boolean f;
    public final String g;

    public rd3(int i, int i2, String str, String str2, zn5 zn5Var, boolean z, String str3) {
        this.a = i;
        this.b = i2;
        this.c = str;
        this.d = str2;
        this.e = zn5Var;
        this.f = z;
        this.g = str3;
    }

    public final int a() {
        return this.b;
    }

    public final int b() {
        return this.a;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof rd3)) {
            return false;
        }
        rd3 rd3Var = (rd3) obj;
        return this.a == rd3Var.a && this.b == rd3Var.b && defpackage.aa4.e(this.c, rd3Var.c) && defpackage.aa4.e(this.d, rd3Var.d) && defpackage.aa4.e(this.e, rd3Var.e) && this.f == rd3Var.f && defpackage.aa4.e(this.g, rd3Var.g);
    }

    public final int hashCode() {
        int iA = l4.a(i96.a(this.b, Integer.hashCode(this.a) * 31, 31), 31, this.c);
        String str = this.d;
        int iHashCode = (iA + (str == null ? 0 : str.hashCode())) * 31;
        zn5 zn5Var = this.e;
        int iA2 = m7.a((iHashCode + (zn5Var == null ? 0 : zn5Var.hashCode())) * 31, 31, this.f);
        String str2 = this.g;
        return iA2 + (str2 != null ? str2.hashCode() : 0);
    }

    public final String toString() {
        int i = this.a;
        int i2 = this.b;
        String str = this.c;
        String str2 = this.d;
        zn5 zn5Var = this.e;
        boolean z = this.f;
        String str3 = this.g;
        StringBuilder sbF = defpackage.bg.f(i, i2, "ImageValue(width=", ", height=", ", url=");
        kv2.c(sbF, str, ", sizeType=", str2, ", smartCenterSettings=");
        sbF.append(zn5Var);
        sbF.append(", preload=");
        sbF.append(z);
        sbF.append(", preview=");
        return defpackage.me0.d(sbF, str3, ")");
    }
}
