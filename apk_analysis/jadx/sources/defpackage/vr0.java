package defpackage;

import com.warefly.checkscan.presentation.bonuses.search.presenter.BonusesSearchPresenter;

/* JADX INFO: loaded from: classes5.dex */
public final /* synthetic */ class vr0 extends qm3 implements bm3<Integer, Boolean, j59> {
    @Override // defpackage.bm3
    public final j59 invoke(Integer num, Boolean bool) {
        ((BonusesSearchPresenter) this.receiver).onFavoritePromocode(num.intValue(), bool.booleanValue());
        return j59.a;
    }
}
