package yads;

import android.graphics.Bitmap;

/* JADX INFO: loaded from: classes6.dex */
public final class gd3 implements hd3 {
    public final Bitmap a;

    public static String a(Bitmap bitmap) {
        return "Bitmap(value=" + bitmap + ")";
    }

    public final boolean equals(Object obj) {
        return (obj instanceof gd3) && defpackage.aa4.e(this.a, ((gd3) obj).a);
    }

    public final int hashCode() {
        return this.a.hashCode();
    }

    public final String toString() {
        return a(this.a);
    }
}
