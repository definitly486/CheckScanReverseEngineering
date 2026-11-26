package defpackage;

import android.graphics.Bitmap;
import android.util.LruCache;
import java.util.Objects;

/* JADX INFO: loaded from: classes4.dex */
public final class h14 extends xha {

    public static class a extends LruCache {
        @Override // android.util.LruCache
        public final int sizeOf(Object obj, Object obj2) {
            return ((Bitmap) obj2).getAllocationByteCount();
        }
    }

    static {
        new a(31457280);
    }

    public static h14 a(int i, int i2, String str) {
        h14 h14Var = new h14(str);
        h14Var.b = i;
        h14Var.c = i2;
        return h14Var;
    }

    @Override // defpackage.xha
    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || h14.class != obj.getClass() || !super.equals(obj)) {
            return false;
        }
        return true;
    }

    @Override // defpackage.xha
    public final int hashCode() {
        return Objects.hash(Integer.valueOf(super.hashCode()), Boolean.FALSE);
    }

    public final String toString() {
        return "ImageData{url='" + this.a + "', width=" + this.b + ", height=" + this.c + ", bitmap=" + ((Bitmap) this.d) + '}';
    }
}
