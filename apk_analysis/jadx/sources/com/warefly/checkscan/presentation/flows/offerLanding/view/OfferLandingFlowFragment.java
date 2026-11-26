package com.warefly.checkscan.presentation.flows.offerLanding.view;

import android.os.Bundle;
import androidx.navigation.NavArgsLazy;
import com.warefly.checkscan.core.ui.base.architecture.FlowFragment;
import com.warefly.checkscan.core.ui.databinding.LoadingLayoutContainerBinding;
import com.warefly.checkscan.presentation.flows.offerLanding.presenter.OfferLandingFlowPresenter;
import defpackage.bs6;
import defpackage.c9;
import defpackage.ll3;
import defpackage.x07;
import defpackage.yt5;
import defpackage.ze4;

/* JADX INFO: loaded from: classes5.dex */
public final class OfferLandingFlowFragment extends FlowFragment<LoadingLayoutContainerBinding> implements OfferLandingFlowView {
    public static final /* synthetic */ ze4<Object>[] k;
    public final NavArgsLazy j = new NavArgsLazy(x07.a(yt5.class), new a());
    public OfferLandingFlowPresenter presenter;

    public static final class a implements ll3<Bundle> {
        public a() {
        }

        @Override // defpackage.ll3
        public final Bundle invoke() {
            OfferLandingFlowFragment offerLandingFlowFragment = OfferLandingFlowFragment.this;
            Bundle arguments = offerLandingFlowFragment.getArguments();
            if (arguments != null) {
                return arguments;
            }
            c9.g(offerLandingFlowFragment, "Fragment ", " has null arguments");
            return null;
        }
    }

    static {
        bs6 bs6Var = new bs6(OfferLandingFlowFragment.class, "binding", "getBinding()Lcom/warefly/checkscan/core/ui/databinding/LoadingLayoutContainerBinding;", 0);
        x07.a.getClass();
        k = new ze4[]{bs6Var};
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final OfferLandingFlowPresenter providePresenter() {
        return new OfferLandingFlowPresenter(((yt5) this.j.getValue()).a);
    }
}
