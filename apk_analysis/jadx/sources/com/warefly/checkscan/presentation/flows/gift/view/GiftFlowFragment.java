package com.warefly.checkscan.presentation.flows.gift.view;

import com.warefly.checkscan.core.ui.base.architecture.FlowFragment;
import com.warefly.checkscan.core.ui.databinding.LoadingLayoutContainerBinding;
import com.warefly.checkscan.presentation.flows.gift.presenter.GiftFlowPresenter;
import defpackage.bs6;
import defpackage.x07;
import defpackage.ze4;

/* JADX INFO: loaded from: classes5.dex */
public final class GiftFlowFragment extends FlowFragment<LoadingLayoutContainerBinding> implements GiftFlow {
    public static final a j;
    public static final /* synthetic */ ze4<Object>[] k;
    public GiftFlowPresenter presenter;

    public static final class a {
    }

    static {
        bs6 bs6Var = new bs6(GiftFlowFragment.class, "binding", "getBinding()Lcom/warefly/checkscan/core/ui/databinding/LoadingLayoutContainerBinding;", 0);
        x07.a.getClass();
        k = new ze4[]{bs6Var};
        j = new a();
    }

    public final GiftFlowPresenter providePresenter() {
        return new GiftFlowPresenter(requireArguments().getInt("GIFT_ID_KEY"));
    }
}
