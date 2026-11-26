package androidx.compose.animation;

import androidx.compose.runtime.CompositionLocalKt;
import androidx.compose.runtime.ProvidableCompositionLocal;
import androidx.compose.ui.graphics.Color;
import defpackage.gh4;
import defpackage.ll3;

/* JADX INFO: loaded from: classes.dex */
public final class CompositionLocalsKt$LocalLookaheadAnimationVisualDebugColor$2 extends gh4 implements ll3<ProvidableCompositionLocal<Color>> {
    public static final CompositionLocalsKt$LocalLookaheadAnimationVisualDebugColor$2 INSTANCE = new CompositionLocalsKt$LocalLookaheadAnimationVisualDebugColor$2();

    /* JADX INFO: renamed from: androidx.compose.animation.CompositionLocalsKt$LocalLookaheadAnimationVisualDebugColor$2$1, reason: invalid class name */
    public static final class AnonymousClass1 extends gh4 implements ll3<Color> {
        public static final AnonymousClass1 INSTANCE = new AnonymousClass1();

        public AnonymousClass1() {
            super(0);
        }

        @Override // defpackage.ll3
        public /* bridge */ /* synthetic */ Color invoke() {
            return Color.m6222boximpl(m1090invoke0d7_KjU());
        }

        /* JADX INFO: renamed from: invoke-0d7_KjU, reason: not valid java name */
        public final long m1090invoke0d7_KjU() {
            return Color.Companion.m6268getUnspecified0d7_KjU();
        }
    }

    public CompositionLocalsKt$LocalLookaheadAnimationVisualDebugColor$2() {
        super(0);
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // defpackage.ll3
    public final ProvidableCompositionLocal<Color> invoke() {
        return CompositionLocalKt.staticCompositionLocalOf(AnonymousClass1.INSTANCE);
    }
}
