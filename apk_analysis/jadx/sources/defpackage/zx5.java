package defpackage;

import com.warefly.checkscan.presentation.bonuses.onlineShops.presenter.NewOnlineShopPresenter;

/* JADX INFO: loaded from: classes5.dex */
public final /* synthetic */ class zx5 extends qm3 implements bm3<Integer, Boolean, j59> {
    @Override // defpackage.bm3
    public final j59 invoke(Integer num, Boolean bool) {
        ((NewOnlineShopPresenter) this.receiver).onFavoritePromocode(num.intValue(), bool.booleanValue());
        return j59.a;
    }
}
