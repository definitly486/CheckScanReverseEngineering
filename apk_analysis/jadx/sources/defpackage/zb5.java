package defpackage;

import androidx.compose.material3.ModalBottomSheetKt;
import androidx.compose.ui.semantics.SemanticsPropertyReceiver;
import androidx.navigation.NavController;
import androidx.navigation.NavDestination;
import androidx.navigation.NavOptionsBuilder;
import yads.d22;
import yads.s22;

/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class zb5 implements nl3 {
    public final /* synthetic */ int b;
    public final /* synthetic */ Object c;
    public final /* synthetic */ Object d;

    public /* synthetic */ zb5(int i, Object obj, Object obj2) {
        this.b = i;
        this.c = obj;
        this.d = obj2;
    }

    @Override // defpackage.nl3
    public final Object invoke(Object obj) {
        int i = this.b;
        Object obj2 = this.d;
        Object obj3 = this.c;
        switch (i) {
            case 0:
                return ModalBottomSheetKt.Scrim_KTwxG1Y$lambda$31$lambda$30((String) obj3, (ll3) obj2, (SemanticsPropertyReceiver) obj);
            case 1:
                return NavController.handleDeepLink$lambda$21((NavDestination) obj3, (NavController) obj2, (NavOptionsBuilder) obj);
            default:
                return d22.a((s22) obj3, (d22) obj2, ((Long) obj).longValue());
        }
    }
}
