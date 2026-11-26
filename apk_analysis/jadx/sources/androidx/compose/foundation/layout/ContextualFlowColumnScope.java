package androidx.compose.foundation.layout;

import androidx.compose.ui.Modifier;
import defpackage.n1;
import defpackage.ul2;

/* JADX INFO: loaded from: classes.dex */
@LayoutScopeMarker
@ul2
public interface ContextualFlowColumnScope extends ColumnScope {
    static /* synthetic */ Modifier fillMaxColumnWidth$default(ContextualFlowColumnScope contextualFlowColumnScope, Modifier modifier, float f, int i, Object obj) {
        if (obj != null) {
            n1.e("Super calls with default arguments not supported in this target, function: fillMaxColumnWidth");
            return null;
        }
        if ((i & 1) != 0) {
            f = 1.0f;
        }
        return contextualFlowColumnScope.fillMaxColumnWidth(modifier, f);
    }

    Modifier fillMaxColumnWidth(Modifier modifier, float f);

    int getIndexInLine();

    int getLineIndex();

    /* JADX INFO: renamed from: getMaxHeightInLine-D9Ej5fM, reason: not valid java name */
    float mo1773getMaxHeightInLineD9Ej5fM();

    /* JADX INFO: renamed from: getMaxWidth-D9Ej5fM, reason: not valid java name */
    float mo1774getMaxWidthD9Ej5fM();
}
