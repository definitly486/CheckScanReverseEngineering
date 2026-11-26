package com.tapjoy;

import com.tapjoy.internal.s2;

/* JADX INFO: loaded from: classes4.dex */
public final class b0 implements TJOfferwallDiscoverRequestListener {
    public final /* synthetic */ TJOfferwallDiscoverView a;

    public b0(TJOfferwallDiscoverView tJOfferwallDiscoverView) {
        this.a = tJOfferwallDiscoverView;
    }

    @Override // com.tapjoy.TJOfferwallDiscoverRequestListener
    public final void onContentRequestFailure(TJError tJError) {
        TJOfferwallDiscoverListener tJOfferwallDiscoverListener = this.a.c;
        if (tJOfferwallDiscoverListener != null) {
            tJOfferwallDiscoverListener.requestFailure(tJError);
        }
        this.a.clearContent();
    }

    @Override // com.tapjoy.TJOfferwallDiscoverRequestListener
    public final void onContentRequestSuccess(s2 s2Var) {
        TJOfferwallDiscoverView tJOfferwallDiscoverView = this.a;
        tJOfferwallDiscoverView.d = s2Var;
        TJWebView tJWebView = tJOfferwallDiscoverView.a;
        if (tJWebView == null) {
            TapjoyLog.d("Webview is null");
            return;
        }
        String placementURL = TapjoyConnectCore.getInstance().getPlacementURL();
        String str = s2Var.b;
        if (str == null) {
            str = "";
        }
        tJWebView.loadDataWithBaseURL(placementURL, str, "text/html", "charset=UTF-8", null);
    }
}
