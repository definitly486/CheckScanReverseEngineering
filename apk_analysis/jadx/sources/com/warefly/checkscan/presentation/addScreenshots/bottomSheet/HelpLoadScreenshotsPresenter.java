package com.warefly.checkscan.presentation.addScreenshots.bottomSheet;

import com.warefly.checkscan.core.ui.base.architecture.BasePresenter;
import defpackage.gh4;
import defpackage.j59;
import defpackage.ne7;
import defpackage.nl3;
import defpackage.ot6;
import defpackage.p51;
import defpackage.rj;
import defpackage.yb8;

/* JADX INFO: loaded from: classes5.dex */
public final class HelpLoadScreenshotsPresenter extends BasePresenter<HelpLoadScreenshotsView> {
    private final p51 cashBackInteractor;
    private final long id;

    public static final class a extends gh4 implements nl3<Throwable, j59> {
        public a() {
            super(1);
        }

        @Override // defpackage.nl3
        public final j59 invoke(Throwable th) {
            th.getClass();
            HelpLoadScreenshotsView helpLoadScreenshotsView = (HelpLoadScreenshotsView) HelpLoadScreenshotsPresenter.this.getViewState();
            if (helpLoadScreenshotsView != null) {
                helpLoadScreenshotsView.dismissDialog();
            }
            return j59.a;
        }
    }

    public static final class b extends gh4 implements nl3<ot6, j59> {
        public b() {
            super(1);
        }

        @Override // defpackage.nl3
        public final j59 invoke(ot6 ot6Var) {
            ot6 ot6Var2 = ot6Var;
            HelpLoadScreenshotsView helpLoadScreenshotsView = (HelpLoadScreenshotsView) HelpLoadScreenshotsPresenter.this.getViewState();
            if (helpLoadScreenshotsView != null) {
                helpLoadScreenshotsView.showData(ot6Var2.c);
            }
            return j59.a;
        }
    }

    public HelpLoadScreenshotsPresenter(p51 p51Var, long j) {
        p51Var.getClass();
        this.cashBackInteractor = p51Var;
        this.id = j;
    }

    @Override // defpackage.ih5
    public void onFirstViewAttach() {
        super.onFirstViewAttach();
        p51 p51Var = this.cashBackInteractor;
        BasePresenter.disposeOnDestroy$default(this, yb8.d(p51Var.a.c(this.id).i(ne7.c).f(rj.a()), new a(), new b()), null, 1, null);
    }
}
