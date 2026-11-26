package androidx.compose.foundation.style;

import androidx.compose.foundation.text.modifiers.StylePhase;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.geometry.CornerRadius;
import androidx.compose.ui.geometry.RoundRect;
import androidx.compose.ui.graphics.AndroidPath_androidKt;
import androidx.compose.ui.graphics.Path;
import androidx.compose.ui.graphics.PathOperation;
import androidx.media3.muxer.MuxerUtil;
import defpackage.ul2;
import java.util.Arrays;

/* JADX INFO: loaded from: classes.dex */
public final class StyleModifierKt {
    public static final String OuterNodeKey = "StyleOuterNode";
    private static final String StyleableWithNoStyles = "The styleable() modifier must provide one or more 'style' parameter values. Calling it with no style parameter values has no effect.";

    private static final float addIfSpecified(float f, float f2) {
        return Float.isNaN(f2) ? f : f + f2;
    }

    private static final int addMaxWithMinimum(int i, int i2) {
        if (i == Integer.MAX_VALUE) {
            return i;
        }
        int i3 = i + i2;
        if (i3 < 0) {
            return 0;
        }
        return i3;
    }

    private static final RoundRect createInsetRoundedRect(float f, RoundRect roundRect) {
        return new RoundRect(f, f, roundRect.getWidth() - f, roundRect.getHeight() - f, m2439shrinkKibmq7A(roundRect.m6037getTopLeftCornerRadiuskKHJgLs(), f), m2439shrinkKibmq7A(roundRect.m6038getTopRightCornerRadiuskKHJgLs(), f), m2439shrinkKibmq7A(roundRect.m6036getBottomRightCornerRadiuskKHJgLs(), f), m2439shrinkKibmq7A(roundRect.m6035getBottomLeftCornerRadiuskKHJgLs(), f), null);
    }

    private static final Path createRoundRectPath(Path path, RoundRect roundRect, float f, boolean z) {
        path.reset();
        Path.addRoundRect$default(path, roundRect, null, 2, null);
        if (!z) {
            Path Path = AndroidPath_androidKt.Path();
            Path.addRoundRect$default(Path, createInsetRoundedRect(f, roundRect), null, 2, null);
            path.mo6121opN5in7k0(path, Path, PathOperation.Companion.m6538getDifferenceb3I0S0c());
        }
        return path;
    }

    private static final boolean isSpecified(float f) {
        return !Float.isNaN(f);
    }

    private static final boolean isUnspecified(float f) {
        return Float.isNaN(f);
    }

    /* JADX INFO: renamed from: minus-Kibmq7A, reason: not valid java name */
    private static final long m2438minusKibmq7A(long j, float f) {
        float fMax = Math.max(0.0f, Float.intBitsToFloat((int) (j >> 32)) - f);
        float fMax2 = Math.max(0.0f, Float.intBitsToFloat((int) (j & MuxerUtil.UNSIGNED_INT_MAX_VALUE)) - f);
        return CornerRadius.m5941constructorimpl((((long) Float.floatToRawIntBits(fMax)) << 32) | (((long) Float.floatToRawIntBits(fMax2)) & MuxerUtil.UNSIGNED_INT_MAX_VALUE));
    }

    /* JADX INFO: renamed from: shrink-Kibmq7A, reason: not valid java name */
    private static final long m2439shrinkKibmq7A(long j, float f) {
        float fMax = Math.max(0.0f, Float.intBitsToFloat((int) (j >> 32)) - f);
        float fMax2 = Math.max(0.0f, Float.intBitsToFloat((int) (j & MuxerUtil.UNSIGNED_INT_MAX_VALUE)) - f);
        return CornerRadius.m5941constructorimpl((((long) Float.floatToRawIntBits(fMax)) << 32) | (((long) Float.floatToRawIntBits(fMax2)) & MuxerUtil.UNSIGNED_INT_MAX_VALUE));
    }

    public static final Modifier styleable(Modifier modifier, StyleState styleState, Style style) {
        return style == Style.Companion ? modifier : modifier.then(new StyleElement(styleState, style)).then(StyleInnerElement.INSTANCE);
    }

    public static /* synthetic */ Modifier styleable$default(Modifier modifier, StyleState styleState, Style style, int i, Object obj) {
        if ((i & 1) != 0) {
            styleState = null;
        }
        return styleable(modifier, styleState, style);
    }

    private static final int takeRoundedOrElse(float f, int i) {
        return Float.isNaN(f) ? i : Math.round(f);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: toFlags-uwmK9pY, reason: not valid java name */
    public static final int m2440toFlagsuwmK9pY(int i) {
        StylePhase.Companion companion = StylePhase.Companion;
        if (StylePhase.m2948equalsimpl0(i, companion.m2954getLayoutoWBPZag())) {
            return 32;
        }
        return StylePhase.m2948equalsimpl0(i, companion.m2953getDrawoWBPZag()) ? 64 : 96;
    }

    public static final Modifier styleable(Modifier modifier, StyleState styleState, Style... styleArr) {
        return styleable(modifier, styleState, StyleKt.Style((Style[]) Arrays.copyOf(styleArr, styleArr.length)));
    }

    @ul2
    public static final Modifier styleable(Modifier modifier, StyleState styleState) {
        throw new IllegalStateException(StyleableWithNoStyles);
    }
}
