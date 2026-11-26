package yads;

import android.graphics.Rect;
import android.net.Uri;

/* JADX INFO: loaded from: classes6.dex */
public final class u31 extends d41 {
    public final Uri a;
    public final Rect b;

    public u31(Uri uri, Rect rect) {
        this.a = uri;
        this.b = rect;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof u31)) {
            return false;
        }
        u31 u31Var = (u31) obj;
        return defpackage.aa4.e(this.a, u31Var.a) && defpackage.aa4.e(this.b, u31Var.b);
    }

    public final int hashCode() {
        return this.b.hashCode() + (this.a.hashCode() * 31);
    }

    public final String toString() {
        return "NinePatch(imageUrl=" + this.a + ", insets=" + this.b + ")";
    }
}
