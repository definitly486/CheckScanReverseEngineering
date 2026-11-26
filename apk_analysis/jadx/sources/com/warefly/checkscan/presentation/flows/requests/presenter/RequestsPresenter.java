package com.warefly.checkscan.presentation.flows.requests.presenter;

import com.warefly.checkscan.core.ui.base.architecture.BasePresenter;
import defpackage.ai7;
import defpackage.jf6;
import defpackage.vg7;
import defpackage.vh7;
import defpackage.yh7;

/* JADX INFO: loaded from: classes5.dex */
public final class RequestsPresenter extends BasePresenter<RequestsView> {
    private final vg7 fromWeb;
    private final jf6 preferencesRepository;

    public RequestsPresenter(jf6 jf6Var, vg7 vg7Var) {
        jf6Var.getClass();
        vg7Var.getClass();
        this.preferencesRepository = jf6Var;
        this.fromWeb = vg7Var;
    }

    public static /* synthetic */ void onOpened$default(RequestsPresenter requestsPresenter, String str, int i, Object obj) {
        if ((i & 1) != 0) {
            str = null;
        }
        requestsPresenter.onOpened(str);
    }

    public final void onOpened(String str) {
        RequestsView requestsView = (RequestsView) getViewState();
        if (requestsView != null) {
            requestsView.setLaunchScreen(new vh7(str));
        }
    }

    public final void onScan(long j, String str) {
        str.getClass();
        if (this.preferencesRepository.y0()) {
            RequestsView requestsView = (RequestsView) getViewState();
            if (requestsView != null) {
                requestsView.setLaunchScreen(new yh7(this.fromWeb, j, str));
                return;
            }
            return;
        }
        RequestsView requestsView2 = (RequestsView) getViewState();
        if (requestsView2 != null) {
            requestsView2.setLaunchScreen(new ai7());
        }
    }
}
