package defpackage;

import android.graphics.drawable.Drawable;
import androidx.compose.material3.BadgeKt;
import androidx.compose.material3.DrawerState;
import androidx.compose.material3.NavigationDrawerKt;
import androidx.compose.material3.TooltipScope;
import androidx.compose.runtime.GapComposer;
import androidx.compose.ui.layout.MeasureScope;
import androidx.compose.ui.layout.Placeable;
import androidx.compose.ui.unit.Density;
import yads.ii1;
import yads.yi1;

/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class v00 implements nl3 {
    public final /* synthetic */ int b;
    public final /* synthetic */ Object c;

    public /* synthetic */ v00(Object obj, int i) {
        this.b = i;
        this.c = obj;
    }

    @Override // defpackage.nl3
    public final Object invoke(Object obj) {
        int i = this.b;
        Object obj2 = this.c;
        switch (i) {
            case 0:
                return BadgeKt.badgeBounds$lambda$7$lambda$6((Placeable) obj2, (Placeable.PlacementScope) obj);
            case 1:
                return Boolean.valueOf(GapComposer.stackTraceForValue$lambda$0(obj2, obj));
            case 2:
                return NavigationDrawerKt.ModalNavigationDrawer_FHprtrg$lambda$24$lambda$19$lambda$18((DrawerState) obj2, (Density) obj);
            case 3:
                obj.getClass();
                return ((ll3) obj2).invoke();
            case 4:
                return ((TooltipScope) obj2).obtainAnchorBounds((MeasureScope) obj);
            default:
                return ii1.a((yi1) obj2, (Drawable) obj);
        }
    }
}
