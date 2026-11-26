package com.warefly.checkscan.presentation.addScreenshots.view;

import android.net.Uri;
import com.warefly.checkscan.core.ui.base.architecture.BaseView;

/* JADX INFO: loaded from: classes5.dex */
public interface AddScreenshotsView extends BaseView {
    void getBankScreenshot();

    void getShopScreenshot();

    void isUploadButtonVisible(boolean z);

    void replaceLoadBankButton(String str);

    void replaceLoadShopButton(String str, Uri uri);

    void showBankDescription(String str, String str2);

    void showHelpScreenshotDialog(long j);

    void showLoading(boolean z);

    void showShopDescription(String str, String str2);

    void showShopExampleImage(String str);

    void showSomeError();
}
