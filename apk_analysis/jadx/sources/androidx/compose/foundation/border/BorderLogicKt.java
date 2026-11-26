package androidx.compose.foundation.border;

import androidx.compose.ui.geometry.CornerRadius;
import androidx.compose.ui.geometry.RoundRect;
import androidx.compose.ui.graphics.AndroidPath_androidKt;
import androidx.compose.ui.graphics.Path;
import androidx.compose.ui.graphics.PathOperation;
import androidx.media3.muxer.MuxerUtil;

/* JADX INFO: loaded from: classes.dex */
public final class BorderLogicKt {
    private static final RoundRect createInsetRoundedRect(float f, RoundRect roundRect) {
        return new RoundRect(roundRect.getLeft() + f, roundRect.getTop() + f, roundRect.getRight() - f, roundRect.getBottom() - f, m1383shrinkKibmq7A(roundRect.m6037getTopLeftCornerRadiuskKHJgLs(), f), m1383shrinkKibmq7A(roundRect.m6038getTopRightCornerRadiuskKHJgLs(), f), m1383shrinkKibmq7A(roundRect.m6036getBottomRightCornerRadiuskKHJgLs(), f), m1383shrinkKibmq7A(roundRect.m6035getBottomLeftCornerRadiuskKHJgLs(), f), null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Path createRoundRectPath(Path path, RoundRect roundRect, float f, boolean z) {
        path.reset();
        Path.addRoundRect$default(path, roundRect, null, 2, null);
        if (!z) {
            Path Path = AndroidPath_androidKt.Path();
            Path.addRoundRect$default(Path, createInsetRoundedRect(f, roundRect), null, 2, null);
            path.mo6121opN5in7k0(path, Path, PathOperation.Companion.m6538getDifferenceb3I0S0c());
        }
        return path;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: shrink-Kibmq7A, reason: not valid java name */
    public static final long m1383shrinkKibmq7A(long j, float f) {
        float fMax = Math.max(0.0f, Float.intBitsToFloat((int) (j >> 32)) - f);
        float fMax2 = Math.max(0.0f, Float.intBitsToFloat((int) (j & MuxerUtil.UNSIGNED_INT_MAX_VALUE)) - f);
        return CornerRadius.m5941constructorimpl((((long) Float.floatToRawIntBits(fMax)) << 32) | (((long) Float.floatToRawIntBits(fMax2)) & MuxerUtil.UNSIGNED_INT_MAX_VALUE));
    }
}
