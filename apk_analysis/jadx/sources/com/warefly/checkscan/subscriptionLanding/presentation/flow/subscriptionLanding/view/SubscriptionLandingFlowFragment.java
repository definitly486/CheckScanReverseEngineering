package com.warefly.checkscan.subscriptionLanding.presentation.flow.subscriptionLanding.view;

import com.warefly.checkscan.core.ui.base.architecture.FlowFragment;
import com.warefly.checkscan.core.ui.databinding.LoadingLayoutContainerBinding;
import com.warefly.checkscan.subscriptionLanding.presentation.flow.subscriptionLanding.presenter.SubscriptionLandingFlowPresenter;
import defpackage.bs6;
import defpackage.x07;
import defpackage.ze4;

/* JADX INFO: loaded from: classes5.dex */
public final class SubscriptionLandingFlowFragment extends FlowFragment<LoadingLayoutContainerBinding> implements SubscriptionLandingFlow {
    public static final a j;
    public static final /* synthetic */ ze4<Object>[] k;
    public SubscriptionLandingFlowPresenter presenter;

    public static final class a {
    }

    static {
        bs6 bs6Var = new bs6(SubscriptionLandingFlowFragment.class, "binding", "getBinding()Lcom/warefly/checkscan/core/ui/databinding/LoadingLayoutContainerBinding;", 0);
        x07.a.getClass();
        k = new ze4[]{bs6Var};
        j = new a();
    }

    public final SubscriptionLandingFlowPresenter providePresenter() {
        return new SubscriptionLandingFlowPresenter();
    }
}
