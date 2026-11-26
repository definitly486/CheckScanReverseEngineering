package defpackage;

import com.warefly.checkscan.presentation.balance.transferCashback.phone.presenter.TransferPhoneView$$State;
import com.warefly.checkscan.presentation.flows.bonuses.presenter.BonusesInnerFlow$$State;
import com.warefly.checkscan.presentation.flows.cheque.view.ChequeFlowView$$State;

/* JADX INFO: loaded from: classes5.dex */
public final class wq0 extends pe9 {
    public final /* synthetic */ int a;

    public /* synthetic */ wq0(int i) {
        this.a = i;
    }

    @Override // defpackage.pe9
    public final kh5 a() {
        switch (this.a) {
            case 0:
                return new BonusesInnerFlow$$State();
            case 1:
                return new ChequeFlowView$$State();
            default:
                return new TransferPhoneView$$State();
        }
    }
}
