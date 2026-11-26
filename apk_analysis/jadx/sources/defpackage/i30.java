package defpackage;

import android.view.View;
import com.warefly.checkscan.auth.presentation.emailVerification.view.VerificationEmailFragment;
import com.warefly.checkscan.auth.presentation.main.view.PhoneSignUpFragment;
import com.warefly.checkscan.presentation.balance.withdrawalMethods.dialogs.WithdrawalBankDialog;

/* JADX INFO: loaded from: classes5.dex */
public final class i30 extends gh4 implements nl3 {
    public final /* synthetic */ int f;
    public final /* synthetic */ Object g;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ i30(Object obj, int i) {
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
                ((View) obj).getClass();
                ((k30) obj2).b.onAccrualClick();
                break;
            case 1:
                ((View) obj).getClass();
                ((PhoneSignUpFragment) obj2).o().onShowInviteCodeClicked();
                break;
            case 2:
                ((View) obj).getClass();
                ((VerificationEmailFragment) obj2).o().onVerifyClicked();
                break;
            default:
                ((View) obj).getClass();
                ((WithdrawalBankDialog) obj2).dismiss();
                break;
        }
        return j59.a;
    }
}
