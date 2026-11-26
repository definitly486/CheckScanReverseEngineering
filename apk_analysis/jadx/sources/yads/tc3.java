package yads;

import android.graphics.Bitmap;

/* JADX INFO: loaded from: classes6.dex */
public final class tc3 implements y85 {
    public final /* synthetic */ String a;
    public final /* synthetic */ zc3 b;

    public tc3(zc3 zc3Var, String str) {
        this.b = zc3Var;
        this.a = str;
    }

    @Override // yads.y85
    public final void a(Object obj) {
        Bitmap bitmap = (Bitmap) obj;
        zc3 zc3Var = this.b;
        String str = this.a;
        zc3Var.c.a(str, bitmap);
        wc3 wc3Var = (wc3) zc3Var.d.remove(str);
        if (wc3Var != null) {
            wc3Var.b = bitmap;
            zc3Var.e.put(str, wc3Var);
            if (zc3Var.g == null) {
                vc3 vc3Var = new vc3(zc3Var);
                zc3Var.g = vc3Var;
                zc3Var.f.postDelayed(vc3Var, zc3Var.b);
            }
        }
    }
}
