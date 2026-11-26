package defpackage;

import androidx.camera.camera2.impl.CapturePipelineImpl;
import androidx.camera.camera2.pipe.FrameInfo;
import androidx.compose.foundation.gestures.DragGestureDetectorKt;
import androidx.compose.ui.input.pointer.PointerInputChange;
import androidx.compose.ui.text.Savers_androidKt;
import yads.hs1;
import yads.vg2;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class k31 implements nl3 {
    public final /* synthetic */ int b;

    public /* synthetic */ k31(int i) {
        this.b = i;
    }

    @Override // defpackage.nl3
    public final Object invoke(Object obj) {
        switch (this.b) {
            case 0:
                return Boolean.valueOf(CapturePipelineImpl.waitForResult$lambda$0((FrameInfo) obj));
            case 1:
                return DragGestureDetectorKt.detectDragGestures$lambda$7((PointerInputChange) obj);
            case 2:
                nb6 nb6Var = (nb6) obj;
                nb6Var.getClass();
                return Integer.valueOf(nb6Var.h);
            case 3:
                return Savers_androidKt.emojiSupportMatchSaver$lambda$1(obj);
            case 4:
                return Boolean.valueOf(hs1.e(obj));
            default:
                return Boolean.valueOf(vg2.b(obj));
        }
    }
}
