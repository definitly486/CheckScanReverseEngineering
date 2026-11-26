package com.warefly.checkscan.presentation.flows.specifyPlace.presenter;

import com.warefly.checkscan.core.ui.base.architecture.BasePresenter;
import defpackage.fg;
import defpackage.fi7;
import defpackage.jf7;
import defpackage.jh2;
import defpackage.uf3;

/* JADX INFO: loaded from: classes5.dex */
public final class SpecifyPlaceFlowPresenter extends BasePresenter<SpecifyPlaceFlowView> {
    private final long chequeRequestId;
    private final uf3 flowRouter;
    private final fi7 reason;
    private final String waitingQueueReceiptQr;

    public SpecifyPlaceFlowPresenter(fi7 fi7Var, String str, long j, uf3 uf3Var) {
        fi7Var.getClass();
        uf3Var.getClass();
        this.reason = fi7Var;
        this.waitingQueueReceiptQr = str;
        this.chequeRequestId = j;
        this.flowRouter = uf3Var;
    }

    private final void onOpened() {
        SpecifyPlaceFlowView specifyPlaceFlowView = (SpecifyPlaceFlowView) getViewState();
        if (specifyPlaceFlowView != null) {
            fi7 fi7Var = this.reason;
            long j = this.chequeRequestId;
            String str = this.waitingQueueReceiptQr;
            if (str != null) {
                specifyPlaceFlowView.setLaunchScreen(new jf7(j, fi7Var, str));
            } else {
                fg.c("Argument waitingQueueReceiptId cannot be null\nif reason is Screens.SpecifyReason.AddCheque");
            }
        }
    }

    public final void onBackClicked() {
        this.flowRouter.i();
    }

    @Override // defpackage.ih5
    public void onFirstViewAttach() {
        super.onFirstViewAttach();
        onOpened();
    }

    public /* synthetic */ SpecifyPlaceFlowPresenter(fi7 fi7Var, String str, long j, uf3 uf3Var, int i, jh2 jh2Var) {
        this(fi7Var, (i & 2) != 0 ? null : str, j, uf3Var);
    }
}
