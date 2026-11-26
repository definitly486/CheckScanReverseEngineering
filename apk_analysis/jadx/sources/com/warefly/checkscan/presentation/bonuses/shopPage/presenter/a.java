package com.warefly.checkscan.presentation.bonuses.shopPage.presenter;

import com.warefly.checkscan.presentation.bonuses.shopPage.view.BonusAdmitadNewView;
import defpackage.gh4;
import defpackage.j59;
import defpackage.kd;
import defpackage.nl3;
import defpackage.r31;
import java.util.Collections;
import java.util.Map;

/* JADX INFO: loaded from: classes5.dex */
public final class a extends gh4 implements nl3<r31, j59> {
    public final /* synthetic */ BonusAdmitadNewPresenter f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public a(BonusAdmitadNewPresenter bonusAdmitadNewPresenter) {
        super(1);
        this.f = bonusAdmitadNewPresenter;
    }

    @Override // defpackage.nl3
    public final j59 invoke(r31 r31Var) {
        r31 r31Var2 = r31Var;
        BonusAdmitadNewPresenter bonusAdmitadNewPresenter = this.f;
        BonusAdmitadNewView bonusAdmitadNewView = (BonusAdmitadNewView) bonusAdmitadNewPresenter.getViewState();
        if (bonusAdmitadNewView != null) {
            r31Var2.getClass();
            bonusAdmitadNewView.showMoreCashbackButton(r31Var2);
        }
        Map mapSingletonMap = Collections.singletonMap("Show_card_button", Long.valueOf(bonusAdmitadNewPresenter.admitadId));
        mapSingletonMap.getClass();
        new kd.e.d.i(mapSingletonMap).a();
        return j59.a;
    }
}
