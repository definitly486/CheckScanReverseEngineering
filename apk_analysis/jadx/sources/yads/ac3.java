package yads;

import android.graphics.Bitmap;

/* JADX INFO: loaded from: classes6.dex */
public final class ac3 {
    public final String a;
    public final Bitmap b;

    public ac3(String str, Bitmap bitmap) {
        this.a = str;
        this.b = bitmap;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ac3)) {
            return false;
        }
        ac3 ac3Var = (ac3) obj;
        return defpackage.aa4.e(this.a, ac3Var.a) && defpackage.aa4.e(this.b, ac3Var.b);
    }

    public final int hashCode() {
        return this.b.hashCode() + (this.a.hashCode() * 31);
    }

    public final String toString() {
        return "ImageData(url=" + this.a + ", bitmap=" + this.b + ")";
    }
}
