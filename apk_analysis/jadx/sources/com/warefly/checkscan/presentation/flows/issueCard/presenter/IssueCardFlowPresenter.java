package com.warefly.checkscan.presentation.flows.issueCard.presenter;

import com.warefly.checkscan.core.ui.base.architecture.BasePresenter;
import com.warefly.checkscan.presentation.flows.issueCard.view.IssueCardFlowView;
import defpackage.fh7;

/* JADX INFO: loaded from: classes5.dex */
public final class IssueCardFlowPresenter extends BasePresenter<IssueCardFlowView> {
    private final boolean newFlow;

    public IssueCardFlowPresenter(boolean z) {
        this.newFlow = z;
    }

    @Override // defpackage.ih5
    public void onFirstViewAttach() {
        super.onFirstViewAttach();
        IssueCardFlowView issueCardFlowView = (IssueCardFlowView) getViewState();
        if (issueCardFlowView != null) {
            issueCardFlowView.setLaunchScreen(new fh7(this.newFlow));
        }
    }
}
