package defpackage;

import com.warefly.checkscan.auth.presentation.main.view.PhoneSignUpView$$State;
import com.warefly.checkscan.auth.presentation.smsVerification.view.VerificationSmsView$$State;

/* JADX INFO: loaded from: classes.dex */
public final class y76 extends pe9 {
    public final /* synthetic */ int a;

    @Override // defpackage.pe9
    public final kh5 a() {
        switch (this.a) {
            case 0:
                return new PhoneSignUpView$$State();
            default:
                return new VerificationSmsView$$State();
        }
    }
}
