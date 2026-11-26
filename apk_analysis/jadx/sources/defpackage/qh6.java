package defpackage;

import android.view.View;
import com.warefly.checkscan.auth.presentation.emailVerification.view.VerificationEmailFragment;
import com.warefly.checkscan.products.presentation.product.view.ProductFragment;

/* JADX INFO: loaded from: classes5.dex */
public final class qh6 extends gh4 implements nl3 {
    public final /* synthetic */ int f;
    public final /* synthetic */ Object g;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ qh6(Object obj, int i) {
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
                ((ProductFragment) obj2).o().onScanClicked();
                break;
            case 1:
                ((View) obj).getClass();
                ((VerificationEmailFragment) obj2).o().onBackClicked();
                break;
            default:
                ((View) obj).getClass();
                ((yi9) obj2).b.onWithdrawalTransferButtonClicked();
                break;
        }
        return j59.a;
    }
}
