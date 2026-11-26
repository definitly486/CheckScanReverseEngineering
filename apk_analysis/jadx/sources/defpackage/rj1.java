package defpackage;

import android.view.View;
import com.warefly.checkscan.auth.presentation.main.view.PhoneSignUpFragment;
import com.warefly.checkscan.auth.presentation.smsVerification.view.VerificationSmsFragment;
import com.warefly.checkscan.presentation.CiceroneActivity;

/* JADX INFO: loaded from: classes5.dex */
public final class rj1 extends gh4 implements nl3 {
    public final /* synthetic */ int f;
    public final /* synthetic */ Object g;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ rj1(Object obj, int i) {
        super(1);
        this.f = i;
        this.g = obj;
    }

    @Override // defpackage.nl3
    public final Object invoke(Object obj) {
        int i = this.f;
        Object obj2 = this.g;
        switch (i) {
            case 0:
                CiceroneActivity ciceroneActivity = (CiceroneActivity) obj2;
                rx1 rx1Var = ciceroneActivity.r;
                if ((rx1Var == null || rx1Var.isDisposed()) && !ciceroneActivity.w()) {
                    ciceroneActivity.t().d.g(if7.a);
                }
                break;
            case 1:
                ((View) obj).getClass();
                ((PhoneSignUpFragment) obj2).o().onNextClicked();
                break;
            default:
                ((View) obj).getClass();
                ((VerificationSmsFragment) obj2).o().onBackClicked();
                break;
        }
        return j59.a;
    }
}
