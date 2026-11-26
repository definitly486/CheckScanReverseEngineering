package defpackage;

import com.warefly.checkscan.auth.presentation.userCallVerification.view.VerificationUserCallView$$State;
import com.warefly.checkscan.presentation.bonuses.coupons.view.CouponsView$$State;
import com.warefly.checkscan.presentation.flows.electrocheques.presenter.ElectroChequesFlowView$$State;
import com.warefly.checkscan.presentation.onboardingCard.view.OnboardingCardSlidesView$$State;
import com.warefly.checkscan.presentation.tasks.promocode.view.PromocodeTaskDetailsView$$State;

/* JADX INFO: loaded from: classes5.dex */
public final class s42 extends pe9 {
    public final /* synthetic */ int a;

    public /* synthetic */ s42(int i) {
        this.a = i;
    }

    @Override // defpackage.pe9
    public final kh5 a() {
        switch (this.a) {
            case 0:
                return new CouponsView$$State();
            case 1:
                return new ElectroChequesFlowView$$State();
            case 2:
                return new OnboardingCardSlidesView$$State();
            case 3:
                return new PromocodeTaskDetailsView$$State();
            default:
                return new VerificationUserCallView$$State();
        }
    }
}
