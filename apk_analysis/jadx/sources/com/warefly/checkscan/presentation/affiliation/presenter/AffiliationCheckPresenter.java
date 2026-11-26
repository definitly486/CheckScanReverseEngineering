package com.warefly.checkscan.presentation.affiliation.presenter;

import com.warefly.checkscan.core.ui.base.architecture.BasePresenter;
import com.warefly.checkscan.presentation.affiliation.presenter.AffiliationCheckPresenter;
import com.warefly.checkscan.presentation.affiliation.view.AffiliationCheckView;
import defpackage.aa4;
import defpackage.bh6;
import defpackage.gh4;
import defpackage.h6;
import defpackage.j59;
import defpackage.kd;
import defpackage.ne7;
import defpackage.nl3;
import defpackage.rj;
import defpackage.ta8;
import defpackage.uf3;
import defpackage.uz7;
import defpackage.x9;
import defpackage.yb8;

/* JADX INFO: loaded from: classes5.dex */
public final class AffiliationCheckPresenter extends BasePresenter<AffiliationCheckView> {
    private final x9 admitadInteractor;
    private final uf3 flowRouter;
    private boolean isCheckingInProgress;
    private String link;
    private final int linkCheckerId;
    private final int shopId;

    public static final class a extends gh4 implements nl3<Throwable, j59> {
        public a() {
            super(1);
        }

        @Override // defpackage.nl3
        public final j59 invoke(Throwable th) {
            th.getClass();
            AffiliationCheckView affiliationCheckView = (AffiliationCheckView) AffiliationCheckPresenter.this.getViewState();
            if (affiliationCheckView != null) {
                affiliationCheckView.showUnexpectedError();
            }
            return j59.a;
        }
    }

    public static final class b extends gh4 implements nl3<bh6, j59> {
        public b() {
            super(1);
        }

        @Override // defpackage.nl3
        public final j59 invoke(bh6 bh6Var) {
            AffiliationCheckView affiliationCheckView;
            bh6 bh6Var2 = bh6Var;
            boolean z = bh6Var2 instanceof bh6.a;
            AffiliationCheckPresenter affiliationCheckPresenter = AffiliationCheckPresenter.this;
            if (z) {
                AffiliationCheckView affiliationCheckView2 = (AffiliationCheckView) affiliationCheckPresenter.getViewState();
                if (affiliationCheckView2 != null) {
                    affiliationCheckView2.showResultDialog(bh6Var2);
                }
            } else if (aa4.e(bh6Var2, bh6.b.a)) {
                AffiliationCheckView affiliationCheckView3 = (AffiliationCheckView) affiliationCheckPresenter.getViewState();
                if (affiliationCheckView3 != null) {
                    affiliationCheckView3.showUnexpectedError();
                }
            } else if (bh6Var2 instanceof bh6.c) {
                AffiliationCheckView affiliationCheckView4 = (AffiliationCheckView) affiliationCheckPresenter.getViewState();
                if (affiliationCheckView4 != null) {
                    affiliationCheckView4.showResultDialog(bh6Var2);
                }
            } else if (aa4.e(bh6Var2, bh6.d.a)) {
                AffiliationCheckView affiliationCheckView5 = (AffiliationCheckView) affiliationCheckPresenter.getViewState();
                if (affiliationCheckView5 != null) {
                    affiliationCheckView5.showNotFoundError();
                }
            } else if (aa4.e(bh6Var2, bh6.e.a) && (affiliationCheckView = (AffiliationCheckView) affiliationCheckPresenter.getViewState()) != null) {
                affiliationCheckView.showNotValidLinkError();
            }
            return j59.a;
        }
    }

    public AffiliationCheckPresenter(int i, int i2, x9 x9Var, uf3 uf3Var) {
        x9Var.getClass();
        uf3Var.getClass();
        this.linkCheckerId = i;
        this.shopId = i2;
        this.admitadInteractor = x9Var;
        this.flowRouter = uf3Var;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void checkLink$lambda$1$lambda$0(AffiliationCheckPresenter affiliationCheckPresenter) {
        AffiliationCheckView affiliationCheckView = (AffiliationCheckView) affiliationCheckPresenter.getViewState();
        if (affiliationCheckView != null) {
            affiliationCheckView.setLinkCheckingLoading(false);
        }
        affiliationCheckPresenter.isCheckingInProgress = false;
    }

    public final void checkLink() {
        if (this.isCheckingInProgress) {
            return;
        }
        kd.e.a.b.C0240a.e.a();
        String str = this.link;
        if (str != null) {
            AffiliationCheckView affiliationCheckView = (AffiliationCheckView) getViewState();
            if (affiliationCheckView != null) {
                affiliationCheckView.setLinkCheckingLoading(true);
            }
            this.isCheckingInProgress = true;
            x9 x9Var = this.admitadInteractor;
            int i = this.linkCheckerId;
            Integer numValueOf = Integer.valueOf(this.shopId);
            x9Var.getClass();
            BasePresenter.disposeOnDestroy$default(this, yb8.d(new uz7(x9Var.a.h(str, i, numValueOf, Integer.valueOf(x9Var.b.O0())).i(ne7.c).f(rj.a()), new h6() { // from class: hb
                @Override // defpackage.h6
                public final void run() {
                    AffiliationCheckPresenter.checkLink$lambda$1$lambda$0(this.a);
                }
            }), new a(), new b()), null, 1, null);
        }
    }

    public final void clearLinkInput() {
        AffiliationCheckView affiliationCheckView = (AffiliationCheckView) getViewState();
        if (affiliationCheckView != null) {
            affiliationCheckView.clearInput();
        }
        this.link = null;
        AffiliationCheckView affiliationCheckView2 = (AffiliationCheckView) getViewState();
        if (affiliationCheckView2 != null) {
            affiliationCheckView2.setNoError();
        }
    }

    public final void copyPasteLink() {
        AffiliationCheckView affiliationCheckView = (AffiliationCheckView) getViewState();
        if (affiliationCheckView != null) {
            affiliationCheckView.pasteFromClipboard();
        }
    }

    public final void onBackPressed() {
        this.flowRouter.c();
    }

    public final void showHowToCopyLink() {
        ((AffiliationCheckView) getViewState()).showHowToCopyDialog();
    }

    public final void validateLinkFormat(String str) {
        AffiliationCheckView affiliationCheckView;
        str.getClass();
        boolean zM = ta8.M(str);
        boolean z = !zM;
        AffiliationCheckView affiliationCheckView2 = (AffiliationCheckView) getViewState();
        if (affiliationCheckView2 != null) {
            affiliationCheckView2.enableCheckButton(z);
        }
        AffiliationCheckView affiliationCheckView3 = (AffiliationCheckView) getViewState();
        if (affiliationCheckView3 != null) {
            affiliationCheckView3.showClearButton(z);
        }
        if (!zM && (affiliationCheckView = (AffiliationCheckView) getViewState()) != null) {
            affiliationCheckView.setNoError();
        }
        this.link = str;
    }
}
