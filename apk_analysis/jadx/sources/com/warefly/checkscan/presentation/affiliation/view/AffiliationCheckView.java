package com.warefly.checkscan.presentation.affiliation.view;

import com.warefly.checkscan.core.ui.base.architecture.BaseView;
import defpackage.bh6;

/* JADX INFO: loaded from: classes5.dex */
public interface AffiliationCheckView extends BaseView {
    void clearInput();

    void enableCheckButton(boolean z);

    void pasteFromClipboard();

    void setLinkCheckingLoading(boolean z);

    void setNoError();

    void showClearButton(boolean z);

    void showHowToCopyDialog();

    void showNotFoundError();

    void showNotValidLinkError();

    void showResultDialog(bh6 bh6Var);

    void showUnexpectedError();
}
