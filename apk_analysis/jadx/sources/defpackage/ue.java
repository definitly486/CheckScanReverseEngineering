package defpackage;

import androidx.camera.camera2.adapter.CameraControlAdapter;
import androidx.camera.camera2.pipe.Result3A;
import androidx.compose.foundation.gestures.AnchoredDraggableKt;
import androidx.compose.material3.SwipeToDismissBoxState;
import androidx.compose.material3.SwipeToDismissBoxValue;
import yads.br0;
import yads.c32;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class ue implements nl3 {
    public final /* synthetic */ int b;

    public /* synthetic */ ue(int i) {
        this.b = i;
    }

    @Override // defpackage.nl3
    public final Object invoke(Object obj) {
        switch (this.b) {
            case 0:
                return Boolean.valueOf(AnchoredDraggableKt.AnchoredDraggableState$lambda$2(obj));
            case 1:
                return CameraControlAdapter.cancelFocusAndMetering$lambda$0$0((Result3A) obj);
            case 2:
                return Boolean.valueOf(SwipeToDismissBoxState._init_$lambda$0((SwipeToDismissBoxValue) obj));
            default:
                return Boolean.valueOf(c32.a((br0) obj));
        }
    }
}
