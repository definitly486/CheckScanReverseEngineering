package defpackage;

import androidx.camera.camera2.impl.CapturePipelineImpl;
import androidx.window.embedding.SafeActivityEmbeddingComponentProvider;
import yads.av3;
import yads.nq0;

/* JADX INFO: loaded from: classes6.dex */
public final /* synthetic */ class m31 implements ll3 {
    public final /* synthetic */ int b;
    public final /* synthetic */ Object c;

    public /* synthetic */ m31(Object obj, int i) {
        this.b = i;
        this.c = obj;
    }

    @Override // defpackage.ll3
    public final Object invoke() {
        int i = this.b;
        Object obj = this.c;
        switch (i) {
            case 0:
                return CapturePipelineImpl.useCaseCameraState_delegate$lambda$0((CapturePipelineImpl) obj);
            case 1:
                return Boolean.valueOf(SafeActivityEmbeddingComponentProvider.isActivityEmbeddingComponentValid$lambda$0((SafeActivityEmbeddingComponentProvider) obj));
            case 2:
                return av3.a((av3) obj);
            default:
                return nq0.Y((nq0) obj);
        }
    }
}
