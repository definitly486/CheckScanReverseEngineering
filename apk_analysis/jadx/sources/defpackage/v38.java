package defpackage;

import android.graphics.drawable.Drawable;

/* JADX INFO: loaded from: classes5.dex */
public final class v38 {
    public final Drawable a;
    public final Drawable b;
    public final boolean c;
    public final rx6 d;

    public v38(Drawable drawable, Drawable drawable2, boolean z, rx6 rx6Var) {
        rx6Var.getClass();
        this.a = drawable;
        this.b = drawable2;
        this.c = z;
        this.d = rx6Var;
    }

    public static v38 a(v38 v38Var, boolean z) {
        Drawable drawable = v38Var.a;
        Drawable drawable2 = v38Var.b;
        rx6 rx6Var = v38Var.d;
        v38Var.getClass();
        drawable.getClass();
        drawable2.getClass();
        rx6Var.getClass();
        return new v38(drawable, drawable2, z, rx6Var);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof v38)) {
            return false;
        }
        v38 v38Var = (v38) obj;
        return aa4.e(this.a, v38Var.a) && aa4.e(this.b, v38Var.b) && this.c == v38Var.c && this.d == v38Var.d;
    }

    public final int hashCode() {
        return this.d.hashCode() + tg.c((this.b.hashCode() + (this.a.hashCode() * 31)) * 31, 31, this.c);
    }

    public final String toString() {
        return "SmileRating(icon=" + this.a + ", iconChecked=" + this.b + ", checked=" + this.c + ", type=" + this.d + ")";
    }
}
