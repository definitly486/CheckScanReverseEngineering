package com.warefly.checkscan.presentation.chequePage.form.presenter;

import com.warefly.checkscan.core.ui.base.architecture.BasePresenter;
import defpackage.cl0;
import defpackage.cp2;
import defpackage.dl0;
import defpackage.gh4;
import defpackage.i3;
import defpackage.j59;
import defpackage.ll3;
import defpackage.lq1;
import defpackage.ne7;
import defpackage.nl3;
import defpackage.oq1;
import defpackage.rj;
import defpackage.rm3;
import defpackage.ta8;
import defpackage.wd1;
import defpackage.xd1;
import defpackage.yb8;
import defpackage.zp1;

/* JADX INFO: loaded from: classes5.dex */
public final class ChequeInfoFormPresenter extends BasePresenter<ChequeInfoFormView> {
    private final int chequeId;
    private final xd1 chequeInteractor;
    private final i3 validator;

    public static final class a extends gh4 implements nl3<cp2, j59> {
        public a() {
            super(1);
        }

        @Override // defpackage.nl3
        public final j59 invoke(cp2 cp2Var) {
            ChequeInfoFormView chequeInfoFormView = (ChequeInfoFormView) ChequeInfoFormPresenter.this.getViewState();
            if (chequeInfoFormView != null) {
                chequeInfoFormView.showPostingForm(true);
            }
            return j59.a;
        }
    }

    public static final class b extends gh4 implements nl3<Throwable, j59> {
        public b() {
            super(1);
        }

        @Override // defpackage.nl3
        public final j59 invoke(Throwable th) {
            th.getClass();
            ChequeInfoFormView chequeInfoFormView = (ChequeInfoFormView) ChequeInfoFormPresenter.this.getViewState();
            if (chequeInfoFormView != null) {
                chequeInfoFormView.showPostingFormError();
            }
            return j59.a;
        }
    }

    public static final class c extends gh4 implements ll3<j59> {
        public c() {
            super(0);
        }

        @Override // defpackage.ll3
        public final j59 invoke() {
            ChequeInfoFormView chequeInfoFormView = (ChequeInfoFormView) ChequeInfoFormPresenter.this.getViewState();
            if (chequeInfoFormView != null) {
                chequeInfoFormView.showPostingFormSuccess();
            }
            return j59.a;
        }
    }

    public ChequeInfoFormPresenter(int i, xd1 xd1Var, i3 i3Var) {
        xd1Var.getClass();
        i3Var.getClass();
        this.chequeId = i;
        this.chequeInteractor = xd1Var;
        this.validator = i3Var;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void onPostInfoClicked$lambda$5$lambda$4$lambda$3(ChequeInfoFormPresenter chequeInfoFormPresenter) {
        ChequeInfoFormView chequeInfoFormView = (ChequeInfoFormView) chequeInfoFormPresenter.getViewState();
        if (chequeInfoFormView != null) {
            chequeInfoFormView.showPostingForm(false);
        }
    }

    public final void onDataChanged(String str, String str2) {
        str.getClass();
        str2.getClass();
        i3 i3Var = this.validator;
        i3Var.getClass();
        if (!(!ta8.M(str)) || !i3Var.e.e(ta8.f0(str).toString())) {
            ChequeInfoFormView chequeInfoFormView = (ChequeInfoFormView) getViewState();
            if (chequeInfoFormView != null) {
                chequeInfoFormView.setPostingFormEnabled(false);
                chequeInfoFormView.showInvalidFullNameError(true);
                return;
            }
            return;
        }
        ChequeInfoFormView chequeInfoFormView2 = (ChequeInfoFormView) getViewState();
        if (chequeInfoFormView2 != null) {
            chequeInfoFormView2.showInvalidFullNameError(false);
        }
        if (!this.validator.d(str2)) {
            ChequeInfoFormView chequeInfoFormView3 = (ChequeInfoFormView) getViewState();
            if (chequeInfoFormView3 != null) {
                chequeInfoFormView3.setPostingFormEnabled(false);
                chequeInfoFormView3.showInvalidPhoneError(true);
                return;
            }
            return;
        }
        ChequeInfoFormView chequeInfoFormView4 = (ChequeInfoFormView) getViewState();
        if (chequeInfoFormView4 != null) {
            chequeInfoFormView4.showInvalidFullNameError(false);
            chequeInfoFormView4.showInvalidPhoneError(false);
            chequeInfoFormView4.setPostingFormEnabled(true);
        }
    }

    /* JADX WARN: Code duplicated, block: B:10:0x0030  */
    /* JADX WARN: Code duplicated, block: B:25:0x00b6 A[Catch: all -> 0x002c, TRY_LEAVE, TryCatch #0 {all -> 0x002c, blocks: (B:3:0x0001, B:5:0x0015, B:12:0x0033, B:14:0x003c, B:15:0x003f, B:19:0x004a, B:21:0x0052, B:22:0x0055, B:23:0x00af, B:25:0x00b6), top: B:30:0x0001 }] */
    public final synchronized void onPostInfoClicked(String str, String str2) {
        String str3;
        Object objE;
        try {
            str.getClass();
            str2.getClass();
            this.validator.getClass();
            int i = 1;
            if (!ta8.M(str)) {
                i3 i3Var = this.validator;
                i3Var.getClass();
                if (i3Var.e.e(ta8.f0(str).toString())) {
                    str3 = str;
                } else {
                    str3 = null;
                }
            } else {
                str3 = null;
            }
            if (str3 != null) {
                ChequeInfoFormView chequeInfoFormView = (ChequeInfoFormView) getViewState();
                int i2 = 0;
                if (chequeInfoFormView != null) {
                    chequeInfoFormView.showInvalidFullNameError(false);
                }
                String str4 = this.validator.d(str2) ? str2 : null;
                if (str4 != null) {
                    ChequeInfoFormView chequeInfoFormView2 = (ChequeInfoFormView) getViewState();
                    if (chequeInfoFormView2 != null) {
                        chequeInfoFormView2.showInvalidPhoneError(false);
                    }
                    xd1 xd1Var = this.chequeInteractor;
                    int i3 = this.chequeId;
                    this.validator.getClass();
                    String strA = i3.a(str4);
                    xd1Var.getClass();
                    lq1 lq1VarF = xd1Var.a.f(i3, str3, strA).e(new wd1(xd1Var, i2)).i(ne7.c).f(rj.a());
                    cl0 cl0Var = new cl0(new a(), i);
                    rm3.e eVar = rm3.d;
                    rm3.d dVar = rm3.c;
                    objE = yb8.e(new zp1(new oq1(lq1VarF, cl0Var, eVar, dVar, dVar), new dl0(this, i)), new c(), new b());
                } else {
                    onDataChanged(str, str2);
                    objE = j59.a;
                }
                if (objE == null) {
                    onDataChanged(str, str2);
                    j59 j59Var = j59.a;
                }
            } else {
                onDataChanged(str, str2);
                j59 j59Var2 = j59.a;
            }
        } catch (Throwable th) {
            throw th;
        }
    }
}
