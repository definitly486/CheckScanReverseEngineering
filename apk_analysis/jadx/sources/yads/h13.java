package yads;

import android.view.ViewGroup;
import com.monetization.ads.nativeads.ExtendedNativeAdView;

/* JADX INFO: loaded from: classes6.dex */
public final class h13 implements on0 {
    public final pg4 a;
    public final m2 b;
    public final h80 c;
    public final q84 d;
    public final xk e;
    public final wd4 f;

    public h13(pg4 pg4Var, m2 m2Var, h80 h80Var, q84 q84Var) {
        xk xkVar = new xk(null, 3);
        wd4 wd4Var = new wd4();
        this.a = pg4Var;
        this.b = m2Var;
        this.c = h80Var;
        this.d = q84Var;
        this.e = xkVar;
        this.f = wd4Var;
    }

    @Override // yads.on0
    public final void a(ViewGroup viewGroup) {
        g70 g70VarA = this.a.a(this.e.a((ExtendedNativeAdView) viewGroup, this.f));
        if (g70VarA instanceof f70) {
            this.a.a(this.c);
        } else if (g70VarA instanceof e70) {
            this.b.e();
            this.d.reportError("Failed to bind DivKit Fullscreen Native Ad", ((e70) g70VarA).b);
        }
    }

    @Override // yads.on0
    public final void c() {
        this.a.a((h80) null);
    }
}
