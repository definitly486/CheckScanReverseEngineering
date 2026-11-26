package defpackage;

import com.warefly.checkscan.presentation.bonuses.onlineShops.presenter.NewOnlineShopPresenter;

/* JADX INFO: loaded from: classes5.dex */
public final /* synthetic */ class by5 implements iv7, mm3 {
    public final /* synthetic */ NewOnlineShopPresenter b;

    public by5(NewOnlineShopPresenter newOnlineShopPresenter) {
        this.b = newOnlineShopPresenter;
    }

    public final boolean equals(Object obj) {
        if ((obj instanceof iv7) && (obj instanceof mm3)) {
            return getFunctionDelegate().equals(((mm3) obj).getFunctionDelegate());
        }
        return false;
    }

    @Override // defpackage.mm3
    public final cm3<?> getFunctionDelegate() {
        return new qm3(0, this.b, NewOnlineShopPresenter.class, "onMorePromocodesClicked", "onMorePromocodesClicked()V", 0);
    }

    public final int hashCode() {
        return getFunctionDelegate().hashCode();
    }

    @Override // defpackage.iv7
    public final void onMoreClick() {
        this.b.onMorePromocodesClicked();
    }
}
