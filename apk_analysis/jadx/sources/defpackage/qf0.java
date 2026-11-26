package defpackage;

import androidx.compose.foundation.text.BasicTextFieldKt;
import androidx.compose.foundation.text.input.internal.TextLayoutState;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.MovableContentKt;
import androidx.compose.ui.layout.Measurable;
import androidx.compose.ui.layout.MeasureScope;
import androidx.compose.ui.unit.Constraints;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class qf0 implements dm3 {
    public final /* synthetic */ int b;
    public final /* synthetic */ Object c;

    public /* synthetic */ qf0(Object obj, int i) {
        this.b = i;
        this.c = obj;
    }

    @Override // defpackage.dm3
    public final Object invoke(Object obj, Object obj2, Object obj3) {
        int i = this.b;
        Object obj4 = this.c;
        switch (i) {
            case 0:
                return BasicTextFieldKt.minHeightForSingleLineField$lambda$0((TextLayoutState) obj4, (MeasureScope) obj, (Measurable) obj2, (Constraints) obj3);
            default:
                return MovableContentKt.movableContentOf$lambda$6((hm3) obj4, (Object[]) obj, (Composer) obj2, ((Integer) obj3).intValue());
        }
    }
}
