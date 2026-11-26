package defpackage;

import androidx.compose.material3.AppBarKt;
import androidx.compose.material3.BottomAppBarScrollBehavior;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.MovableContentKt;
import androidx.compose.ui.layout.Measurable;
import androidx.compose.ui.layout.MeasureScope;
import androidx.compose.ui.unit.Constraints;

/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class vn implements dm3 {
    public final /* synthetic */ int b;
    public final /* synthetic */ Object c;

    public /* synthetic */ vn(Object obj, int i) {
        this.b = i;
        this.c = obj;
    }

    @Override // defpackage.dm3
    public final Object invoke(Object obj, Object obj2, Object obj3) {
        int i = this.b;
        Object obj4 = this.c;
        switch (i) {
            case 0:
                return AppBarKt.BottomAppBarLayout_t5fmz9U$lambda$23$lambda$22((BottomAppBarScrollBehavior) obj4, (MeasureScope) obj, (Measurable) obj2, (Constraints) obj3);
            default:
                return MovableContentKt.movableContentWithReceiverOf$lambda$4((gm3) obj4, (k39) obj, (Composer) obj2, ((Integer) obj3).intValue());
        }
    }
}
