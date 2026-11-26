package androidx.compose.material3;

import androidx.compose.ui.Modifier;
import androidx.compose.ui.layout.Measurable;
import androidx.compose.ui.layout.MeasureResult;
import androidx.compose.ui.layout.MeasureScope;
import androidx.compose.ui.unit.Constraints;
import defpackage.fm3;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public interface TabIndicatorScope {
    static /* synthetic */ Modifier tabIndicatorOffset$default(TabIndicatorScope tabIndicatorScope, Modifier modifier, int i, boolean z, int i2, Object obj) {
        if (obj != null) {
            defpackage.n1.e("Super calls with default arguments not supported in this target, function: tabIndicatorOffset");
            return null;
        }
        if ((i2 & 2) != 0) {
            z = false;
        }
        return tabIndicatorScope.tabIndicatorOffset(modifier, i, z);
    }

    Modifier tabIndicatorLayout(Modifier modifier, fm3<? super MeasureScope, ? super Measurable, ? super Constraints, ? super List<TabPosition>, ? extends MeasureResult> fm3Var);

    Modifier tabIndicatorOffset(Modifier modifier, int i, boolean z);
}
