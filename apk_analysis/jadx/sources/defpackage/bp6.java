package defpackage;

import com.warefly.checkscan.auth.presentation.emailVerification.view.VerificationEmailView$$State;
import com.warefly.checkscan.presentation.balance.promoSelectCard.view.PromoSelectCardView$$State;
import com.warefly.checkscan.presentation.replenishmentCard.view.ReplenishmentCardView$$State;

/* JADX INFO: loaded from: classes5.dex */
public final class bp6 extends pe9 {
    public final /* synthetic */ int a;

    public /* synthetic */ bp6(int i) {
        this.a = i;
    }

    @Override // defpackage.pe9
    public final kh5 a() {
        switch (this.a) {
            case 0:
                return new PromoSelectCardView$$State();
            case 1:
                return new ReplenishmentCardView$$State();
            default:
                return new VerificationEmailView$$State();
        }
    }
}
