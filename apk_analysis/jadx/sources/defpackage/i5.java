package defpackage;

import com.warefly.checkscan.insuranceShowcase.presentation.showcase.view.InsuranceShowcaseView$$State;
import com.warefly.checkscan.presentation.balance.promocodes.view.SelectPromocodeView$$State;
import com.warefly.checkscan.presentation.flows.account.presenter.AccountView$$State;
import com.warefly.checkscan.presentation.verificationCardPhone.view.VerificationCardPhoneView$$State;

/* JADX INFO: loaded from: classes5.dex */
public final class i5 extends pe9 {
    public final /* synthetic */ int a;

    public /* synthetic */ i5(int i) {
        this.a = i;
    }

    @Override // defpackage.pe9
    public final kh5 a() {
        switch (this.a) {
            case 0:
                return new AccountView$$State();
            case 1:
                return new InsuranceShowcaseView$$State();
            case 2:
                return new SelectPromocodeView$$State();
            default:
                return new VerificationCardPhoneView$$State();
        }
    }
}
