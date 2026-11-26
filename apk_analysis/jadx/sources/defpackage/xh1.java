package defpackage;

import android.view.View;
import com.warefly.checkscan.presentation.cheques.view.ChequesFragment;

/* JADX INFO: loaded from: classes5.dex */
public final class xh1 extends gh4 implements nl3 {
    public final /* synthetic */ int f;
    public final /* synthetic */ Object g;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ xh1(Object obj, int i) {
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
                ((ChequesFragment) obj2).o().onChequeClicked(((Number) obj).intValue());
                break;
            default:
                ((View) obj).getClass();
                ((of5) obj2).b.onClaimMultiTaskClicked();
                break;
        }
        return j59.a;
    }
}
