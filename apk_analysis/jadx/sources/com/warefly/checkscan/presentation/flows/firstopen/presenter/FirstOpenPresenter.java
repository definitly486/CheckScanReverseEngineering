package com.warefly.checkscan.presentation.flows.firstopen.presenter;

import com.warefly.checkscan.core.ui.base.architecture.BasePresenter;
import com.warefly.checkscan.presentation.e;
import com.warefly.checkscan.presentation.flows.account.presenter.FirstOpenView;
import defpackage.dg7;
import defpackage.jf6;
import defpackage.lh7;

/* JADX INFO: loaded from: classes5.dex */
public final class FirstOpenPresenter extends BasePresenter<FirstOpenView> {
    private final jf6 preferences;

    public FirstOpenPresenter(jf6 jf6Var) {
        jf6Var.getClass();
        this.preferences = jf6Var;
    }

    @Override // defpackage.ih5
    public void onFirstViewAttach() {
        this.preferences.F0();
        if (this.preferences.B() && !this.preferences.B0()) {
            FirstOpenView firstOpenView = (FirstOpenView) getViewState();
            if (firstOpenView != null) {
                firstOpenView.setLaunchScreen(lh7.a);
                return;
            }
            return;
        }
        if (this.preferences.I0()) {
            FirstOpenView firstOpenView2 = (FirstOpenView) getViewState();
            if (firstOpenView2 != null) {
                firstOpenView2.setLaunchScreen(e.a);
                return;
            }
            return;
        }
        FirstOpenView firstOpenView3 = (FirstOpenView) getViewState();
        if (firstOpenView3 != null) {
            firstOpenView3.setLaunchScreen(dg7.a);
        }
    }
}
