package defpackage;

import com.warefly.checkscan.presentation.balance.transferCashback.sbp.view.TransferSBPView$$State;
import com.warefly.checkscan.presentation.flows.cashback.presenter.CashbackView$$State;
import com.warefly.checkscan.support.presentation.main.view.SupportSectionsView$$State;

/* JADX INFO: loaded from: classes5.dex */
public final class i61 extends pe9 {
    public final /* synthetic */ int a;

    public /* synthetic */ i61(int i) {
        this.a = i;
    }

    @Override // defpackage.pe9
    public final kh5 a() {
        switch (this.a) {
            case 0:
                return new CashbackView$$State();
            case 1:
                return new SupportSectionsView$$State();
            default:
                return new TransferSBPView$$State();
        }
    }
}
