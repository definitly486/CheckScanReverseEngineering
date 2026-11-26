package com.warefly.checkscan.core.ui.base.architecture;

import android.view.View;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentActivity;
import androidx.fragment.app.FragmentManager;
import androidx.fragment.app.FragmentTransaction;
import androidx.viewbinding.ViewBinding;
import defpackage.le9;
import defpackage.lk3;
import defpackage.so1;
import defpackage.zp;

/* JADX INFO: loaded from: classes5.dex */
public final class a extends zp {
    public final /* synthetic */ FlowFragment<ViewBinding> e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public a(FlowFragment flowFragment, FragmentActivity fragmentActivity, FragmentManager fragmentManager) {
        super(fragmentActivity, fragmentManager);
        this.e = flowFragment;
        fragmentActivity.getClass();
        fragmentManager.getClass();
    }

    @Override // defpackage.zp
    public final void b() {
        this.e.o();
    }

    @Override // defpackage.zp
    public final void e(so1 so1Var, RuntimeException runtimeException) {
        so1Var.getClass();
        throw runtimeException;
    }

    @Override // defpackage.zp
    public final void f(lk3 lk3Var, FragmentTransaction fragmentTransaction, Fragment fragment) {
        fragment.getClass();
        View view = this.e.getView();
        if (view != null) {
            le9.b(view);
        }
    }
}
