package defpackage;

import androidx.compose.foundation.gestures.Draggable2DKt;
import androidx.compose.material3.SwipeToDismissBoxKt;
import androidx.compose.material3.SwipeToDismissBoxValue;
import androidx.compose.ui.geometry.Offset;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class wr2 implements nl3 {
    public final /* synthetic */ int b;

    public /* synthetic */ wr2(int i) {
        this.b = i;
    }

    @Override // defpackage.nl3
    public final Object invoke(Object obj) {
        switch (this.b) {
            case 0:
                return Draggable2DKt.NoOpOnDragStart$lambda$0((Offset) obj);
            default:
                return SwipeToDismissBoxKt.SwipeToDismissBox$lambda$7$lambda$6((SwipeToDismissBoxValue) obj);
        }
    }
}
