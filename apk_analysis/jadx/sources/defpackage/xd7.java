package defpackage;

import android.graphics.drawable.Drawable;

/* JADX INFO: loaded from: classes5.dex */
public final class xd7 implements pz3 {
    public final String a;
    public final String b;
    public final Drawable c;

    public xd7(String str, String str2, Drawable drawable) {
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
        if (!(obj instanceof xd7)) {
            return false;
        }
        xd7 xd7Var = (xd7) obj;
        return aa4.e(this.a, xd7Var.a) && aa4.e(this.b, xd7Var.b) && aa4.e(this.c, xd7Var.c);
    }

    @Override // defpackage.pz3
    public final Object f() {
        return this.a + this.b + this.c;
    }

    public final int hashCode() {
        int iB = zg.b(this.a.hashCode() * 31, 31, this.b);
        Drawable drawable = this.c;
        return iB + (drawable == null ? 0 : drawable.hashCode());
    }

    @Override // defpackage.pz3
    public final Object id() {
        return this.b;
    }

    public final String toString() {
        StringBuilder sbD = ad2.d("ScannerInfoDescriptionViewModel(title=", this.a, ", description=", this.b, ", drawable=");
        sbD.append(this.c);
        sbD.append(")");
        return sbD.toString();
    }

    public /* synthetic */ xd7(String str, Drawable drawable) {
        this(new String(), str, drawable);
    }
}
