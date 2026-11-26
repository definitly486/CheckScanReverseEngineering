package defpackage;

import com.warefly.checkscan.presentation.offerLanding.landing.view.OfferLandingView$$State;
import com.warefly.checkscan.presentation.onboardingOneSlide.oneSlide.dialogs.BankVerificationView$$State;

/* JADX INFO: loaded from: classes5.dex */
public final class vb0 extends pe9 {
    public final /* synthetic */ int a;

    public /* synthetic */ vb0(int i) {
        this.a = i;
    }

    @Override // defpackage.pe9
    public final kh5 a() {
        switch (this.a) {
            case 0:
                return new BankVerificationView$$State();
            default:
                return new OfferLandingView$$State();
        }
    }
}
