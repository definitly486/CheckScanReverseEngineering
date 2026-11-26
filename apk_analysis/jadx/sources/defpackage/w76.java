package defpackage;

import android.view.View;
import com.warefly.checkscan.auth.presentation.main.view.PhoneSignUpFragment;
import com.warefly.checkscan.auth.presentation.smsVerification.view.VerificationSmsFragment;
import com.warefly.checkscan.presentation.balance.withdrawalMethods.dialogs.WithdrawalCardsDialog;

/* JADX INFO: loaded from: classes5.dex */
public final class w76 extends gh4 implements nl3 {
    public final /* synthetic */ int f;
    public final /* synthetic */ Object g;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ w76(Object obj, int i) {
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
                ((PhoneSignUpFragment) obj2).o().onPhoneChanged(String.valueOf((String) obj));
                break;
            case 1:
                ((View) obj).getClass();
                ((VerificationSmsFragment) obj2).o().onSendCodeAgainClicked();
                break;
            default:
                wi9 wi9Var = (wi9) obj;
                wi9Var.getClass();
                ((WithdrawalCardsDialog) obj2).e.invoke(wi9Var);
                break;
        }
        return j59.a;
    }
}
