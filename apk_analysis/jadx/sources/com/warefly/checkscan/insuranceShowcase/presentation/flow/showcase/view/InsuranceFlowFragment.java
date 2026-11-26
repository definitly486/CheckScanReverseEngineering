package com.warefly.checkscan.insuranceShowcase.presentation.flow.showcase.view;

import com.warefly.checkscan.R;
import com.warefly.checkscan.core.ui.base.architecture.FlowFragment;
import com.warefly.checkscan.core.ui.databinding.LoadingLayoutContainerBinding;
import com.warefly.checkscan.insuranceShowcase.presentation.flow.showcase.presenter.InsuranceFlowPresenter;
import defpackage.bs6;
import defpackage.x07;
import defpackage.ze4;

/* JADX INFO: loaded from: classes5.dex */
public final class InsuranceFlowFragment extends FlowFragment<LoadingLayoutContainerBinding> implements InsuranceFlowView {
    public static final a k;
    public static final /* synthetic */ ze4<Object>[] l;
    public final int j = R.layout.loading_layout_container;
    public InsuranceFlowPresenter presenter;

    public static final class a {
    }

    static {
        bs6 bs6Var = new bs6(InsuranceFlowFragment.class, "binding", "getBinding()Lcom/warefly/checkscan/core/ui/databinding/LoadingLayoutContainerBinding;", 0);
        x07.a.getClass();
        l = new ze4[]{bs6Var};
        k = new a();
    }

    @Override // com.warefly.checkscan.core.ui.base.architecture.FlowFragment, com.warefly.checkscan.core.ui.base.architecture.BaseFragment
    public final int i() {
        return this.j;
    }

    public final InsuranceFlowPresenter providePresenter() {
        return new InsuranceFlowPresenter();
    }
}
