package yads;

import android.view.ViewGroup;
import com.monetization.ads.nativeads.ExtendedNativeAdView;
import java.util.Iterator;

/* JADX INFO: loaded from: classes6.dex */
public final class um5 implements on0 {
    public final ni4 a;
    public final c60 b;
    public final h80 c;
    public final pz d;
    public final q84 e;
    public final xd4 f;
    public final xk g;

    public um5(ni4 ni4Var, c60 c60Var, h80 h80Var, pz pzVar, q84 q84Var) {
        xd4 xd4Var = new xd4();
        xk xkVar = new xk(qg4.a(ni4Var, tn1.BLOCK), 2);
        this.a = ni4Var;
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
            ih4 ih4VarA = this.g.a((ExtendedNativeAdView) viewGroup, this.f);
            ni4 ni4Var = this.a;
            pz pzVar = this.d;
            ni4Var.getClass();
            ni4Var.a(ih4VarA.c, ni4Var.R, new rh4(ih4VarA), pzVar);
            jt5 jt5Var = new jt5(this.c);
            Iterator it = this.a.k().iterator();
            while (it.hasNext()) {
                ((pg4) it.next()).a(jt5Var);
            }
            this.a.b(this.c);
        } catch (yf4 e) {
            this.b.e();
            this.e.reportError("Failed to bind DivKit Slider Ad", e);
        }
    }

    @Override // yads.on0
    public final void c() {
        this.a.b((h80) null);
        Iterator it = this.a.k().iterator();
        while (it.hasNext()) {
            ((pg4) it.next()).a((h80) null);
        }
    }
}
