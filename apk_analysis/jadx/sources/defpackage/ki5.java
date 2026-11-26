package defpackage;

import androidx.compose.foundation.pager.PagerKt;
import androidx.compose.foundation.pager.PagerState;
import androidx.navigation.NavBackStackEntry;
import androidx.navigation.NavController;

/* JADX INFO: loaded from: classes3.dex */
public final /* synthetic */ class ki5 implements ll3 {
    public final /* synthetic */ int b;
    public final /* synthetic */ Object c;
    public final /* synthetic */ Object d;

    public /* synthetic */ ki5(int i, Object obj, Object obj2) {
        this.b = i;
        this.c = obj;
        this.d = obj2;
    }

    @Override // defpackage.ll3
    public final Object invoke() {
        int i = this.b;
        Object obj = this.d;
        Object obj2 = this.c;
        switch (i) {
            case 0:
                return NavController.NavControllerNavigatorState.markTransitionComplete$lambda$1((NavController.NavControllerNavigatorState) obj2, (NavBackStackEntry) obj);
            default:
                return Boolean.valueOf(PagerKt.pagerSemantics$performBackwardPaging((PagerState) obj2, (y22) obj));
        }
    }
}
