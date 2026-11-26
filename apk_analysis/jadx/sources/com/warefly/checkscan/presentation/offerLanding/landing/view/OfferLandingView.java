package com.warefly.checkscan.presentation.offerLanding.landing.view;

import com.warefly.checkscan.core.ui.base.architecture.BaseView;
import defpackage.hu5;

/* JADX INFO: loaded from: classes5.dex */
public interface OfferLandingView extends BaseView {
    void openUrlCustomTab(String str);

    void showButtonLoading(boolean z);

    void showData(hu5 hu5Var);

    void showLandingLoadingError();

    void showLinkLoadingError();
}
