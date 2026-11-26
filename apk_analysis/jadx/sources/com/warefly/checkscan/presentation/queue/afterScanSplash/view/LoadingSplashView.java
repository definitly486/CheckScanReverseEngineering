package com.warefly.checkscan.presentation.queue.afterScanSplash.view;

import com.warefly.checkscan.core.ui.base.architecture.BaseView;
import defpackage.b06;
import defpackage.hc0;
import defpackage.wc8;

/* JADX INFO: loaded from: classes5.dex */
public interface LoadingSplashView extends BaseView {
    void openDeeplink(String str);

    void setFinishedTitle(String str);

    void setSecondsLeft(long j);

    void setSecondsLeftWithoutSplash(long j);

    void setSplashFinishedInvisible(boolean z);

    void setSplashLoadingInvisible(boolean z);

    void setSplashLoadingTitle(String str);

    void setWithoutSplashLoadingTitle(String str);

    void showAdInfoDialog(b06 b06Var);

    void showCloseButton(boolean z);

    void showLoadingWithSplash(boolean z);

    void showLoadingWithoutSplash(boolean z);

    void showReceiptLoadedWithoutSplash();

    void showSplash(hc0.c cVar);

    void showSubscriptionSplash(wc8 wc8Var);

    void skip();

    void startProgressAnimation(long j);

    void startProgressAnimationWithoutSplash(long j);
}
