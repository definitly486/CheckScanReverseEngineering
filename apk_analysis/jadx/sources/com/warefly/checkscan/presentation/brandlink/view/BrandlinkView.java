package com.warefly.checkscan.presentation.brandlink.view;

import android.content.Intent;
import com.warefly.checkscan.core.ui.base.architecture.BaseView;

/* JADX INFO: loaded from: classes5.dex */
public interface BrandlinkView extends BaseView {
    void loadWebViewLink(String str);

    void sentFeedbackOnTelegram(Intent intent);

    void setAnonPlaceholder(String str);

    void showError();
}
