package defpackage;

import androidx.compose.foundation.layout.Arrangement;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.unit.LayoutDirection;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class zq implements Arrangement.SpacingAlignmentCalculator, xl3 {
    public final /* synthetic */ int b;
    public final /* synthetic */ Object c;

    public /* synthetic */ zq(Object obj, int i) {
        this.b = i;
        this.c = obj;
    }

    @Override // androidx.compose.foundation.layout.Arrangement.SpacingAlignmentCalculator
    public int align(int i, LayoutDirection layoutDirection) {
        return Arrangement.Absolute.spacedBy_D5KLDUw$lambda$1((Alignment.Vertical) this.c, i, layoutDirection);
    }

    @Override // defpackage.xl3
    public Object apply(Object obj) {
        int i = this.b;
        Object obj2 = this.c;
        switch (i) {
            case 1:
                return (Boolean) ((nl3) obj2).invoke(obj);
            default:
                return (List) ((op5) obj2).invoke(obj);
        }
    }
}
