package yads;

import android.content.Context;
import android.widget.FrameLayout;
import com.monetization.ads.nativeads.CustomizableMediaView;
import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
public final class vf5 implements b24 {
    public final bf5 a;
    public final d9 b;
    public final h24 c;
    public final c24 d;
    public final g24 e;
    public final e24 f;

    public vf5(bf5 bf5Var, d9 d9Var) {
        h24 h24Var = new h24(bf5Var, d9Var);
        c24 c24Var = new c24(d9Var);
        g24 g24Var = new g24();
        e24 e24Var = new e24();
        this.a = bf5Var;
        this.b = d9Var;
        this.c = h24Var;
        this.d = c24Var;
        this.e = g24Var;
        this.f = e24Var;
    }

    @Override // yads.b24
    public final z14 a(CustomizableMediaView customizableMediaView, e4 e4Var, b05 b05Var, tj6 tj6Var, we3 we3Var, sj4 sj4Var, aj4 aj4Var, we4 we4Var, j24 j24Var, uj5 uj5Var, v14 v14Var, defpackage.y22 y22Var) {
        vf5 vf5Var;
        z14 z14VarA = null;
        z14VarA = null;
        z14VarA = null;
        z14VarA = null;
        if (v14Var == null) {
            return null;
        }
        el4 el4Var = sj4Var.a;
        lm4 lm4Var = sj4Var.b;
        by3 by3Var = v14Var.a;
        Context context = customizableMediaView.getContext();
        Context context2 = customizableMediaView.getContext();
        xt2 xt2Var = xt2.FALLBACK_FOR_VIDEO;
        boolean zA = yt2.a(context2, xt2Var);
        if (zA) {
            customizableMediaView.removeAllViews();
        }
        if (el4Var != null) {
            r96 r96Var = v14Var.b;
            h24 h24Var = this.c;
            h24Var.getClass();
            Context context3 = customizableMediaView.getContext();
            hc0 hc0Var = h24Var.e.a;
            se6 videoScaleType = customizableMediaView.getVideoScaleType();
            if (videoScaleType == null) {
                videoScaleType = se6.FIT_CENTER;
            }
            kl4 kl4Var = h24Var.f;
            we6 we6Var = r96Var != null ? r96Var.b : null;
            kl4Var.getClass();
            td6 td6Var = new td6(videoScaleType, we6Var != null ? we6Var.a : true, we6Var != null ? we6Var.b : false, we6Var != null ? we6Var.c : null);
            h24Var.d.getClass();
            am4 am4VarA = h24Var.g.a(context3, td6Var, tj6Var, r96Var, customizableMediaView.getVideoControlsLayoutId());
            h24Var.c.getClass();
            if (!yt2.a(customizableMediaView.getContext(), xt2Var)) {
                customizableMediaView.removeAllViews();
            }
            customizableMediaView.addView(am4VarA, new FrameLayout.LayoutParams(-1, -1));
            zf5 zf5Var = new zf5(customizableMediaView, new nf6(h24Var.a, am4VarA, td6Var, e4Var, h24Var.b, we3Var, el4Var, aj4Var, we4Var, b05Var, uj5Var, y22Var), j24Var);
            ql5 ql5Var = uj5Var != null ? uj5Var.e : null;
            if (ql5Var == null || !zA) {
                vf5Var = this;
            } else {
                z14 z14VarA2 = a(customizableMediaView, this.a, b05Var, j24Var, uj5Var, v14Var, y22Var);
                vf5Var = this;
                if (z14VarA2 != null) {
                    eg5.j.getClass();
                    z14VarA = new eg5(customizableMediaView, zf5Var, z14VarA2, j24Var, ql5Var);
                }
            }
            z14VarA = zf5Var;
        } else {
            vf5Var = this;
            if (lm4Var != null && by3Var != null && ya.a(context)) {
                try {
                    z14VarA = vf5Var.f.a(customizableMediaView, by3Var, we3Var, lm4Var, j24Var);
                } catch (bk6 unused) {
                }
            }
        }
        if (z14VarA == null) {
            return vf5Var.a(customizableMediaView, vf5Var.a, b05Var, j24Var, uj5Var, v14Var, y22Var);
        }
        return z14VarA;
    }

    public final z14 a(CustomizableMediaView customizableMediaView, bf5 bf5Var, b05 b05Var, j24 j24Var, uj5 uj5Var, v14 v14Var, defpackage.y22 y22Var) {
        List list = v14Var.c;
        if (list == null || list.isEmpty()) {
            return null;
        }
        if (list.size() == 1) {
            return this.d.a(customizableMediaView, b05Var, j24Var, y22Var);
        }
        try {
            return this.e.a(this.b, bf5Var, customizableMediaView, b05Var, list, j24Var, uj5Var, y22Var);
        } catch (Throwable unused) {
            return this.d.a(customizableMediaView, b05Var, j24Var, y22Var);
        }
    }
}
