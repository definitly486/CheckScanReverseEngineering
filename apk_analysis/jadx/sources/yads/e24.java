package yads;

import android.content.Context;
import android.widget.FrameLayout;
import com.monetization.ads.nativeads.CustomizableMediaView;

/* JADX INFO: loaded from: classes6.dex */
public final class e24 {
    public final t14 a;
    public final zb4 b;
    public final f24 c;

    public e24() {
        t14 t14Var = new t14();
        zb4 zb4Var = new zb4();
        f24 f24Var = new f24();
        this.a = t14Var;
        this.b = zb4Var;
        this.c = f24Var;
    }

    public final xf5 a(CustomizableMediaView customizableMediaView, by3 by3Var, we3 we3Var, lm4 lm4Var, j24 j24Var) throws bk6 {
        Context context = customizableMediaView.getContext();
        this.b.getClass();
        vb4 vb4Var = (vb4) gc4.c.a(context).b.remove(by3Var);
        if (vb4Var == null) {
            try {
                vb4Var = new vb4(context, new xj6(), null);
            } catch (Throwable unused) {
                vb4Var = null;
            }
            if (vb4Var == null) {
                throw new bk6();
            }
        }
        kb4 kb4Var = vb4Var.k;
        kb4Var.a.add(we3Var);
        kb4Var.b.add(lm4Var);
        kb4Var.c.add(lm4Var);
        this.a.getClass();
        if (!yt2.a(customizableMediaView.getContext(), xt2.FALLBACK_FOR_VIDEO)) {
            customizableMediaView.removeAllViews();
        }
        customizableMediaView.addView(vb4Var, new FrameLayout.LayoutParams(-1, -1));
        this.c.getClass();
        xb4 xb4Var = new xb4(vb4Var);
        this.c.getClass();
        return new xf5(customizableMediaView, xb4Var, j24Var);
    }
}
