package defpackage;

import com.warefly.checkscan.presentation.bonuses.promocodes.presenter.PromocodesPresenter;

/* JADX INFO: loaded from: classes5.dex */
public final /* synthetic */ class pr6 extends qm3 implements nl3<Integer, j59> {
    @Override // defpackage.nl3
    public final j59 invoke(Integer num) {
        ((PromocodesPresenter) this.receiver).onPromocodeClicked(num.intValue());
        return j59.a;
    }
}
