package yads;

import android.graphics.Bitmap;
import android.os.Handler;
import android.os.Looper;
import android.widget.ImageView;
import java.util.HashMap;

/* JADX INFO: loaded from: classes6.dex */
public abstract class zc3 {
    public final e85 a;
    public final sn4 c;
    public vc3 g;
    public int b = 100;
    public final HashMap d = new HashMap();
    public final HashMap e = new HashMap();
    public final Handler f = new Handler(Looper.getMainLooper());

    public zc3(e85 e85Var, sn4 sn4Var) {
        this.a = e85Var;
        this.c = sn4Var;
    }

    public final xc3 a(String str, yc3 yc3Var, int i, int i2) {
        ImageView.ScaleType scaleType = ImageView.ScaleType.CENTER_INSIDE;
        if (Looper.myLooper() != Looper.getMainLooper()) {
            defpackage.ah.f("Must be invoked from the main thread.");
            return null;
        }
        ((vl5) this).h.getClass();
        String strA = zb3.a(str, scaleType);
        Bitmap bitmapA = this.c.a(strA);
        if (bitmapA != null) {
            xc3 xc3Var = new xc3(this, bitmapA, null, null);
            yc3Var.a(xc3Var, true);
            return xc3Var;
        }
        xc3 xc3Var2 = new xc3(this, null, strA, yc3Var);
        yc3Var.a(xc3Var2, true);
        wc3 wc3Var = (wc3) this.d.get(strA);
        if (wc3Var == null) {
            wc3Var = (wc3) this.e.get(strA);
        }
        if (wc3Var != null) {
            wc3Var.d.add(xc3Var2);
            return xc3Var2;
        }
        id3 id3Var = new id3(str, new tc3(this, strA), i, i2, scaleType, Bitmap.Config.RGB_565, new uc3(this, strA));
        this.a.a(id3Var);
        this.d.put(strA, new wc3(id3Var, xc3Var2));
        return xc3Var2;
    }
}
