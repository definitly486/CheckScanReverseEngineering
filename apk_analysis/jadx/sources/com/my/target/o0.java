package com.my.target;

import android.view.View;
import com.iab.omid.library.corpmailru.adsession.CreativeType;
import defpackage.v2a;

/* JADX INFO: loaded from: classes4.dex */
public final class o0 extends x0.a {
    public final /* synthetic */ v2a a;
    public final /* synthetic */ p0 b;

    public o0(p0 p0Var, v2a v2aVar) {
        this.b = p0Var;
        this.a = v2aVar;
    }

    @Override // com.my.target.x0.a
    public final void a() {
        View closeButton;
        e3 e3Var = this.a.b;
        if (e3Var == null || e3Var.a == CreativeType.HTML_DISPLAY) {
            return;
        }
        t1 t1VarV = this.b.v();
        if (t1VarV != null && (closeButton = t1VarV.getCloseButton()) != null) {
            e3Var.e(new e3.b(closeButton));
        }
        e3Var.g();
    }
}
