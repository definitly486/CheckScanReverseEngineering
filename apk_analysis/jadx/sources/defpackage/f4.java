package defpackage;

import android.view.View;
import com.warefly.checkscan.auth.presentation.callVerification.view.VerificationCallFragment;

/* JADX INFO: loaded from: classes5.dex */
public final class f4 extends gh4 implements nl3 {
    public final /* synthetic */ int f;
    public final /* synthetic */ Object g;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ f4(Object obj, int i) {
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
                Boolean bool = (Boolean) obj;
                c4 c4Var = (c4) obj2;
                bool.getClass();
                if (!bool.booleanValue()) {
                    return aq1.b;
                }
                j5 j5Var = c4Var.b;
                hu4 hu4Var = c4Var.g;
                return j5Var.h(new kp3(hu4Var.d(), hu4Var.c()));
            default:
                ((View) obj).getClass();
                ((VerificationCallFragment) obj2).o().onTrySmsVerificationClicked();
                return j59.a;
        }
    }
}
