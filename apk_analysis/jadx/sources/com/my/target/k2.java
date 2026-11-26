package com.my.target;

import android.view.View;
import com.iab.omid.library.corpmailru.adsession.CreativeType;

/* JADX INFO: loaded from: classes4.dex */
public final class k2 extends x0.a {
    public final /* synthetic */ View a;
    public final /* synthetic */ m2 b;

    public k2(m2 m2Var, View view) {
        this.b = m2Var;
        this.a = view;
    }

    @Override // com.my.target.x0.a
    public final void a() {
        View closeButton;
        m2 m2Var = this.b;
        e3 e3Var = m2Var.l;
        if (e3Var == null || e3Var.a == CreativeType.HTML_DISPLAY) {
            return;
        }
        e3Var.c(this.a, new e3.b[0]);
        t1 t1VarW = m2Var.w();
        if (t1VarW != null && (closeButton = t1VarW.getCloseButton()) != null) {
            m2Var.l.e(new e3.b(closeButton));
        }
        m2Var.l.g();
    }
}
