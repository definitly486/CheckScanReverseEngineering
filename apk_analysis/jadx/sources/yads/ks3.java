package yads;

import android.content.Context;
import android.view.ViewGroup;
import android.view.ViewParent;
import com.monetization.ads.nativeads.ExtendedNativeAdView;
import defpackage.u96;

/* JADX INFO: loaded from: classes6.dex */
public final class ks3 implements on0 {
    public final pg4 a;
    public final h80 b;
    public final pz c;
    public final cs3 d;
    public final vs3 e;
    public final String f;
    public final q84 g;
    public final m2 h;
    public final b4 i;
    public vb4 j;
    public jb4 k;

    public ks3(pg4 pg4Var, h80 h80Var, pz pzVar, cs3 cs3Var, vs3 vs3Var, String str, q84 q84Var, m2 m2Var, b4 b4Var) {
        this.a = pg4Var;
        this.b = h80Var;
        this.c = pzVar;
        this.d = cs3Var;
        this.e = vs3Var;
        this.f = str;
        this.g = q84Var;
        this.h = m2Var;
        this.i = b4Var;
    }

    public static final String b(ks3 ks3Var) {
        return (String) defpackage.bv0.a(defpackage.gx2.b, new es3(ks3Var, null));
    }

    public final void a(ExtendedNativeAdView extendedNativeAdView) {
        Context context = extendedNativeAdView.getContext();
        int i = vb4.o;
        vb4 vb4Var = new vb4(context, new xj6(), null);
        this.j = vb4Var;
        jb4 jb4Var = new jb4(vb4Var, u96.h(new fd5("lightBundle.js", new defpackage.vd0(this, 4))), 126);
        this.k = jb4Var;
        a(jb4Var, vb4Var);
        vb4Var.setHtmlWebViewListener(new ds3(jb4Var, this, vb4Var));
        extendedNativeAdView.addView(vb4Var, new ViewGroup.LayoutParams(-1, -1));
        jb4Var.a(this.f);
    }

    @Override // yads.on0
    public final void c() {
        this.a.a((h80) null);
        jb4 jb4Var = this.k;
        if (jb4Var != null) {
            ur2 ur2Var = jb4Var.j;
            defpackage.mb4 mb4Var = ur2Var.e;
            if (mb4Var != null) {
                mb4Var.cancel(null);
            }
            ur2Var.e = null;
            qb4 qb4Var = jb4Var.c;
            jb4Var.a.getContext();
            String str = jb4Var.k;
            qb4Var.getClass();
            if (z75.b == null) {
                synchronized (z75.a) {
                    if (z75.b == null) {
                        z75.b = new z75();
                    }
                }
            }
            z75.a(str);
            jb4Var.l = null;
            jb4Var.m = null;
            jb4Var.n = null;
            jb4Var.o = null;
            jb4Var.p = null;
            jb4Var.q = null;
        }
        this.k = null;
        vb4 vb4Var = this.j;
        if (vb4Var != null) {
            ViewParent parent = vb4Var.getParent();
            ViewGroup viewGroup = parent instanceof ViewGroup ? (ViewGroup) parent : null;
            if (viewGroup != null) {
                viewGroup.removeView(vb4Var);
            }
            vb4Var.c();
        }
        this.j = null;
    }

    @Override // yads.on0
    public final void a(ViewGroup viewGroup) {
        ExtendedNativeAdView extendedNativeAdView = (ExtendedNativeAdView) viewGroup;
        try {
            this.a.a(new xk(null, 3).a(extendedNativeAdView, new xd4()), this.c);
            this.a.a(this.b);
        } catch (yf4 e) {
            this.g.reportError("Failed to bind LightBundle Native Ad", e);
        }
        a(extendedNativeAdView);
    }

    public final void a(jb4 jb4Var, vb4 vb4Var) {
        jb4Var.o = new fs3(this);
        jb4Var.l = new gs3(this, vb4Var);
        jb4Var.q = new defpackage.s5(vb4Var, 2);
        jb4Var.m = new hs3(this);
        jb4Var.n = new is3();
        jb4Var.p = new js3();
    }

    public static final void a(vb4 vb4Var) {
        vb4Var.a();
    }
}
