package androidx.compose.foundation.layout;

import androidx.compose.ui.Alignment;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.layout.Measured;
import androidx.compose.ui.layout.VerticalAlignmentLine;
import defpackage.n1;
import defpackage.nl3;

/* JADX INFO: loaded from: classes.dex */
@LayoutScopeMarker
public interface ColumnScope {

    public static final class DefaultImpls {
    }

    static /* synthetic */ Modifier weight$default(ColumnScope columnScope, Modifier modifier, float f, boolean z, int i, Object obj) {
        if (obj != null) {
            n1.e("Super calls with default arguments not supported in this target, function: weight");
            return null;
        }
        if ((i & 2) != 0) {
            z = true;
        }
        return columnScope.weight(modifier, f, z);
    }

    Modifier align(Modifier modifier, Alignment.Horizontal horizontal);

    Modifier alignBy(Modifier modifier, VerticalAlignmentLine verticalAlignmentLine);

    Modifier alignBy(Modifier modifier, nl3<? super Measured, Integer> nl3Var);

    Modifier weight(Modifier modifier, float f, boolean z);
}
