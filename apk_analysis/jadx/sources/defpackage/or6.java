package defpackage;

import com.warefly.checkscan.presentation.bonuses.promocodes.presenter.PromocodesPresenter;

/* JADX INFO: loaded from: classes5.dex */
public final /* synthetic */ class or6 extends qm3 implements bm3<Integer, Boolean, j59> {
    @Override // defpackage.bm3
    public final j59 invoke(Integer num, Boolean bool) {
        ((PromocodesPresenter) this.receiver).onFavoriteClicked(num.intValue(), bool.booleanValue());
        return j59.a;
    }
}
