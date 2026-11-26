package androidx.compose.foundation.layout;

import androidx.compose.ui.Modifier;
import defpackage.n1;

/* JADX INFO: loaded from: classes.dex */
@LayoutScopeMarker
public interface FlowColumnScope extends ColumnScope {
    static /* synthetic */ Modifier fillMaxColumnWidth$default(FlowColumnScope flowColumnScope, Modifier modifier, float f, int i, Object obj) {
        if (obj != null) {
            n1.e("Super calls with default arguments not supported in this target, function: fillMaxColumnWidth");
            return null;
        }
        if ((i & 1) != 0) {
            f = 1.0f;
        }
        return flowColumnScope.fillMaxColumnWidth(modifier, f);
    }

    Modifier fillMaxColumnWidth(Modifier modifier, float f);
}
