package androidx.compose.animation;

import androidx.compose.runtime.CompositionLocalKt;
import androidx.compose.runtime.ProvidableCompositionLocal;
import defpackage.gh4;
import defpackage.ll3;

/* JADX INFO: loaded from: classes.dex */
public final class CompositionLocalsKt$LocalLookaheadAnimationVisualDebugConfig$2 extends gh4 implements ll3<ProvidableCompositionLocal<LookaheadAnimationVisualDebugConfig>> {
    public static final CompositionLocalsKt$LocalLookaheadAnimationVisualDebugConfig$2 INSTANCE = new CompositionLocalsKt$LocalLookaheadAnimationVisualDebugConfig$2();

    /* JADX INFO: renamed from: androidx.compose.animation.CompositionLocalsKt$LocalLookaheadAnimationVisualDebugConfig$2$1, reason: invalid class name */
    public static final class AnonymousClass1 extends gh4 implements ll3<LookaheadAnimationVisualDebugConfig> {
        public static final AnonymousClass1 INSTANCE = new AnonymousClass1();

        public AnonymousClass1() {
            super(0);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // defpackage.ll3
        public final LookaheadAnimationVisualDebugConfig invoke() {
            return new LookaheadAnimationVisualDebugConfig(false, 0L, 0L, 0L, false, 30, null);
        }
    }

    public CompositionLocalsKt$LocalLookaheadAnimationVisualDebugConfig$2() {
        super(0);
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // defpackage.ll3
    public final ProvidableCompositionLocal<LookaheadAnimationVisualDebugConfig> invoke() {
        return CompositionLocalKt.staticCompositionLocalOf(AnonymousClass1.INSTANCE);
    }
}
