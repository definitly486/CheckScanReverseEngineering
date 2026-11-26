package defpackage;

import androidx.camera.camera2.compat.quirk.CamcorderProfileResolutionQuirk;
import androidx.compose.animation.core.SeekableTransitionState;
import androidx.compose.foundation.MagnifierNode;
import androidx.window.embedding.SafeActivityEmbeddingComponentProvider;
import yads.uw5;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class az0 implements ll3 {
    public final /* synthetic */ int b;
    public final /* synthetic */ Object c;

    public /* synthetic */ az0(Object obj, int i) {
        this.b = i;
        this.c = obj;
    }

    @Override // defpackage.ll3
    public final Object invoke() {
        int i = this.b;
        Object obj = this.c;
        switch (i) {
            case 0:
                return CamcorderProfileResolutionQuirk.supportedResolution_delegate$lambda$0((CamcorderProfileResolutionQuirk) obj);
            case 1:
                return MagnifierNode.applySemantics$lambda$0((MagnifierNode) obj);
            case 2:
                ((ta6) obj).N.getClass();
                return null;
            case 3:
                return Boolean.valueOf(SafeActivityEmbeddingComponentProvider.isMethodClearSplitInfoCallbackValid$lambda$14((SafeActivityEmbeddingComponentProvider) obj));
            case 4:
                return SeekableTransitionState.recalculateTotalDurationNanos$lambda$0((SeekableTransitionState) obj);
            default:
                return uw5.a((uw5) obj);
        }
    }
}
