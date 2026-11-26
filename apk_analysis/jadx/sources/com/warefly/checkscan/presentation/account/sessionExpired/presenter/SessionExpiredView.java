package com.warefly.checkscan.presentation.account.sessionExpired.presenter;

import com.warefly.checkscan.core.ui.base.architecture.BaseView;

/* JADX INFO: loaded from: classes5.dex */
public interface SessionExpiredView extends BaseView {
    void showCouldntLogout();

    void showLoading(boolean z);

    void startFeedback();
}
