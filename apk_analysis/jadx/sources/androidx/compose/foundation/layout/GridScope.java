package androidx.compose.foundation.layout;

import androidx.compose.ui.Alignment;
import androidx.compose.ui.Modifier;
import defpackage.n1;
import defpackage.y74;

/* JADX INFO: loaded from: classes.dex */
@LayoutScopeMarker
public interface GridScope {
    public static final Companion Companion = Companion.$$INSTANCE;
    public static final int GridIndexUnspecified = 0;
    public static final int MaxGridIndex = 1000;

    public static final class Companion {
        static final /* synthetic */ Companion $$INSTANCE = new Companion();
        public static final int GridIndexUnspecified = 0;
        public static final int MaxGridIndex = 1000;

        private Companion() {
        }

        public static /* synthetic */ void getGridIndexUnspecified$annotations() {
        }

        public static /* synthetic */ void getMaxGridIndex$annotations() {
        }
    }

    static /* synthetic */ Modifier gridItem$default(GridScope gridScope, Modifier modifier, int i, int i2, int i3, int i4, Alignment alignment, int i5, Object obj) {
        if (obj != null) {
            n1.e("Super calls with default arguments not supported in this target, function: gridItem");
            return null;
        }
        if ((i5 & 1) != 0) {
            i = 0;
        }
        if ((i5 & 2) != 0) {
            i2 = 0;
        }
        if ((i5 & 4) != 0) {
            i3 = 1;
        }
        if ((i5 & 8) != 0) {
            i4 = 1;
        }
        if ((i5 & 16) != 0) {
            alignment = Alignment.Companion.getTopStart();
        }
        return gridScope.gridItem(modifier, i, i2, i3, i4, alignment);
    }

    Modifier gridItem(Modifier modifier, int i, int i2, int i3, int i4, Alignment alignment);

    Modifier gridItem(Modifier modifier, y74 y74Var, y74 y74Var2, Alignment alignment);

    public static final class DefaultImpls {
    }

    static /* synthetic */ Modifier gridItem$default(GridScope gridScope, Modifier modifier, y74 y74Var, y74 y74Var2, Alignment alignment, int i, Object obj) {
        if (obj != null) {
            n1.e("Super calls with default arguments not supported in this target, function: gridItem");
            return null;
        }
        if ((i & 4) != 0) {
            alignment = Alignment.Companion.getTopStart();
        }
        return gridScope.gridItem(modifier, y74Var, y74Var2, alignment);
    }
}
