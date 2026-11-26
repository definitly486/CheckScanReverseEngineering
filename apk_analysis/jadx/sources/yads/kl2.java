package yads;

import android.graphics.drawable.Drawable;

/* JADX INFO: loaded from: classes6.dex */
public final class kl2 {
    public final Drawable a;
    public final pd3 b;

    public kl2(Drawable drawable, pd3 pd3Var) {
        this.a = drawable;
        this.b = pd3Var;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof kl2)) {
            return false;
        }
        kl2 kl2Var = (kl2) obj;
        return defpackage.aa4.e(this.a, kl2Var.a) && this.b == kl2Var.b;
    }

    public final int hashCode() {
        return this.b.hashCode() + (this.a.hashCode() * 31);
    }

    public final String toString() {
        return "DrawableResponse(drawable=" + this.a + ", imageType=" + this.b + ")";
    }
}
