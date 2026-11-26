package defpackage;

import android.view.View;
import com.warefly.checkscan.auth.presentation.smsVerification.view.VerificationSmsFragment;
import com.warefly.checkscan.presentation.favorite.view.FavoriteFragment;
import com.warefly.checkscan.presentation.flows.desktop.view.DesktopFlowFragment;

/* JADX INFO: loaded from: classes5.dex */
public final class o42 extends gh4 implements nl3 {
    public final /* synthetic */ int f;
    public final /* synthetic */ Object g;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ o42(Object obj, int i) {
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
                n32 n32Var = (n32) obj;
                n32Var.getClass();
                ((q42) obj2).getClass();
                return q42.a(n32Var);
            case 1:
                ((View) obj).getClass();
                ((DesktopFlowFragment) obj2).q().onTryAgainSelectionOfTabs();
                return j59.a;
            case 2:
                ((FavoriteFragment) obj2).o().onPromocodeClicked(((Number) obj).intValue());
                return j59.a;
            default:
                ((View) obj).getClass();
                ((VerificationSmsFragment) obj2).o().onTryCallVerificationClicked();
                return j59.a;
        }
    }
}
