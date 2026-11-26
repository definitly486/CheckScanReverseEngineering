package defpackage;

import androidx.camera.camera2.adapter.PhysicalCameraInfoAdapter;
import androidx.camera.camera2.impl.CameraProperties;
import androidx.camera.camera2.impl.CapturePipelineImpl;
import androidx.compose.foundation.text.selection.SelectionContainerKt;
import androidx.compose.foundation.text.selection.SelectionManager;
import androidx.window.embedding.SafeActivityEmbeddingComponentProvider;
import yads.nq0;
import yads.wq0;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class l31 implements ll3 {
    public final /* synthetic */ int b;
    public final /* synthetic */ Object c;

    public /* synthetic */ l31(Object obj, int i) {
        this.b = i;
        this.c = obj;
    }

    @Override // defpackage.ll3
    public final Object invoke() {
        int i = this.b;
        Object obj = this.c;
        switch (i) {
            case 0:
                return Boolean.valueOf(CapturePipelineImpl.hasFlashUnit_delegate$lambda$0((CameraProperties) obj));
            case 1:
                return PhysicalCameraInfoAdapter.camera2CameraInfo_delegate$lambda$0((PhysicalCameraInfoAdapter) obj);
            case 2:
                return Boolean.valueOf(SafeActivityEmbeddingComponentProvider.isMethodUpdateSplitAttributesWithTokenValid$lambda$33((SafeActivityEmbeddingComponentProvider) obj));
            case 3:
                return SelectionContainerKt.SelectionContainer$lambda$9$0$0$0$0$1$1((SelectionManager) obj);
            case 4:
                return nq0.a0((nq0) obj);
            default:
                return wq0.b((wq0) obj);
        }
    }
}
