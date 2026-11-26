package yads;

import android.graphics.Bitmap;
import defpackage.k57;

/* JADX INFO: loaded from: classes6.dex */
public final class bd3 {
    public final g05 a;
    public final h05 b;
    public final ju c;

    public bd3() {
        g05 g05Var = new g05();
        h05 h05Var = new h05();
        ju juVar = new ju();
        this.a = g05Var;
        this.b = h05Var;
        this.c = juVar;
    }

    public final Bitmap a(rd3 rd3Var) {
        Object aVar;
        Bitmap bitmap;
        String str = rd3Var.g;
        if (str == null) {
            return null;
        }
        this.a.getClass();
        Bitmap bitmapA = g05.a(str);
        if (bitmapA != null) {
            try {
                aVar = this.b.a(bitmapA, rd3Var);
            } catch (Throwable th) {
                aVar = new k57.a(th);
            }
            if (aVar instanceof k57.a) {
                aVar = null;
            }
            bitmap = (Bitmap) aVar;
        } else {
            bitmap = null;
        }
        if (bitmap == null) {
            return null;
        }
        this.c.getClass();
        try {
            return ju.a(bitmap, 1.0d);
        } catch (Throwable unused) {
            return bitmap;
        }
    }
}
