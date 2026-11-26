package com.warefly.checkscan.core.ui.base.architecture;

import androidx.viewbinding.ViewBinding;
import defpackage.ba8;
import defpackage.bm3;
import defpackage.gh4;
import defpackage.i36;
import defpackage.lj1;
import defpackage.uf3;
import defpackage.x07;
import defpackage.ze7;

/* JADX INFO: loaded from: classes.dex */
public final class c extends gh4 implements bm3<ze7, i36, uf3> {
    public final /* synthetic */ FlowFragment<ViewBinding> f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public c(FlowFragment<ViewBinding> flowFragment) {
        super(2);
        this.f = flowFragment;
    }

    @Override // defpackage.bm3
    public final uf3 invoke(ze7 ze7Var, i36 i36Var) {
        ze7 ze7Var2 = ze7Var;
        ze7Var2.getClass();
        i36Var.getClass();
        return (uf3) ((lj1) ze7Var2.e(x07.a(lj1.class), null, new ba8(this.f.g().concat("CICERONE")))).a;
    }
}
