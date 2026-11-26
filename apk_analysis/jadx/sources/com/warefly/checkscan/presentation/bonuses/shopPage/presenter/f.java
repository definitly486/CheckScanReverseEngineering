package com.warefly.checkscan.presentation.bonuses.shopPage.presenter;

import com.warefly.checkscan.presentation.bonuses.shopPage.view.BonusAdmitadNewView;
import defpackage.gh4;
import defpackage.ll3;

/* JADX INFO: loaded from: classes5.dex */
public final class f extends gh4 implements ll3<BonusAdmitadNewView> {
    public final /* synthetic */ BonusAdmitadNewPresenter f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public f(BonusAdmitadNewPresenter bonusAdmitadNewPresenter) {
        super(0);
        this.f = bonusAdmitadNewPresenter;
    }

    @Override // defpackage.ll3
    public final BonusAdmitadNewView invoke() {
        return (BonusAdmitadNewView) this.f.getViewState();
    }
}
