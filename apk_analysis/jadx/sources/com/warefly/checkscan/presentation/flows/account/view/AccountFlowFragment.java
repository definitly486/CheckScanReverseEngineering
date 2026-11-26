package com.warefly.checkscan.presentation.flows.account.view;

import com.warefly.checkscan.core.ui.base.architecture.FlowFragment;
import com.warefly.checkscan.core.ui.databinding.LayoutContainerBinding;
import com.warefly.checkscan.presentation.flows.account.presenter.AccountPresenter;
import com.warefly.checkscan.presentation.flows.account.presenter.AccountView;
import defpackage.bs6;
import defpackage.x07;
import defpackage.ze4;

/* JADX INFO: loaded from: classes5.dex */
public final class AccountFlowFragment extends FlowFragment<LayoutContainerBinding> implements AccountView {
    public static final /* synthetic */ ze4<Object>[] j;
    public AccountPresenter presenter;

    static {
        bs6 bs6Var = new bs6(AccountFlowFragment.class, "binding", "getBinding()Lcom/warefly/checkscan/core/ui/databinding/LayoutContainerBinding;", 0);
        x07.a.getClass();
        j = new ze4[]{bs6Var};
    }

    public final AccountPresenter providePresenter() {
        return new AccountPresenter();
    }
}
