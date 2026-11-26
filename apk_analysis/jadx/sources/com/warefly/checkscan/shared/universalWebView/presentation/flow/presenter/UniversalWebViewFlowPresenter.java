package com.warefly.checkscan.shared.universalWebView.presentation.flow.presenter;

import com.warefly.checkscan.core.ui.base.architecture.BasePresenter;
import com.warefly.checkscan.shared.universalWebView.presentation.UniversalWebViewArgs;
import com.warefly.checkscan.shared.universalWebView.presentation.flow.view.UniversalWebViewFlowView;
import defpackage.v69;

/* JADX INFO: loaded from: classes5.dex */
public final class UniversalWebViewFlowPresenter extends BasePresenter<UniversalWebViewFlowView> {
    private final UniversalWebViewArgs args;

    public UniversalWebViewFlowPresenter(UniversalWebViewArgs universalWebViewArgs) {
        universalWebViewArgs.getClass();
        this.args = universalWebViewArgs;
    }

    @Override // defpackage.ih5
    public void onFirstViewAttach() {
        super.onFirstViewAttach();
        UniversalWebViewFlowView universalWebViewFlowView = (UniversalWebViewFlowView) getViewState();
        if (universalWebViewFlowView != null) {
            universalWebViewFlowView.setLaunchScreen(new v69(this.args));
        }
    }
}
