package com.warefly.checkscan.presentation.cheques.exportCheques.dialog.presenter;

import com.warefly.checkscan.core.ui.base.architecture.BasePresenter;
import com.warefly.checkscan.presentation.cheques.exportCheques.dialog.view.LightDatePickerView;
import defpackage.dy0;

/* JADX INFO: loaded from: classes5.dex */
public final class LightDatePickerPresenter extends BasePresenter<LightDatePickerView> {
    private final boolean rangeAvailable;

    public LightDatePickerPresenter(boolean z) {
        this.rangeAvailable = z;
    }

    public final void handleShowButtonEnabled(dy0 dy0Var, dy0 dy0Var2) {
        boolean z = (dy0Var == null || dy0Var2 == null) ? false : true;
        LightDatePickerView lightDatePickerView = (LightDatePickerView) getViewState();
        if (lightDatePickerView != null) {
            lightDatePickerView.showButtonEnabled(z, dy0Var, dy0Var2);
        }
    }

    @Override // defpackage.ih5
    public void onFirstViewAttach() {
        LightDatePickerView lightDatePickerView;
        if (this.rangeAvailable || (lightDatePickerView = (LightDatePickerView) getViewState()) == null) {
            return;
        }
        lightDatePickerView.setTitle();
    }

    public final void handleShowButtonEnabled(dy0 dy0Var) {
        boolean z = dy0Var != null;
        LightDatePickerView lightDatePickerView = (LightDatePickerView) getViewState();
        if (lightDatePickerView != null) {
            lightDatePickerView.showButtonEnabled(z, dy0Var);
        }
    }
}
