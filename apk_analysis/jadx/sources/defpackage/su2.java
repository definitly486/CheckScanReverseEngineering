package defpackage;

import androidx.camera.video.internal.config.DynamicRangeFormatComboRegistry;
import androidx.compose.material.ripple.DebugRippleTheme;
import androidx.window.embedding.SafeActivityEmbeddingComponentProvider;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class su2 implements ll3 {
    public final /* synthetic */ int b;

    public /* synthetic */ su2(int i) {
        this.b = i;
    }

    @Override // defpackage.ll3
    public final Object invoke() {
        switch (this.b) {
            case 0:
                return DynamicRangeFormatComboRegistry.standardMp4Audios_delegate$lambda$0();
            case 1:
                return md4.b;
            case 2:
                return DebugRippleTheme.INSTANCE;
            default:
                return Boolean.valueOf(SafeActivityEmbeddingComponentProvider.isMethodSetDividerAttributesValid$lambda$43());
        }
    }
}
