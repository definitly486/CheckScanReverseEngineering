package com.warefly.checkscan.presentation.flows.gift.presenter;

import com.warefly.checkscan.core.ui.base.architecture.BasePresenter;
import com.warefly.checkscan.presentation.flows.gift.view.GiftFlow;
import defpackage.rg7;

/* JADX INFO: loaded from: classes5.dex */
public final class GiftFlowPresenter extends BasePresenter<GiftFlow> {
    private final int id;

    public GiftFlowPresenter(int i) {
        this.id = i;
    }

    @Override // defpackage.ih5
    public void onFirstViewAttach() {
        super.onFirstViewAttach();
        GiftFlow giftFlow = (GiftFlow) getViewState();
        if (giftFlow != null) {
            giftFlow.setLaunchScreen(new rg7(this.id));
        }
    }
}
