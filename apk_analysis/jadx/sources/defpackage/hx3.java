package defpackage;

import android.graphics.drawable.Drawable;

/* JADX INFO: loaded from: classes5.dex */
public final class hx3 implements pz3 {
    public final String a;
    public final String b;
    public final Drawable c;

    public hx3(String str, String str2, Drawable drawable) {
        str.getClass();
        str2.getClass();
        this.a = str;
        this.b = str2;
        this.c = drawable;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof hx3)) {
            return false;
        }
        hx3 hx3Var = (hx3) obj;
        return aa4.e(this.a, hx3Var.a) && aa4.e(this.b, hx3Var.b) && aa4.e(this.c, hx3Var.c);
    }

    @Override // defpackage.pz3
    public final Object f() {
        return ni0.c(this.a, this.b);
    }

    public final int hashCode() {
        int iB = zg.b(this.a.hashCode() * 31, 31, this.b);
        Drawable drawable = this.c;
        return iB + (drawable == null ? 0 : drawable.hashCode());
    }

    @Override // defpackage.pz3
    public final Object id() {
        return this.a;
    }

    public final String toString() {
        StringBuilder sbD = ad2.d("HowGetCashbackViewModel(title=", this.a, ", description=", this.b, ", drawable=");
        sbD.append(this.c);
        sbD.append(")");
        return sbD.toString();
    }

    public /* synthetic */ hx3(String str, Drawable drawable) {
        this(str, new String(), drawable);
    }
}
