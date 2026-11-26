package yads;

import android.graphics.Bitmap;
import android.os.Looper;

/* JADX INFO: loaded from: classes6.dex */
public final class xc3 {
    public Bitmap a;
    public final yc3 b;
    public final String c;
    public final /* synthetic */ zc3 d;

    public xc3(zc3 zc3Var, Bitmap bitmap, String str, yc3 yc3Var) {
        this.d = zc3Var;
        this.a = bitmap;
        this.c = str;
        this.b = yc3Var;
    }

    public final void a() {
        if (Looper.myLooper() != Looper.getMainLooper()) {
            defpackage.ah.f("Must be invoked from the main thread.");
            return;
        }
        if (this.b == null) {
            return;
        }
        wc3 wc3Var = (wc3) this.d.d.get(this.c);
        if (wc3Var != null) {
            wc3Var.d.remove(this);
            if (wc3Var.d.size() == 0) {
                wc3Var.a.a();
                this.d.d.remove(this.c);
                return;
            }
            return;
        }
        wc3 wc3Var2 = (wc3) this.d.e.get(this.c);
        if (wc3Var2 != null) {
            wc3Var2.d.remove(this);
            if (wc3Var2.d.size() == 0) {
                wc3Var2.a.a();
            }
            if (wc3Var2.d.size() == 0) {
                this.d.e.remove(this.c);
            }
        }
    }
}
