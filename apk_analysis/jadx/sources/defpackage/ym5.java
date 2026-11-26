package defpackage;

import com.warefly.checkscan.presentation.newBankCards.presenter.NewBankCardPresenter;

/* JADX INFO: loaded from: classes5.dex */
public final /* synthetic */ class ym5 extends qm3 implements nl3<Long, j59> {
    @Override // defpackage.nl3
    public final j59 invoke(Long l) {
        ((NewBankCardPresenter) this.receiver).onCardClick(l.longValue());
        return j59.a;
    }
}
