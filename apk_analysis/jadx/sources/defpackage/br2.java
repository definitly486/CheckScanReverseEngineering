package defpackage;

import androidx.compose.foundation.gestures.DragGestureDetectorKt;
import androidx.compose.foundation.gestures.OffsetSmoother;
import androidx.compose.ui.geometry.Offset;
import yads.e92;
import yads.gl1;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class br2 implements nl3 {
    public final /* synthetic */ int b;

    public /* synthetic */ br2(int i) {
        this.b = i;
    }

    @Override // defpackage.nl3
    public final Object invoke(Object obj) {
        switch (this.b) {
            case 0:
                return DragGestureDetectorKt.detectDragGestures$lambda$0((Offset) obj);
            case 1:
                return Float.valueOf(OffsetSmoother.smoothEventPosition_MK_Hz9U$lambda$1(((Long) obj).longValue()));
            case 2:
                return Boolean.valueOf(e92.c(obj));
            default:
                return Boolean.valueOf(gl1.b(obj));
        }
    }
}
