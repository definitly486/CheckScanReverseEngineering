package com.warefly.checkscan.presentation.flows.electrocheques.view;

import com.warefly.checkscan.core.ui.base.architecture.FlowFragment;
import com.warefly.checkscan.core.ui.databinding.LayoutContainerBinding;
import com.warefly.checkscan.presentation.flows.electrocheques.presenter.ElectroChequesFlowPresenter;
import com.warefly.checkscan.presentation.flows.electrocheques.presenter.ElectroChequesFlowView;
import defpackage.bs6;
import defpackage.e;
import defpackage.jf6;
import defpackage.m2;
import defpackage.x07;
import defpackage.ze4;

/* JADX INFO: loaded from: classes5.dex */
public final class ElectroChequesFlowFragment extends FlowFragment<LayoutContainerBinding> implements ElectroChequesFlowView {
    public static final /* synthetic */ ze4<Object>[] j;
    public ElectroChequesFlowPresenter presenter;

    static {
        bs6 bs6Var = new bs6(ElectroChequesFlowFragment.class, "binding", "getBinding()Lcom/warefly/checkscan/core/ui/databinding/LayoutContainerBinding;", 0);
        x07.a.getClass();
        j = new ze4[]{bs6Var};
    }

    public final ElectroChequesFlowPresenter providePresenter() {
        return new ElectroChequesFlowPresenter((jf6) m2.c(jf6.class, e.e(this), null, null));
    }
}
