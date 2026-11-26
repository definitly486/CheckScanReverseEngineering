package com.warefly.checkscan.presentation.bonuses.shopPage.presenter;

import defpackage.gh4;
import defpackage.mz7;
import defpackage.ne7;
import defpackage.nl3;
import defpackage.p08;
import defpackage.r9;
import defpackage.rj;
import defpackage.t9;
import defpackage.x9;
import defpackage.yw3;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public final class e extends gh4 implements nl3<Integer, mz7<List<? extends yw3>>> {
    public final /* synthetic */ BonusAdmitadNewPresenter f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public e(BonusAdmitadNewPresenter bonusAdmitadNewPresenter) {
        super(1);
        this.f = bonusAdmitadNewPresenter;
    }

    @Override // defpackage.nl3
    public final mz7<List<? extends yw3>> invoke(Integer num) {
        int iIntValue = num.intValue();
        BonusAdmitadNewPresenter bonusAdmitadNewPresenter = this.f;
        x9 x9Var = bonusAdmitadNewPresenter.admitadPartnerInteractor;
        return new p08(x9Var.a.e(iIntValue, bonusAdmitadNewPresenter.admitadId), new r9(new t9(x9Var, 0))).i(ne7.c).f(rj.a());
    }
}
