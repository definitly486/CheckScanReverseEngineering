package defpackage;

import com.warefly.checkscan.presentation.flows.gift.view.GiftFlow$$State;
import com.warefly.checkscan.presentation.onboardingCard.slides.view.OnboardingCardSlideView$$State;

/* JADX INFO: loaded from: classes5.dex */
public final class gq3 extends pe9 {
    public final /* synthetic */ int a;

    public /* synthetic */ gq3(int i) {
        this.a = i;
    }

    @Override // defpackage.pe9
    public final kh5 a() {
        switch (this.a) {
            case 0:
                return new GiftFlow$$State();
            default:
                return new OnboardingCardSlideView$$State();
        }
    }
}
