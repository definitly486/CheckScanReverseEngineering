package com.warefly.checkscan.presentation.electrocheque.onboarding.presenter;

import com.warefly.checkscan.core.ui.base.architecture.BaseView;
import defpackage.rv6;
import defpackage.t64;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public interface ElectroChequesOnBoardingView extends BaseView {
    void enableButton(boolean z);

    void enableRegisteredButton(boolean z);

    void showInstructions(List<t64> list);

    void showQuestions(List<rv6> list);
}
