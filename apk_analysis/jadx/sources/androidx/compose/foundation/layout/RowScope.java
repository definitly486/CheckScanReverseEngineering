package androidx.compose.foundation.layout;

import androidx.compose.ui.Alignment;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.layout.HorizontalAlignmentLine;
import androidx.compose.ui.layout.Measured;
import defpackage.n1;
import defpackage.nl3;

/* JADX INFO: loaded from: classes.dex */
@LayoutScopeMarker
public interface RowScope {

    public static final class DefaultImpls {
    }

    static /* synthetic */ Modifier weight$default(RowScope rowScope, Modifier modifier, float f, boolean z, int i, Object obj) {
        if (obj != null) {
            n1.e("Super calls with default arguments not supported in this target, function: weight");
            return null;
        }
        if ((i & 2) != 0) {
            z = true;
        }
        return rowScope.weight(modifier, f, z);
    }

    Modifier align(Modifier modifier, Alignment.Vertical vertical);

    Modifier alignBy(Modifier modifier, HorizontalAlignmentLine horizontalAlignmentLine);

    Modifier alignBy(Modifier modifier, nl3<? super Measured, Integer> nl3Var);

    Modifier alignByBaseline(Modifier modifier);

    Modifier weight(Modifier modifier, float f, boolean z);
}
