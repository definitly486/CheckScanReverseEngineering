package com.warefly.checkscan.presentation.bonuses.shopPage.presenter;

import defpackage.ck0;
import defpackage.cp2;
import defpackage.gh4;
import defpackage.j59;
import defpackage.nl3;

/* JADX INFO: loaded from: classes5.dex */
public final class b extends gh4 implements nl3<cp2, j59> {
    public final /* synthetic */ BonusAdmitadNewPresenter f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public b(BonusAdmitadNewPresenter bonusAdmitadNewPresenter) {
        super(1);
        this.f = bonusAdmitadNewPresenter;
    }

    @Override // defpackage.nl3
    public final j59 invoke(cp2 cp2Var) {
        this.f.blocksLoadingState.put(ck0.Description, Boolean.TRUE);
        return j59.a;
    }
}
