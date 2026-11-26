package com.warefly.checkscan.shared.universalWebView.presentation.view;

import com.warefly.checkscan.core.ui.base.architecture.BaseView;

/* JADX INFO: loaded from: classes5.dex */
public interface UniversalWebViewView extends BaseView {
    void goBackInHistory();

    void loadUrl(String str);

    void openInExternalApp(String str);

    void openIntentScheme(String str);

    void showError(boolean z);

    void showLoading(boolean z);

    void showTitle(String str);

    void stopRefreshing();
}
