package com.warefly.checkscan.presentation.cheques.exportCheques.presenter;

import com.warefly.checkscan.core.ui.base.architecture.BasePresenter;
import com.warefly.checkscan.presentation.cheques.exportCheques.view.ChequesExportView;
import defpackage.gh4;
import defpackage.i3;
import defpackage.j59;
import defpackage.jf6;
import defpackage.ll3;
import defpackage.ne7;
import defpackage.nl3;
import defpackage.pb2;
import defpackage.rj;
import defpackage.uf3;
import defpackage.xd1;
import defpackage.yb8;
import java.util.Date;

/* JADX INFO: loaded from: classes5.dex */
public final class ChequesExportPresenter extends BasePresenter<ChequesExportView> {
    private final xd1 chequesInteractor;
    private String dateFrom;
    private String dateTo;
    private String email;
    private final uf3 flowRouter;
    private final jf6 preferences;
    private final i3 validator;

    public static final class a extends gh4 implements nl3<Throwable, j59> {
        public a() {
            super(1);
        }

        @Override // defpackage.nl3
        public final j59 invoke(Throwable th) {
            th.getClass();
            ChequesExportView chequesExportView = (ChequesExportView) ChequesExportPresenter.this.getViewState();
            if (chequesExportView != null) {
                chequesExportView.showFailDialog();
            }
            return j59.a;
        }
    }

    public static final class b extends gh4 implements ll3<j59> {
        public b() {
            super(0);
        }

        @Override // defpackage.ll3
        public final j59 invoke() {
            ChequesExportView chequesExportView = (ChequesExportView) ChequesExportPresenter.this.getViewState();
            if (chequesExportView != null) {
                chequesExportView.showDoneDialog();
            }
            return j59.a;
        }
    }

    public ChequesExportPresenter(jf6 jf6Var, xd1 xd1Var, i3 i3Var, uf3 uf3Var) {
        jf6Var.getClass();
        xd1Var.getClass();
        i3Var.getClass();
        uf3Var.getClass();
        this.preferences = jf6Var;
        this.chequesInteractor = xd1Var;
        this.validator = i3Var;
        this.flowRouter = uf3Var;
    }

    private final void checkDateField(String str, String str2) {
        if (str == null || str2 == null) {
            ChequesExportView chequesExportView = (ChequesExportView) getViewState();
            if (chequesExportView != null) {
                chequesExportView.showInvalidDateError(true);
            }
            ChequesExportView chequesExportView2 = (ChequesExportView) getViewState();
            if (chequesExportView2 != null) {
                chequesExportView2.showEnableButton(false);
            }
        } else {
            this.dateFrom = str;
            this.dateTo = str2;
            ChequesExportView chequesExportView3 = (ChequesExportView) getViewState();
            if (chequesExportView3 != null) {
                String strReplace = str.replace('-', '.');
                strReplace.getClass();
                String strReplace2 = str2.replace('-', '.');
                strReplace2.getClass();
                chequesExportView3.setDateRangeText(strReplace + " - " + strReplace2);
            }
            ChequesExportView chequesExportView4 = (ChequesExportView) getViewState();
            if (chequesExportView4 != null) {
                chequesExportView4.showInvalidDateError(false);
            }
        }
        checkFields();
    }

    private final void checkEmailField(String str) {
        if (str == null || !this.validator.c(str)) {
            ChequesExportView chequesExportView = (ChequesExportView) getViewState();
            if (chequesExportView != null) {
                chequesExportView.showInvalidEmailError(true);
            }
            ChequesExportView chequesExportView2 = (ChequesExportView) getViewState();
            if (chequesExportView2 != null) {
                chequesExportView2.showEnableButton(false);
            }
        } else {
            this.email = str;
            ChequesExportView chequesExportView3 = (ChequesExportView) getViewState();
            if (chequesExportView3 != null) {
                chequesExportView3.showInvalidEmailError(false);
            }
        }
        checkFields();
    }

    private final void checkFields() {
        ChequesExportView chequesExportView;
        if (this.email == null || this.dateTo == null || this.dateFrom == null || (chequesExportView = (ChequesExportView) getViewState()) == null) {
            return;
        }
        chequesExportView.showEnableButton(true);
    }

    private final void setEmailToField() {
        if (this.preferences.G0() && this.preferences.c0().length() > 0 && this.validator.c(this.preferences.c0())) {
            this.email = this.preferences.c0();
            ChequesExportView chequesExportView = (ChequesExportView) getViewState();
            if (chequesExportView != null) {
                chequesExportView.assignUserEmail(this.preferences.c0());
            }
        }
    }

    public final void onBackClicked() {
        this.flowRouter.c();
    }

    public final void onDateRangeSelected(long j, long j2) {
        this.dateTo = null;
        this.dateFrom = null;
        pb2 pb2Var = pb2.a;
        Date date = new Date(j);
        pb2Var.getClass();
        checkDateField(pb2.a(date), pb2.a(new Date(j2)));
    }

    public final void onEmailChanged(String str) {
        this.email = null;
        checkEmailField(str);
    }

    @Override // defpackage.ih5
    public void onFirstViewAttach() {
        super.onFirstViewAttach();
        setEmailToField();
    }

    public final void unloadCheques() {
        String str;
        String str2;
        String str3 = this.dateFrom;
        if (str3 == null || (str = this.dateTo) == null || (str2 = this.email) == null) {
            return;
        }
        xd1 xd1Var = this.chequesInteractor;
        xd1Var.getClass();
        BasePresenter.disposeOnDestroy$default(this, yb8.e(xd1Var.a.n(str3, str, str2).i(ne7.c).f(rj.a()), new b(), new a()), null, 1, null);
    }
}
