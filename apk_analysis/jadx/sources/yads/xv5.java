package yads;

/* JADX INFO: loaded from: classes6.dex */
public final class xv5 {
    public final String a;
    public final int b;
    public final int c;
    public final g12 d;
    public final String e;
    public final tf1 f;
    public final Integer g;
    public final Integer h;
    public final int i;
    public final int j;

    public xv5(String str, int i, int i2, g12 g12Var, String str2, tf1 tf1Var, Integer num, Integer num2, int i3) {
        this.a = str;
        this.b = i;
        this.c = i2;
        this.d = g12Var;
        this.e = str2;
        this.f = tf1Var;
        this.g = num;
        this.h = num2;
        this.i = i3;
        this.j = str.length();
    }

    public final Integer a() {
        return this.h;
    }

    public final int b() {
        return this.j;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof xv5)) {
            return false;
        }
        xv5 xv5Var = (xv5) obj;
        return defpackage.aa4.e(this.a, xv5Var.a) && this.b == xv5Var.b && this.c == xv5Var.c && this.d == xv5Var.d && defpackage.aa4.e(this.e, xv5Var.e) && this.f == xv5Var.f && defpackage.aa4.e(this.g, xv5Var.g) && defpackage.aa4.e(this.h, xv5Var.h) && this.i == xv5Var.i;
    }

    public final int hashCode() {
        int iHashCode = (this.d.hashCode() + i96.a(this.c, i96.a(this.b, this.a.hashCode() * 31, 31), 31)) * 31;
        String str = this.e;
        int iHashCode2 = (iHashCode + (str == null ? 0 : str.hashCode())) * 31;
        tf1 tf1Var = this.f;
        int iHashCode3 = (iHashCode2 + (tf1Var == null ? 0 : tf1Var.hashCode())) * 31;
        Integer num = this.g;
        int iHashCode4 = (iHashCode3 + (num == null ? 0 : num.hashCode())) * 31;
        Integer num2 = this.h;
        return Integer.hashCode(this.i) + ((iHashCode4 + (num2 != null ? num2.hashCode() : 0)) * 31);
    }

    public final String toString() {
        String str = this.a;
        int i = this.b;
        int i2 = this.c;
        g12 g12Var = this.d;
        String str2 = this.e;
        tf1 tf1Var = this.f;
        Integer num = this.g;
        Integer num2 = this.h;
        int i3 = this.i;
        StringBuilder sbA = defpackage.mz0.a(i, "TextData(text=", str, ", fontSize=", ", fontSizeValue=");
        sbA.append(i2);
        sbA.append(", fontSizeUnit=");
        sbA.append(g12Var);
        sbA.append(", fontFamily=");
        sbA.append(str2);
        sbA.append(", fontWeight=");
        sbA.append(tf1Var);
        sbA.append(", fontWeightValue=");
        sbA.append(num);
        sbA.append(", lineHeight=");
        sbA.append(num2);
        sbA.append(", textColor=");
        return defpackage.l2.e(sbA, ")", i3);
    }
}
