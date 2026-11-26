package com.warefly.checkscan.presentation.geolocation.presenter;

import com.warefly.checkscan.core.ui.base.architecture.BasePresenter;
import com.warefly.checkscan.presentation.e;
import defpackage.jf6;
import defpackage.kd;
import defpackage.qg7;
import defpackage.uf3;

/* JADX INFO: loaded from: classes5.dex */
public final class SuccessGeolocationPresenter extends BasePresenter<SuccessGeolocationView> {
    private final uf3 flowRouter;
    private final jf6 preferencesRepository;

    public SuccessGeolocationPresenter(uf3 uf3Var, jf6 jf6Var) {
        uf3Var.getClass();
        jf6Var.getClass();
        this.flowRouter = uf3Var;
        this.preferencesRepository = jf6Var;
    }

    public final void finish() {
        new kd.i.a.AbstractC0264a.b("ContinueAfterChange").a();
        this.preferencesRepository.a0();
        boolean zV = this.preferencesRepository.v();
        uf3 uf3Var = this.flowRouter;
        if (zV) {
            uf3Var.g(e.a);
        } else {
            uf3Var.g(qg7.a);
        }
    }
}
