package yads;

import android.view.ViewGroup;
import com.monetization.ads.nativeads.ExtendedNativeAdView;

/* JADX INFO: loaded from: classes6.dex */
public final class hf4 implements on0 {
    public final pg4 a;
    public final c60 b;
    public final h80 c;
    public final pz d;
    public final q84 e;
    public final xd4 f;
    public final xk g;

    public hf4(pg4 pg4Var, c60 c60Var, h80 h80Var, pz pzVar, q84 q84Var) {
        xd4 xd4Var = new xd4();
        xk xkVar = new xk(qg4.a(pg4Var, null), 2);
        this.a = pg4Var;
        this.b = c60Var;
        this.c = h80Var;
        this.d = pzVar;
        this.e = q84Var;
        this.f = xd4Var;
        this.g = xkVar;
    }

    @Override // yads.on0
    public final void a(ViewGroup viewGroup) {
        try {
            this.a.a(this.g.a((ExtendedNativeAdView) viewGroup, this.f), this.d);
            this.a.a(this.c);
        } catch (yf4 e) {
            this.b.e();
            this.e.reportError("Failed to bind DivKit Native Ad", e);
        }
    }

    @Override // yads.on0
    public final void c() {
        this.a.a((h80) null);
    }
}
