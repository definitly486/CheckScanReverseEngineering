package com.warefly.checkscan.presentation.bonuses.shopPage.presenter;

import com.warefly.checkscan.presentation.bonuses.shopPage.view.BonusAdmitadNewView;
import defpackage.gh4;
import defpackage.j59;
import defpackage.nl3;

/* JADX INFO: loaded from: classes5.dex */
public final class d extends gh4 implements nl3<String, j59> {
    public final /* synthetic */ BonusAdmitadNewPresenter f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public d(BonusAdmitadNewPresenter bonusAdmitadNewPresenter) {
        super(1);
        this.f = bonusAdmitadNewPresenter;
    }

    @Override // defpackage.nl3
    public final j59 invoke(String str) {
        String str2 = str;
        BonusAdmitadNewView bonusAdmitadNewView = (BonusAdmitadNewView) this.f.getViewState();
        if (bonusAdmitadNewView != null) {
            str2.getClass();
            bonusAdmitadNewView.setDescriptionInfo(str2);
        }
        return j59.a;
    }
}
