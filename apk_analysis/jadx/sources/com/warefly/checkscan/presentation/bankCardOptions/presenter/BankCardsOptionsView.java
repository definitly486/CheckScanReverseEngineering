package com.warefly.checkscan.presentation.bankCardOptions.presenter;

import com.warefly.checkscan.core.ui.base.architecture.BaseView;
import defpackage.t90;

/* JADX INFO: loaded from: classes5.dex */
public interface BankCardsOptionsView extends BaseView {
    void openOption(t90.a aVar);

    void showBankCardOptionsInfoLoadingError();

    void showLoading(boolean z);

    void showOptions(t90 t90Var);
}
