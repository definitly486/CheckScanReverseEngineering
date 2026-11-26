package defpackage;

/* JADX INFO: loaded from: classes4.dex */
public final class gc9 {
    public final Integer a;
    public final Integer b;
    public final Integer c;
    public final Integer d;
    public boolean e;
    public final CharSequence f;
    public final Integer g;
    public final Integer h;
    public final Integer i;
    public final Integer j;
    public final Integer k;
    public final Integer l;
    public final Integer m;
    public final Integer n;

    public gc9(Integer num, Integer num2, Integer num3, Integer num4, String str, Integer num5, Integer num6, Integer num7, Integer num8, Integer num9, Integer num10, Integer num11, Integer num12, int i) {
        Integer num13 = (i & 1) != 0 ? null : num;
        Integer num14 = (i & 2) != 0 ? null : num2;
        Integer num15 = (i & 4) != 0 ? null : num3;
        Integer num16 = (i & 8) != 0 ? null : num4;
        String str2 = (i & 512) != 0 ? "" : str;
        Integer num17 = (i & 1024) != 0 ? null : num5;
        Integer num18 = (i & 2048) != 0 ? null : num6;
        Integer num19 = (i & 4096) != 0 ? null : num7;
        Integer num20 = (i & 8192) != 0 ? null : num8;
        Integer num21 = (i & 16384) != 0 ? null : num9;
        Integer num22 = (32768 & i) != 0 ? null : num10;
        Integer num23 = (65536 & i) != 0 ? null : num11;
        Integer num24 = (i & 131072) == 0 ? num12 : null;
        str2.getClass();
        this.a = num13;
        this.b = num14;
        this.c = num15;
        this.d = num16;
        this.e = false;
        this.f = str2;
        this.g = num17;
        this.h = num18;
        this.i = num19;
        this.j = num20;
        this.k = num21;
        this.l = num22;
        this.m = num23;
        this.n = num24;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof gc9)) {
            return false;
        }
        gc9 gc9Var = (gc9) obj;
        return aa4.e(this.a, gc9Var.a) && aa4.e(this.b, gc9Var.b) && aa4.e(this.c, gc9Var.c) && aa4.e(this.d, gc9Var.d) && this.e == gc9Var.e && aa4.e(this.f, gc9Var.f) && aa4.e(this.g, gc9Var.g) && aa4.e(this.h, gc9Var.h) && aa4.e(this.i, gc9Var.i) && aa4.e(this.j, gc9Var.j) && aa4.e(this.k, gc9Var.k) && aa4.e(this.l, gc9Var.l) && aa4.e(this.m, gc9Var.m) && aa4.e(this.n, gc9Var.n);
    }

    public final int hashCode() {
        Integer num = this.a;
        int iHashCode = (num == null ? 0 : num.hashCode()) * 31;
        Integer num2 = this.b;
        int iHashCode2 = (iHashCode + (num2 == null ? 0 : num2.hashCode())) * 31;
        Integer num3 = this.c;
        int iHashCode3 = (iHashCode2 + (num3 == null ? 0 : num3.hashCode())) * 31;
        Integer num4 = this.d;
        int iHashCode4 = (this.f.hashCode() + tg.c((iHashCode3 + (num4 == null ? 0 : num4.hashCode())) * 28629151, 31, this.e)) * 31;
        Integer num5 = this.g;
        int iHashCode5 = (iHashCode4 + (num5 == null ? 0 : num5.hashCode())) * 31;
        Integer num6 = this.h;
        int iHashCode6 = (iHashCode5 + (num6 == null ? 0 : num6.hashCode())) * 31;
        Integer num7 = this.i;
        int iHashCode7 = (iHashCode6 + (num7 == null ? 0 : num7.hashCode())) * 31;
        Integer num8 = this.j;
        int iHashCode8 = (iHashCode7 + (num8 == null ? 0 : num8.hashCode())) * 31;
        Integer num9 = this.k;
        int iHashCode9 = (iHashCode8 + (num9 == null ? 0 : num9.hashCode())) * 31;
        Integer num10 = this.l;
        int iHashCode10 = (iHashCode9 + (num10 == null ? 0 : num10.hashCode())) * 31;
        Integer num11 = this.m;
        int iHashCode11 = (iHashCode10 + (num11 == null ? 0 : num11.hashCode())) * 31;
        Integer num12 = this.n;
        return iHashCode11 + (num12 != null ? num12.hashCode() : 0);
    }

    public final String toString() {
        return "VectorTextViewParams(drawableStartRes=" + this.a + ", drawableEndRes=" + this.b + ", drawableBottomRes=" + this.c + ", drawableTopRes=" + this.d + ", drawableStart=null, drawableEnd=null, drawableBottom=null, drawableTop=null, isRtlLayout=" + this.e + ", contentDescription=" + ((Object) this.f) + ", compoundDrawablePadding=" + this.g + ", iconWidth=" + this.h + ", iconHeight=" + this.i + ", compoundDrawablePaddingRes=" + this.j + ", tintColor=" + this.k + ", widthRes=" + this.l + ", heightRes=" + this.m + ", squareSizeRes=" + this.n + ")";
    }
}
