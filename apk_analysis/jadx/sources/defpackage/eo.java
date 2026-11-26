package defpackage;

import androidx.compose.material3.AppBarKt;
import androidx.compose.material3.TopAppBarState;
import androidx.compose.ui.unit.IntSize;
import androidx.transition.TransitionValues;
import yads.qm5;

/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class eo implements nl3 {
    public final /* synthetic */ int b;
    public final /* synthetic */ Object c;

    public /* synthetic */ eo(Object obj, int i) {
        this.b = i;
        this.c = obj;
    }

    @Override // defpackage.nl3
    public final Object invoke(Object obj) {
        int i = this.b;
        Object obj2 = this.c;
        switch (i) {
            case 0:
                return AppBarKt.adjustHeightOffsetLimit$lambda$38$lambda$37((TopAppBarState) obj2, (IntSize) obj);
            default:
                return qm5.a((TransitionValues) obj2, (int[]) obj);
        }
    }
}
