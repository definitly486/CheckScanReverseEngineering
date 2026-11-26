package com.warefly.checkscan.presentation.bonuses.bonusProgram.view;

import com.warefly.checkscan.core.ui.base.architecture.BaseView;
import defpackage.jo0;
import defpackage.js7;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public interface PointsProgramView extends BaseView, js7 {
    void enableTransfer(boolean z, long j);

    void hideTransfer();

    void showAgreement(String str);

    void showCouldntGetAgreement();

    void showCouldntGetTerms();

    void showCouldntLoadProgram();

    void showCouldntUpdateBalance();

    void showLoadingDialog(boolean z);

    void showLoadingProgram(boolean z);

    void showProgram(long j, String str, String str2, String str3, String str4);

    void showTerms(List<jo0> list);

    void showUpdatingBalance();

    void updateBalance(int i);
}
