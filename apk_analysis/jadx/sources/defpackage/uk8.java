package defpackage;

import com.tapjoy.TJError;
import com.tapjoy.TJPlacement;
import com.tapjoy.TJPlacementListener;

/* JADX INFO: loaded from: classes.dex */
public final class uk8 implements TJPlacementListener {
    public final /* synthetic */ ou5 a;
    public final /* synthetic */ r07<nu5> b;

    public uk8(ou5 ou5Var, r07<nu5> r07Var) {
        this.a = ou5Var;
        this.b = r07Var;
    }

    @Override // com.tapjoy.TJPlacementListener
    public final void onContentDismiss(TJPlacement tJPlacement) {
        tJPlacement.getClass();
        nu5 nu5Var = this.b.b;
        if (nu5Var == null) {
            aa4.j("placement");
            throw null;
        }
        this.a.c(nu5Var);
    }

    @Override // com.tapjoy.TJPlacementListener
    public final void onContentReady(TJPlacement tJPlacement) {
        tJPlacement.getClass();
        nu5 nu5Var = this.b.b;
        if (nu5Var == null) {
            aa4.j("placement");
            throw null;
        }
        this.a.b(nu5Var);
    }

    @Override // com.tapjoy.TJPlacementListener
    public final void onContentShow(TJPlacement tJPlacement) {
        tJPlacement.getClass();
        nu5 nu5Var = this.b.b;
        if (nu5Var == null) {
            aa4.j("placement");
            throw null;
        }
        this.a.a(nu5Var);
    }

    @Override // com.tapjoy.TJPlacementListener
    public final void onRequestFailure(TJPlacement tJPlacement, TJError tJError) {
        tJPlacement.getClass();
        nu5 nu5Var = this.b.b;
        if (nu5Var == null) {
            aa4.j("placement");
            throw null;
        }
        this.a.e(nu5Var);
    }

    @Override // com.tapjoy.TJPlacementListener
    public final void onRequestSuccess(TJPlacement tJPlacement) {
        tJPlacement.getClass();
        nu5 nu5Var = this.b.b;
        if (nu5Var == null) {
            aa4.j("placement");
            throw null;
        }
        this.a.d(nu5Var);
    }
}
