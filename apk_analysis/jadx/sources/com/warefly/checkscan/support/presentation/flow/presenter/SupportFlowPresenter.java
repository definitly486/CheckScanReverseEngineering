package com.warefly.checkscan.support.presentation.flow.presenter;

import com.warefly.checkscan.core.ui.base.architecture.BasePresenter;
import com.warefly.checkscan.support.presentation.flow.SupportReason;
import com.warefly.checkscan.support.presentation.flow.view.SupportFlowView;
import defpackage.aa4;
import defpackage.uf8;
import defpackage.vf8;

/* JADX INFO: loaded from: classes5.dex */
public final class SupportFlowPresenter extends BasePresenter<SupportFlowView> {
    private final SupportReason reason;

    public SupportFlowPresenter(SupportReason supportReason) {
        supportReason.getClass();
        this.reason = supportReason;
    }

    @Override // defpackage.ih5
    public void onFirstViewAttach() {
        SupportFlowView supportFlowView;
        super.onFirstViewAttach();
        SupportReason supportReason = this.reason;
        if (aa4.e(supportReason, SupportReason.Sections.b)) {
            SupportFlowView supportFlowView2 = (SupportFlowView) getViewState();
            if (supportFlowView2 != null) {
                supportFlowView2.setLaunchScreen(vf8.a);
                return;
            }
            return;
        }
        if (!aa4.e(supportReason, SupportReason.Form.b) || (supportFlowView = (SupportFlowView) getViewState()) == null) {
            return;
        }
        supportFlowView.setLaunchScreen(uf8.a);
    }
}
