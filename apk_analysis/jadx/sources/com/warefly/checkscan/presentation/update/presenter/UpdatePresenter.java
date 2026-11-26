package com.warefly.checkscan.presentation.update.presenter;

import com.warefly.checkscan.core.ui.base.architecture.BasePresenter;

/* JADX INFO: loaded from: classes5.dex */
public final class UpdatePresenter extends BasePresenter<UpdateView> {
    public final void onFeedbackClicked() {
        UpdateView updateView = (UpdateView) getViewState();
        if (updateView != null) {
            updateView.openFeedback();
        }
    }

    public final void onUpdateClicked() {
        UpdateView updateView = (UpdateView) getViewState();
        if (updateView != null) {
            updateView.openMarketUrl();
        }
    }
}
