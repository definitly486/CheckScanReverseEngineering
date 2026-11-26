package defpackage;

import android.view.View;
import com.warefly.checkscan.auth.presentation.main.view.PhoneSignUpFragment;

/* JADX INFO: loaded from: classes5.dex */
public final class j30 extends gh4 implements nl3 {
    public final /* synthetic */ int f;
    public final /* synthetic */ Object g;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ j30(Object obj, int i) {
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
                ((k30) obj2).b.onTransferClick();
                break;
            default:
                ((View) obj).getClass();
                ((PhoneSignUpFragment) obj2).o().onBackClicked();
                break;
        }
        return j59.a;
    }
}
