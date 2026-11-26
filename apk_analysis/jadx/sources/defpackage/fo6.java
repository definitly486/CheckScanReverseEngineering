package defpackage;

import android.os.CountDownTimer;
import com.warefly.checkscan.presentation.flows.promotions.registration.view.dialog.PromoResultDialog;

/* JADX INFO: loaded from: classes5.dex */
public final class fo6 extends CountDownTimer {
    public final /* synthetic */ PromoResultDialog a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public fo6(PromoResultDialog promoResultDialog) {
        super(2000L, 1000L);
        this.a = promoResultDialog;
    }

    @Override // android.os.CountDownTimer
    public final void onFinish() {
        this.a.dismiss();
        cancel();
    }

    @Override // android.os.CountDownTimer
    public final void onTick(long j) {
    }
}
