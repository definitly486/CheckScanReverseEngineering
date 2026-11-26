package androidx.compose.animation;

import androidx.compose.runtime.ProvidableCompositionLocal;
import androidx.compose.ui.graphics.Color;
import defpackage.cl4;
import defpackage.nm4;

/* JADX INFO: loaded from: classes.dex */
public final class CompositionLocalsKt {
    private static final cl4 LocalLookaheadAnimationVisualDebugConfig$delegate = nm4.b(CompositionLocalsKt$LocalLookaheadAnimationVisualDebugConfig$2.INSTANCE);
    private static final cl4 LocalLookaheadAnimationVisualDebugColor$delegate = nm4.b(CompositionLocalsKt$LocalLookaheadAnimationVisualDebugColor$2.INSTANCE);

    public static final ProvidableCompositionLocal<Color> getLocalLookaheadAnimationVisualDebugColor() {
        return (ProvidableCompositionLocal) LocalLookaheadAnimationVisualDebugColor$delegate.getValue();
    }

    public static /* synthetic */ void getLocalLookaheadAnimationVisualDebugColor$annotations() {
    }

    public static final ProvidableCompositionLocal<LookaheadAnimationVisualDebugConfig> getLocalLookaheadAnimationVisualDebugConfig() {
        return (ProvidableCompositionLocal) LocalLookaheadAnimationVisualDebugConfig$delegate.getValue();
    }

    public static /* synthetic */ void getLocalLookaheadAnimationVisualDebugConfig$annotations() {
    }
}
