package com.warefly.checkscan.presentation.flows.webview.presenter;

import androidx.media3.extractor.ts.PsExtractor;
import com.warefly.checkscan.core.ui.base.architecture.BasePresenter;
import com.warefly.checkscan.presentation.Deeplink;
import com.warefly.checkscan.presentation.flows.webview.view.WebviewFlowView;
import defpackage.tf7;

/* JADX INFO: loaded from: classes5.dex */
public final class WebviewFlowPresenter extends BasePresenter<WebviewFlowView> {
    private final Deeplink.Webview deeplink;

    public WebviewFlowPresenter(Deeplink.Webview webview) {
        webview.getClass();
        this.deeplink = webview;
    }

    @Override // defpackage.ih5
    public void onFirstViewAttach() {
        super.onFirstViewAttach();
        WebviewFlowView webviewFlowView = (WebviewFlowView) getViewState();
        if (webviewFlowView != null) {
            Deeplink.Webview webview = this.deeplink;
            webviewFlowView.setLaunchScreen(new tf7(webview.c, PsExtractor.VIDEO_STREAM_MASK, webview.d, webview.e, webview.f));
        }
    }
}
