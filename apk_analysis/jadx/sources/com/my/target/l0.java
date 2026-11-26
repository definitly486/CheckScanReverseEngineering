package com.my.target;

import android.view.View;
import java.lang.ref.WeakReference;

/* JADX INFO: loaded from: classes4.dex */
public final class l0 extends x0.a {
    public final /* synthetic */ View a;
    public final /* synthetic */ m0 b;

    public l0(m0 m0Var, View view) {
        this.b = m0Var;
        this.a = view;
    }

    @Override // com.my.target.x0.a
    public final void a() {
        f6 closeButton;
        m0 m0Var = this.b;
        e3 e3Var = m0Var.n;
        if (e3Var != null) {
            e3Var.c(this.a, new e3.b[0]);
            WeakReference weakReference = m0Var.m;
            if (weakReference != null && (closeButton = ((a0) weakReference.get()).c.getCloseButton()) != null) {
                m0Var.n.e(new e3.b(closeButton));
            }
            m0Var.n.g();
        }
    }
}
