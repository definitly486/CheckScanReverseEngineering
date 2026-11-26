package defpackage;

import androidx.camera.video.internal.config.DynamicRangeFormatComboRegistry;
import androidx.window.embedding.SafeActivityEmbeddingComponentProvider;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class tu2 implements ll3 {
    public final /* synthetic */ int b;

    public /* synthetic */ tu2(int i) {
        this.b = i;
    }

    @Override // defpackage.ll3
    public final Object invoke() {
        switch (this.b) {
            case 0:
                return DynamicRangeFormatComboRegistry.standardWebmAudios_delegate$lambda$0();
            case 1:
                return cc4.b;
            default:
                return Boolean.valueOf(SafeActivityEmbeddingComponentProvider.isClassAnimationParamsBuilderValid$lambda$52());
        }
    }
}
