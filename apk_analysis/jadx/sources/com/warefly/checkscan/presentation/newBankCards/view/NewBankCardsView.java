package com.warefly.checkscan.presentation.newBankCards.view;

import com.warefly.checkscan.core.ui.base.architecture.BaseView;
import defpackage.k90;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public interface NewBankCardsView extends BaseView {
    void handleProgress(boolean z);

    void setDescription(String str);

    void setTitle(String str);

    void showBankCardsInfoLoadingError();

    void showData(List<k90> list);

    void showNoCards();
}
