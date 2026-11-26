package defpackage;

import androidx.compose.foundation.pager.PagerMeasureKt;
import androidx.compose.ui.layout.Placeable;
import androidx.navigation.NavBackStackEntry;
import androidx.navigation.internal.NavControllerImpl;
import java.util.Map;
import yads.k35;
import yads.l13;
import yads.qe5;
import yads.vj;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class oi5 implements nl3 {
    public final /* synthetic */ int b;

    public /* synthetic */ oi5(int i) {
        this.b = i;
    }

    @Override // defpackage.nl3
    public final Object invoke(Object obj) {
        switch (this.b) {
            case 0:
                return NavControllerImpl.navigateInternal$lambda$3((NavBackStackEntry) obj);
            case 1:
                return PagerMeasureKt.measurePager_7L1iB3k$lambda$3((Placeable.PlacementScope) obj);
            case 2:
                return l13.a((Map.Entry) obj);
            case 3:
                return qe5.a((k35) obj);
            default:
                return Float.valueOf(vj.a(((Float) obj).floatValue()));
        }
    }
}
