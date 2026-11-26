package com.warefly.checkscan.presentation.flows.verification.presenter;

import com.warefly.checkscan.core.ui.base.architecture.BasePresenter;
import com.warefly.checkscan.presentation.flows.verification.view.VerificationFlowView;
import defpackage.jf6;
import defpackage.oi7;
import defpackage.pc9;
import defpackage.ta8;

/* JADX INFO: loaded from: classes5.dex */
public final class VerificationFlowPresenter extends BasePresenter<VerificationFlowView> {
    private final pc9 args;
    private final jf6 preferencesRepository;

    public VerificationFlowPresenter(jf6 jf6Var, pc9 pc9Var) {
        jf6Var.getClass();
        pc9Var.getClass();
        this.preferencesRepository = jf6Var;
        this.args = pc9Var;
    }

    @Override // defpackage.ih5
    public void onFirstViewAttach() {
        super.onFirstViewAttach();
        VerificationFlowView verificationFlowView = (VerificationFlowView) getViewState();
        if (verificationFlowView != null) {
            String strU0 = this.args.a;
            if (strU0 == null || ta8.M(strU0)) {
                strU0 = null;
            }
            if (strU0 == null) {
                strU0 = this.preferencesRepository.U0();
            }
            verificationFlowView.setLaunchScreen(new oi7(strU0, this.args.b, 4));
        }
    }
}
