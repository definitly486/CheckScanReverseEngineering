package com.warefly.checkscan.presentation.flows.changePhone.view;

import com.warefly.checkscan.core.ui.base.architecture.FlowFragment;
import com.warefly.checkscan.core.ui.databinding.LayoutContainerBinding;
import com.warefly.checkscan.presentation.flows.changePhone.presenter.ChangePhoneFlowPresenter;
import defpackage.bs6;
import defpackage.x07;
import defpackage.ze4;

/* JADX INFO: loaded from: classes5.dex */
public final class ChangePhoneFlowFragment extends FlowFragment<LayoutContainerBinding> implements ChangePhoneFlowView {
    public static final /* synthetic */ ze4<Object>[] j;
    public ChangePhoneFlowPresenter presenter;

    static {
        bs6 bs6Var = new bs6(ChangePhoneFlowFragment.class, "binding", "getBinding()Lcom/warefly/checkscan/core/ui/databinding/LayoutContainerBinding;", 0);
        x07.a.getClass();
        j = new ze4[]{bs6Var};
    }

    public final ChangePhoneFlowPresenter providePresenter() {
        return new ChangePhoneFlowPresenter();
    }
}
