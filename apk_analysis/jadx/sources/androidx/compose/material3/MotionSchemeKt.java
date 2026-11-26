package androidx.compose.material3;

import androidx.compose.animation.core.FiniteAnimationSpec;
import androidx.compose.material3.tokens.MotionSchemeKeyTokens;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import defpackage.me0;

/* JADX INFO: loaded from: classes2.dex */
public final class MotionSchemeKt {

    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[MotionSchemeKeyTokens.values().length];
            try {
                iArr[MotionSchemeKeyTokens.DefaultSpatial.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[MotionSchemeKeyTokens.FastSpatial.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[MotionSchemeKeyTokens.SlowSpatial.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[MotionSchemeKeyTokens.DefaultEffects.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                iArr[MotionSchemeKeyTokens.FastEffects.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                iArr[MotionSchemeKeyTokens.SlowEffects.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    public static final <T> FiniteAnimationSpec<T> fromToken(MotionScheme motionScheme, MotionSchemeKeyTokens motionSchemeKeyTokens) {
        switch (WhenMappings.$EnumSwitchMapping$0[motionSchemeKeyTokens.ordinal()]) {
            case 1:
                return motionScheme.defaultSpatialSpec();
            case 2:
                return motionScheme.fastSpatialSpec();
            case 3:
                return motionScheme.slowSpatialSpec();
            case 4:
                return motionScheme.defaultEffectsSpec();
            case 5:
                return motionScheme.fastEffectsSpec();
            case 6:
                return motionScheme.slowEffectsSpec();
            default:
                me0.e();
                return null;
        }
    }

    public static final <T> FiniteAnimationSpec<T> value(MotionSchemeKeyTokens motionSchemeKeyTokens, Composer composer, int i) {
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(-19828261, i, -1, "androidx.compose.material3.value (MotionScheme.kt:288)");
        }
        FiniteAnimationSpec<T> finiteAnimationSpecFromToken = fromToken(MaterialTheme.INSTANCE.getMotionScheme(composer, 6), motionSchemeKeyTokens);
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventEnd();
        }
        return finiteAnimationSpecFromToken;
    }
}
