package com.warefly.checkscan.presentation.bonuses.shopPage.presenter;

import com.warefly.checkscan.presentation.bonuses.shopPage.view.BonusAdmitadNewView;
import defpackage.fy5;
import defpackage.gh4;
import defpackage.j59;
import defpackage.kn1;
import defpackage.la8;
import defpackage.nl3;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public final class l extends gh4 implements nl3<fy5, j59> {
    public final /* synthetic */ BonusAdmitadNewPresenter f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public l(BonusAdmitadNewPresenter bonusAdmitadNewPresenter) {
        super(1);
        this.f = bonusAdmitadNewPresenter;
    }

    @Override // defpackage.nl3
    public final j59 invoke(fy5 fy5Var) {
        fy5 fy5Var2 = fy5Var;
        BonusAdmitadNewView bonusAdmitadNewView = (BonusAdmitadNewView) this.f.getViewState();
        if (bonusAdmitadNewView != null) {
            String strB = fy5Var2.b();
            List<String> listA = fy5Var2.a();
            ArrayList arrayList = new ArrayList(kn1.q(listA, 10));
            Iterator<T> it = listA.iterator();
            while (it.hasNext()) {
                arrayList.add(new la8((String) it.next()));
            }
            bonusAdmitadNewView.setStepsInfo(strB, arrayList);
        }
        return j59.a;
    }
}
