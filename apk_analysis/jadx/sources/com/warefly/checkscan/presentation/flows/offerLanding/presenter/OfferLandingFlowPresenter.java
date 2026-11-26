package com.warefly.checkscan.presentation.flows.offerLanding.presenter;

import com.warefly.checkscan.core.ui.base.architecture.BasePresenter;
import com.warefly.checkscan.presentation.flows.offerLanding.OfferLandingReason;
import com.warefly.checkscan.presentation.flows.offerLanding.view.OfferLandingFlowView;
import defpackage.gh7;

/* JADX INFO: loaded from: classes5.dex */
public final class OfferLandingFlowPresenter extends BasePresenter<OfferLandingFlowView> {
    private final OfferLandingReason reason;

    public OfferLandingFlowPresenter(OfferLandingReason offerLandingReason) {
        offerLandingReason.getClass();
        this.reason = offerLandingReason;
    }

    @Override // defpackage.ih5
    public void onFirstViewAttach() {
        OfferLandingFlowView offerLandingFlowView;
        super.onFirstViewAttach();
        if (!(this.reason instanceof OfferLandingReason.Landing) || (offerLandingFlowView = (OfferLandingFlowView) getViewState()) == null) {
            return;
        }
        offerLandingFlowView.setLaunchScreen(new gh7(((OfferLandingReason.Landing) this.reason).b));
    }
}
