package defpackage;

import android.view.View;
import com.warefly.checkscan.presentation.onboardingOneSlide.oneSlide.dialogs.BankClientVerificationDialog;
import com.warefly.checkscan.presentation.onboardingOneSlide.oneSlide.dialogs.BankClientVerificationModel;
import com.warefly.checkscan.presentation.onboardingOneSlide.oneSlide.dialogs.BankVerificationPresenter;

/* JADX INFO: loaded from: classes5.dex */
public final class n90 extends gh4 implements nl3 {
    public final /* synthetic */ int f;
    public final /* synthetic */ Object g;
    public final /* synthetic */ Object h;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ n90(int i, Object obj, Object obj2) {
        super(1);
        this.f = i;
        this.g = obj;
        this.h = obj2;
    }

    @Override // defpackage.nl3
    public final Object invoke(Object obj) {
        int i = this.f;
        Object obj2 = this.h;
        Object obj3 = this.g;
        switch (i) {
            case 0:
                ((View) obj).getClass();
                BankVerificationPresenter bankVerificationPresenter = ((BankClientVerificationDialog) obj3).presenter;
                if (bankVerificationPresenter != null) {
                    bankVerificationPresenter.onActionClicked(((BankClientVerificationModel) obj2).e.c);
                    return j59.a;
                }
                aa4.j("presenter");
                throw null;
            case 1:
                ((View) obj).getClass();
                ((m77) obj3).b.onRewardedSubTaskClaim(((o77) obj2).a);
                return j59.a;
            default:
                ((View) obj).getClass();
                ((l09) obj3).b.onBankSelected(((m09) obj2).a);
                return j59.a;
        }
    }
}
