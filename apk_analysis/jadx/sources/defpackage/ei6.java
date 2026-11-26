package defpackage;

import android.view.View;
import com.warefly.checkscan.databinding.DialogWithdrawalBankBinding;

/* JADX INFO: loaded from: classes5.dex */
public final class ei6 extends gh4 implements nl3 {
    public final /* synthetic */ int f;
    public final /* synthetic */ Object g;
    public final /* synthetic */ Object h;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ ei6(int i, Object obj, Object obj2) {
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
                ((fi6) obj3).b.onProductClicked(((ti6) obj2).a);
                break;
            default:
                ((View) obj).getClass();
                ((DialogWithdrawalBankBinding) obj3).webViewContent.loadUrl((String) obj2);
                break;
        }
        return j59.a;
    }
}
