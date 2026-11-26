package defpackage;

import com.warefly.checkscan.presentation.onboardingOneSlide.holder.view.OnboardingOneSlideHolderView$$State;
import com.warefly.checkscan.subscriptionLanding.presentation.flow.subscriptionLanding.view.SubscriptionLandingFlow$$State;

/* JADX INFO: loaded from: classes5.dex */
public final class zw5 extends pe9 {
    public final /* synthetic */ int a;

    public /* synthetic */ zw5(int i) {
        this.a = i;
    }

    @Override // defpackage.pe9
    public final kh5 a() {
        switch (this.a) {
            case 0:
                return new OnboardingOneSlideHolderView$$State();
            default:
                return new SubscriptionLandingFlow$$State();
        }
    }
}
