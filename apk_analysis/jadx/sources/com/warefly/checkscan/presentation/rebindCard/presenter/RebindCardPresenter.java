package com.warefly.checkscan.presentation.rebindCard.presenter;

import com.warefly.checkscan.core.ui.base.architecture.BasePresenter;
import com.warefly.checkscan.presentation.rebindCard.view.RebindCardView;
import defpackage.gh4;
import defpackage.j59;
import defpackage.ne7;
import defpackage.nl3;
import defpackage.p51;
import defpackage.q99;
import defpackage.rj;
import defpackage.yb8;

/* JADX INFO: loaded from: classes5.dex */
public final class RebindCardPresenter extends BasePresenter<RebindCardView> {
    private final p51 cashBackInteractor;

    public static final class a extends gh4 implements nl3<q99, j59> {
        public a() {
            super(1);
        }

        @Override // defpackage.nl3
        public final j59 invoke(q99 q99Var) {
            q99 q99Var2 = q99Var;
            RebindCardView rebindCardView = (RebindCardView) RebindCardPresenter.this.getViewState();
            if (rebindCardView != null) {
                String str = q99Var2.h;
                if (str == null) {
                    str = "";
                }
                rebindCardView.openCustomTab(str);
            }
            return j59.a;
        }
    }

    public RebindCardPresenter(p51 p51Var) {
        p51Var.getClass();
        this.cashBackInteractor = p51Var;
    }

    public final j59 onCloseClick() {
        RebindCardView rebindCardView = (RebindCardView) getViewState();
        if (rebindCardView == null) {
            return null;
        }
        rebindCardView.dismissDialog();
        return j59.a;
    }

    public final void onRebindClick() {
        BasePresenter.disposeOnDestroy$default(this, yb8.h(this.cashBackInteractor.a.i().g(ne7.c).e(rj.a()), null, new a(), 3), null, 1, null);
    }
}
