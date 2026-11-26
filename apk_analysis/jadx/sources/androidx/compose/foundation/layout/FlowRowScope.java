package androidx.compose.foundation.layout;

import androidx.compose.ui.Modifier;
import defpackage.n1;

/* JADX INFO: loaded from: classes.dex */
@LayoutScopeMarker
public interface FlowRowScope extends RowScope {
    static /* synthetic */ Modifier fillMaxRowHeight$default(FlowRowScope flowRowScope, Modifier modifier, float f, int i, Object obj) {
        if (obj != null) {
            n1.e("Super calls with default arguments not supported in this target, function: fillMaxRowHeight");
            return null;
        }
        if ((i & 1) != 0) {
            f = 1.0f;
        }
        return flowRowScope.fillMaxRowHeight(modifier, f);
    }

    Modifier fillMaxRowHeight(Modifier modifier, float f);
}
