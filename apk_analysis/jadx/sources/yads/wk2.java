package yads;

import android.graphics.drawable.Drawable;

/* JADX INFO: loaded from: classes6.dex */
public final class wk2 {
    public final Drawable a;
    public final pd3 b;

    public wk2(Drawable drawable, pd3 pd3Var) {
        this.a = drawable;
        this.b = pd3Var;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof wk2)) {
            return false;
        }
        wk2 wk2Var = (wk2) obj;
        return defpackage.aa4.e(this.a, wk2Var.a) && this.b == wk2Var.b;
    }

    public final int hashCode() {
        return this.b.hashCode() + (this.a.hashCode() * 31);
    }

    public final String toString() {
        return "CachedDrawable(drawable=" + this.a + ", imageType=" + this.b + ")";
    }
}
