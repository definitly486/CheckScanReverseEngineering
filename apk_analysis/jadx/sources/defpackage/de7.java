package defpackage;

import com.warefly.checkscan.presentation.balance.transferCashback.coupons.presenter.TransferCouponView$$State;
import com.warefly.checkscan.presentation.scanner.onboarding.view.ScannerOnboardingView$$State;

/* JADX INFO: loaded from: classes5.dex */
public final class de7 extends pe9 {
    public final /* synthetic */ int a;

    public /* synthetic */ de7(int i) {
        this.a = i;
    }

    @Override // defpackage.pe9
    public final kh5 a() {
        switch (this.a) {
            case 0:
                return new ScannerOnboardingView$$State();
            default:
                return new TransferCouponView$$State();
        }
    }
}
