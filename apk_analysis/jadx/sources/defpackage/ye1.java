package defpackage;

import com.warefly.checkscan.auth.presentation.callVerification.view.VerificationCallView$$State;
import com.warefly.checkscan.presentation.chequePage.view.ChequePageView$$State;

/* JADX INFO: loaded from: classes.dex */
public final class ye1 extends pe9 {
    public final /* synthetic */ int a;

    public /* synthetic */ ye1(int i) {
        this.a = i;
    }

    @Override // defpackage.pe9
    public final kh5 a() {
        switch (this.a) {
            case 0:
                return new ChequePageView$$State();
            default:
                return new VerificationCallView$$State();
        }
    }
}
