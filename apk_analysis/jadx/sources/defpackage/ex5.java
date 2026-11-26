package defpackage;

import com.warefly.checkscan.presentation.bonuses.promocodes.presenter.PromocodesView$$State;
import com.warefly.checkscan.presentation.flows.requests.presenter.RequestsView$$State;
import com.warefly.checkscan.presentation.onboardingOneSlide.oneSlide.view.OnboardingOneSlideView$$State;

/* JADX INFO: loaded from: classes5.dex */
public final class ex5 extends pe9 {
    public final /* synthetic */ int a;

    public /* synthetic */ ex5(int i) {
        this.a = i;
    }

    @Override // defpackage.pe9
    public final kh5 a() {
        switch (this.a) {
            case 0:
                return new OnboardingOneSlideView$$State();
            case 1:
                return new PromocodesView$$State();
            default:
                return new RequestsView$$State();
        }
    }
}
