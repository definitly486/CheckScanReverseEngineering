package yads;

import android.graphics.Bitmap;
import android.os.Handler;

/* JADX INFO: loaded from: classes6.dex */
public final class zt implements Runnable {
    public final Bitmap b;
    public final t65 c;
    public final ju d;
    public final Handler e;

    public zt(Bitmap bitmap, t65 t65Var, ju juVar, Handler handler) {
        this.b = bitmap;
        this.c = t65Var;
        this.d = juVar;
        this.e = handler;
    }

    public static final void a(zt ztVar, Bitmap bitmap) {
        t65 t65Var = ztVar.c;
        s65 s65Var = t65Var.a.d;
        am4 am4Var = t65Var.b;
        v65 v65Var = t65Var.c;
        s65Var.getClass();
        s65.a(am4Var, v65Var, bitmap);
    }

    @Override // java.lang.Runnable
    public final void run() {
        ju juVar = this.d;
        Bitmap bitmapA = this.b;
        juVar.getClass();
        try {
            bitmapA = ju.a(bitmapA, 0.1d);
        } catch (Throwable unused) {
        }
        a(bitmapA);
    }

    public final void a(Bitmap bitmap) {
        this.e.post(new defpackage.zs2(4, this, bitmap));
    }
}
