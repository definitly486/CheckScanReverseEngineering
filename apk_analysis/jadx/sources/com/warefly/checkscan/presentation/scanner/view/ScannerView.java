package com.warefly.checkscan.presentation.scanner.view;

import com.warefly.checkscan.core.ui.base.architecture.BaseView;
import defpackage.kh1;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public interface ScannerView extends BaseView {
    void handleChequesListVisible(boolean z);

    void handleErrorMessage(boolean z);

    void handleMessageVisibility(boolean z);

    void openGallery();

    void setCheques(List<kh1> list);

    void setLoadButtonText(String str);

    void showBrandlinkButton();

    void showCropError();

    void showLastChequeInfo(String str);

    void showLastChequeInfo(String str, int i);

    void showLoadButton();

    void vibrate();
}
