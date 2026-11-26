package defpackage;

import androidx.compose.foundation.text.LongPressTextDragObserverKt;
import androidx.compose.foundation.text.TextDragObserver;
import androidx.compose.foundation.text.selection.SelectionGesturesKt;
import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.input.pointer.PointerInputChange;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class zv4 implements nl3 {
    public final /* synthetic */ int b;
    public final /* synthetic */ TextDragObserver c;

    public /* synthetic */ zv4(TextDragObserver textDragObserver, int i) {
        this.b = i;
        this.c = textDragObserver;
    }

    @Override // defpackage.nl3
    public final Object invoke(Object obj) {
        int i = this.b;
        TextDragObserver textDragObserver = this.c;
        switch (i) {
            case 0:
                return LongPressTextDragObserverKt.detectDragGesturesWithObserver$lambda$0(textDragObserver, (Offset) obj);
            default:
                return SelectionGesturesKt.touchSelectionFirstPress$lambda$0(textDragObserver, (PointerInputChange) obj);
        }
    }
}
