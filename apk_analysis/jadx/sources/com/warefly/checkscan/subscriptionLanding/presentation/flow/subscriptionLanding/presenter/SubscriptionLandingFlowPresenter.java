package com.warefly.checkscan.subscriptionLanding.presentation.flow.subscriptionLanding.presenter;

import com.warefly.checkscan.core.ui.base.architecture.BasePresenter;
import com.warefly.checkscan.subscriptionLanding.presentation.flow.subscriptionLanding.view.SubscriptionLandingFlow;
import defpackage.pc8;

/* JADX INFO: loaded from: classes5.dex */
public final class SubscriptionLandingFlowPresenter extends BasePresenter<SubscriptionLandingFlow> {
    @Override // defpackage.ih5
    public void onFirstViewAttach() {
        super.onFirstViewAttach();
        SubscriptionLandingFlow subscriptionLandingFlow = (SubscriptionLandingFlow) getViewState();
        if (subscriptionLandingFlow != null) {
            subscriptionLandingFlow.setLaunchScreen(pc8.a);
        }
    }
}
