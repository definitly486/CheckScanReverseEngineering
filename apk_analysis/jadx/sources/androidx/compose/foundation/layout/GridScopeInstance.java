package androidx.compose.foundation.layout;

import androidx.compose.ui.Alignment;
import androidx.compose.ui.Modifier;
import defpackage.fg;
import defpackage.h8;
import defpackage.y74;

/* JADX INFO: loaded from: classes.dex */
public final class GridScopeInstance implements GridScope {
    public static final int $stable = 0;
    public static final GridScopeInstance INSTANCE = new GridScopeInstance();

    private GridScopeInstance() {
    }

    @Override // androidx.compose.foundation.layout.GridScope
    public Modifier gridItem(Modifier modifier, int i, int i2, int i3, int i4, Alignment alignment) {
        if (i != 0 && (-1000 > i || i >= 1001)) {
            fg.c("row must be between -1000 and 1000");
            return null;
        }
        if (i2 != 0 && (-1000 > i2 || i2 >= 1001)) {
            fg.c("column must be between -1000 and 1000");
            return null;
        }
        if (i3 <= 0) {
            fg.c("rowSpan must be > 0");
            return null;
        }
        if (i4 > 0) {
            return modifier.then(new GridItemElement(i, i2, i3, i4, alignment));
        }
        fg.c("columnSpan must be > 0");
        return null;
    }

    @Override // androidx.compose.foundation.layout.GridScope
    public Modifier gridItem(Modifier modifier, y74 y74Var, y74 y74Var2, Alignment alignment) {
        if (!y74Var.isEmpty()) {
            if (!y74Var2.isEmpty()) {
                int i = y74Var.b;
                int i2 = (y74Var.c - i) + 1;
                int i3 = y74Var2.b;
                return gridItem(modifier, i, i3, i2, (y74Var2.c - i3) + 1, alignment);
            }
            h8.f(y74Var2, "Column range (", ") cannot be empty");
            return null;
        }
        h8.f(y74Var, "Row range (", ") cannot be empty");
        return null;
    }
}
