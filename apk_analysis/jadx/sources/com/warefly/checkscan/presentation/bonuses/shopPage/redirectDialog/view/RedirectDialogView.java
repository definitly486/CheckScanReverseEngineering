package com.warefly.checkscan.presentation.bonuses.shopPage.redirectDialog.view;

import com.warefly.checkscan.core.ui.base.architecture.BaseView;

/* JADX INFO: loaded from: classes5.dex */
public interface RedirectDialogView extends BaseView {
    void close();

    void copyShortLink(String str);

    void hidePreview();

    void openGoToLinkInBrowser(String str);

    void openGoToLinkInCustomTabs(String str);

    void setApp();

    void setDesktop();

    void setMobile();

    void shareShortLink(String str);

    void showCouldntLoadShortLink();

    void showLoadingShortLink(boolean z);

    void showShortLink(String str, boolean z);
}
