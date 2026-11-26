package com.warefly.checkscan.presentation.flows.firstopen.view;

import com.warefly.checkscan.core.ui.base.architecture.FlowFragment;
import com.warefly.checkscan.core.ui.databinding.LayoutContainerBinding;
import com.warefly.checkscan.presentation.flows.account.presenter.FirstOpenView;
import com.warefly.checkscan.presentation.flows.firstopen.presenter.FirstOpenPresenter;
import defpackage.bs6;
import defpackage.e;
import defpackage.jf6;
import defpackage.m2;
import defpackage.x07;
import defpackage.ze4;

/* JADX INFO: loaded from: classes5.dex */
public final class FirstOpenFlowFragment extends FlowFragment<LayoutContainerBinding> implements FirstOpenView {
    public static final /* synthetic */ ze4<Object>[] j;
    public FirstOpenPresenter presenter;

    static {
        bs6 bs6Var = new bs6(FirstOpenFlowFragment.class, "binding", "getBinding()Lcom/warefly/checkscan/core/ui/databinding/LayoutContainerBinding;", 0);
        x07.a.getClass();
        j = new ze4[]{bs6Var};
    }

    public final FirstOpenPresenter providePresenter() {
        return new FirstOpenPresenter((jf6) m2.c(jf6.class, e.e(this), null, null));
    }
}
