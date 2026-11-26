package defpackage;

import androidx.camera.camera2.pipe.compat.Camera2CameraMetadata;
import androidx.compose.foundation.ScrollNode;
import androidx.compose.foundation.text.TextFieldScrollKt$textFieldScrollable$2$wrappedScrollableState$1$1;
import androidx.compose.foundation.text.TextFieldScrollerPosition;
import yads.fd0;
import yads.hh0;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class fz0 implements ll3 {
    public final /* synthetic */ int b;
    public final /* synthetic */ Object c;

    public /* synthetic */ fz0(Object obj, int i) {
        this.b = i;
        this.c = obj;
    }

    @Override // defpackage.ll3
    public final Object invoke() {
        int i = this.b;
        Object obj = this.c;
        switch (i) {
            case 0:
                return Camera2CameraMetadata._physicalCameraIds$lambda$0((Camera2CameraMetadata) obj);
            case 1:
                return Float.valueOf(ScrollNode.applySemantics$lambda$0((ScrollNode) obj));
            case 2:
                return Boolean.valueOf(TextFieldScrollKt$textFieldScrollable$2$wrappedScrollableState$1$1.canScrollBackward_delegate$lambda$1((TextFieldScrollerPosition) obj));
            case 3:
                return fd0.a((fd0) obj);
            default:
                return hh0.a((hh0) obj);
        }
    }
}
