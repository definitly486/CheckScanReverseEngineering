package defpackage;

import com.warefly.checkscan.presentation.bankCardOptions.presenter.BankCardsOptionsView$$State;
import com.warefly.checkscan.presentation.landing.view.LandingView$$State;
import com.warefly.checkscan.presentation.tasks.rewardedMultiTask.view.RewardedMultiTaskDetailsView$$State;

/* JADX INFO: loaded from: classes5.dex */
public final class i90 extends pe9 {
    public final /* synthetic */ int a;

    public /* synthetic */ i90(int i) {
        this.a = i;
    }

    @Override // defpackage.pe9
    public final kh5 a() {
        switch (this.a) {
            case 0:
                return new BankCardsOptionsView$$State();
            case 1:
                return new LandingView$$State();
            default:
                return new RewardedMultiTaskDetailsView$$State();
        }
    }
}
