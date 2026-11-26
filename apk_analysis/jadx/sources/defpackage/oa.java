package defpackage;

import android.view.View;
import com.warefly.checkscan.auth.presentation.callVerification.view.VerificationCallFragment;
import com.warefly.checkscan.presentation.newSearchProducts.view.NewSearchProductsFragment;

/* JADX INFO: loaded from: classes5.dex */
public final class oa extends gh4 implements nl3 {
    public final /* synthetic */ int f;
    public final /* synthetic */ Object g;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ oa(Object obj, int i) {
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
                ((na) obj2).b.onConfirmAdultClick();
                break;
            case 1:
                String str = (String) obj;
                str.getClass();
                ((NewSearchProductsFragment) obj2).o().onChipClick(str);
                break;
            default:
                ((View) obj).getClass();
                ((VerificationCallFragment) obj2).o().onBackClicked();
                break;
        }
        return j59.a;
    }
}
