package com.warefly.checkscan.bankLanding.presentation.bank.view;

import com.warefly.checkscan.core.ui.base.architecture.FlowView;
import defpackage.na0;

/* JADX INFO: loaded from: classes.dex */
public interface BankLandingView extends FlowView {
    void showButton(boolean z);

    void showContent(na0 na0Var);

    void showError(boolean z);

    void showLoading(boolean z);
}
