package defpackage;

import android.content.Context;

/* JADX INFO: loaded from: classes3.dex */
public final class zz5 {
    public final Context a;
    public final t18 b;
    public final md7 c;
    public final re6 d;
    public final String e;
    public final w93 f;
    public final sx0 g;
    public final sx0 h;
    public final sx0 i;
    public final b53 j;

    public zz5(Context context, t18 t18Var, md7 md7Var, re6 re6Var, String str, w93 w93Var, sx0 sx0Var, sx0 sx0Var2, sx0 sx0Var3, b53 b53Var) {
        this.a = context;
        this.b = t18Var;
        this.c = md7Var;
        this.d = re6Var;
        this.e = str;
        this.f = w93Var;
        this.g = sx0Var;
        this.h = sx0Var2;
        this.i = sx0Var3;
        this.j = b53Var;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof zz5)) {
            return false;
        }
        zz5 zz5Var = (zz5) obj;
        return aa4.e(this.a, zz5Var.a) && aa4.e(this.b, zz5Var.b) && this.c == zz5Var.c && this.d == zz5Var.d && aa4.e(this.e, zz5Var.e) && aa4.e(this.f, zz5Var.f) && this.g == zz5Var.g && this.h == zz5Var.h && this.i == zz5Var.i && aa4.e(this.j, zz5Var.j);
    }

    public final int hashCode() {
        int iHashCode = (this.d.hashCode() + ((this.c.hashCode() + ((this.b.hashCode() + (this.a.hashCode() * 31)) * 31)) * 31)) * 31;
        String str = this.e;
        return this.j.a.hashCode() + ((this.i.hashCode() + ((this.h.hashCode() + ((this.g.hashCode() + ((this.f.hashCode() + ((iHashCode + (str == null ? 0 : str.hashCode())) * 31)) * 31)) * 31)) * 31)) * 31);
    }

    public final String toString() {
        return "Options(context=" + this.a + ", size=" + this.b + ", scale=" + this.c + ", precision=" + this.d + ", diskCacheKey=" + this.e + ", fileSystem=" + this.f + ", memoryCachePolicy=" + this.g + ", diskCachePolicy=" + this.h + ", networkCachePolicy=" + this.i + ", extras=" + this.j + ")";
    }
}
