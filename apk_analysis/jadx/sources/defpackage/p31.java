package defpackage;

import androidx.camera.camera2.compat.workaround.CapturePipelineTorchCorrection;
import androidx.camera.video.internal.muxer.Media3MuxerImpl;
import androidx.compose.foundation.text.input.internal.TextFieldDecoratorModifierNode;
import androidx.compose.material3.DragHandleKt;
import androidx.compose.runtime.MutableState;
import yads.wr1;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class p31 implements ll3 {
    public final /* synthetic */ int b;
    public final /* synthetic */ Object c;

    public /* synthetic */ p31(Object obj, int i) {
        this.b = i;
        this.c = obj;
    }

    @Override // defpackage.ll3
    public final Object invoke() {
        int i = this.b;
        Object obj = this.c;
        switch (i) {
            case 0:
                return CapturePipelineTorchCorrection.capturePipelineImpl_delegate$lambda$0((CapturePipelineTorchCorrection) obj);
            case 1:
                return DragHandleKt.VerticalDragHandle$lambda$6$lambda$5((MutableState) obj);
            case 2:
                return Media3MuxerImpl.stop$lambda$1((Media3MuxerImpl) obj);
            case 3:
                return Boolean.valueOf(TextFieldDecoratorModifierNode.applySemantics$lambda$9((TextFieldDecoratorModifierNode) obj));
            default:
                return wr1.c((wr1) obj);
        }
    }
}
