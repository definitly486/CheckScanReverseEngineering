package androidx.compose.foundation.layout;

import androidx.compose.ui.Modifier;
import defpackage.n1;
import defpackage.ul2;

/* JADX INFO: loaded from: classes.dex */
@LayoutScopeMarker
@ul2
public interface ContextualFlowRowScope extends RowScope {
    static /* synthetic */ Modifier fillMaxRowHeight$default(ContextualFlowRowScope contextualFlowRowScope, Modifier modifier, float f, int i, Object obj) {
        if (obj != null) {
            n1.e("Super calls with default arguments not supported in this target, function: fillMaxRowHeight");
            return null;
        }
        if ((i & 1) != 0) {
            f = 1.0f;
        }
        return contextualFlowRowScope.fillMaxRowHeight(modifier, f);
    }

    Modifier fillMaxRowHeight(Modifier modifier, float f);

    int getIndexInLine();

    int getLineIndex();

    /* JADX INFO: renamed from: getMaxHeight-D9Ej5fM, reason: not valid java name */
    float mo1776getMaxHeightD9Ej5fM();

    /* JADX INFO: renamed from: getMaxWidthInLine-D9Ej5fM, reason: not valid java name */
    float mo1777getMaxWidthInLineD9Ej5fM();
}
