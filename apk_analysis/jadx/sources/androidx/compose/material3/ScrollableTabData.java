package androidx.compose.material3;

import androidx.compose.animation.core.FiniteAnimationSpec;
import androidx.compose.foundation.ScrollState;
import androidx.compose.ui.unit.Density;
import defpackage.av0;
import defpackage.kx6;
import defpackage.qn1;
import defpackage.y22;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
final class ScrollableTabData {
    private final FiniteAnimationSpec<Float> animationSpec;
    private final y22 coroutineScope;
    private final ScrollState scrollState;
    private Integer selectedTab;

    public ScrollableTabData(ScrollState scrollState, y22 y22Var, FiniteAnimationSpec<Float> finiteAnimationSpec) {
        this.scrollState = scrollState;
        this.coroutineScope = y22Var;
        this.animationSpec = finiteAnimationSpec;
    }

    private final int calculateTabOffset(TabPosition tabPosition, Density density, int i, List<TabPosition> list) {
        int iMo1428roundToPx0680j_4 = density.mo1428roundToPx0680j_4(((TabPosition) qn1.b0(list)).m3980getRightD9Ej5fM()) + i;
        int maxValue = iMo1428roundToPx0680j_4 - this.scrollState.getMaxValue();
        int iMo1428roundToPx0680j_5 = density.mo1428roundToPx0680j_4(tabPosition.m3979getLeftD9Ej5fM()) - ((maxValue / 2) - (density.mo1428roundToPx0680j_4(tabPosition.m3981getWidthD9Ej5fM()) / 2));
        int i2 = iMo1428roundToPx0680j_4 - maxValue;
        if (i2 < 0) {
            i2 = 0;
        }
        return kx6.f(iMo1428roundToPx0680j_5, 0, i2);
    }

    public final void onLaidOut(Density density, int i, List<TabPosition> list, int i2) {
        int iCalculateTabOffset;
        Integer num = this.selectedTab;
        if (num != null && num.intValue() == i2) {
            return;
        }
        this.selectedTab = Integer.valueOf(i2);
        TabPosition tabPosition = (TabPosition) qn1.W(i2, list);
        if (tabPosition == null || this.scrollState.getValue() == (iCalculateTabOffset = calculateTabOffset(tabPosition, density, i, list))) {
            return;
        }
        av0.c(this.coroutineScope, null, null, new ScrollableTabData$onLaidOut$1$1(this, iCalculateTabOffset, null), 3);
    }
}
