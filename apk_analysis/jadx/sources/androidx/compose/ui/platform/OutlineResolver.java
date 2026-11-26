package androidx.compose.ui.platform;

import android.graphics.Outline;
import android.os.Build;
import androidx.compose.ui.geometry.CornerRadius;
import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.geometry.Rect;
import androidx.compose.ui.geometry.RoundRect;
import androidx.compose.ui.geometry.RoundRectKt;
import androidx.compose.ui.geometry.Size;
import androidx.compose.ui.graphics.AndroidPath;
import androidx.compose.ui.graphics.AndroidPath_androidKt;
import androidx.compose.ui.graphics.Canvas;
import androidx.compose.ui.graphics.Path;
import androidx.media3.muxer.MuxerUtil;
import defpackage.aa4;
import defpackage.me0;
import defpackage.n1;

/* JADX INFO: loaded from: classes2.dex */
public final class OutlineResolver {
    public static final int $stable = 8;
    private boolean cacheIsDirty;
    private final Outline cachedOutline;
    private Path cachedRrectPath;
    private boolean isSupportedOutline = true;
    private androidx.compose.ui.graphics.Outline outline;
    private boolean outlineNeeded;
    private Path outlinePath;
    private long rectSize;
    private long rectTopLeft;
    private float roundedCornerRadius;
    private Path tmpOpPath;
    private Path tmpPath;
    private RoundRect tmpRoundRect;
    private Path tmpTouchPointPath;
    private boolean usePathForClip;

    public OutlineResolver() {
        Outline outline = new Outline();
        outline.setAlpha(1.0f);
        this.cachedOutline = outline;
        this.rectTopLeft = Offset.Companion.m6003getZeroF1C5BW0();
        this.rectSize = Size.Companion.m6065getZeroNHjbRc();
    }

    /* JADX INFO: renamed from: isSameBounds-4L21HEs, reason: not valid java name */
    private final boolean m8232isSameBounds4L21HEs(RoundRect roundRect, long j, long j2, float f) {
        if (roundRect == null || !RoundRectKt.isSimple(roundRect)) {
            return false;
        }
        int i = (int) (j >> 32);
        if (roundRect.getLeft() != Float.intBitsToFloat(i)) {
            return false;
        }
        float top = roundRect.getTop();
        int i2 = (int) (j & MuxerUtil.UNSIGNED_INT_MAX_VALUE);
        if (top != Float.intBitsToFloat(i2)) {
            return false;
        }
        if (roundRect.getRight() == Float.intBitsToFloat((int) (j2 >> 32)) + Float.intBitsToFloat(i)) {
            return roundRect.getBottom() == Float.intBitsToFloat((int) (j2 & MuxerUtil.UNSIGNED_INT_MAX_VALUE)) + Float.intBitsToFloat(i2) && Float.intBitsToFloat((int) (roundRect.m6037getTopLeftCornerRadiuskKHJgLs() >> 32)) == f;
        }
        return false;
    }

    private final void updateCache() {
        if (this.cacheIsDirty) {
            this.rectTopLeft = Offset.Companion.m6003getZeroF1C5BW0();
            this.roundedCornerRadius = 0.0f;
            this.outlinePath = null;
            this.cacheIsDirty = false;
            this.usePathForClip = false;
            androidx.compose.ui.graphics.Outline outline = this.outline;
            if (outline == null || !this.outlineNeeded || Float.intBitsToFloat((int) (this.rectSize >> 32)) <= 0.0f || Float.intBitsToFloat((int) (this.rectSize & MuxerUtil.UNSIGNED_INT_MAX_VALUE)) <= 0.0f) {
                this.cachedOutline.setEmpty();
                return;
            }
            this.isSupportedOutline = true;
            if (outline instanceof androidx.compose.ui.graphics.Outline.Rectangle) {
                updateCacheWithRect(((androidx.compose.ui.graphics.Outline.Rectangle) outline).getRect());
                return;
            }
            if (outline instanceof androidx.compose.ui.graphics.Outline.Rounded) {
                updateCacheWithRoundRect(((androidx.compose.ui.graphics.Outline.Rounded) outline).getRoundRect());
            } else if (outline instanceof androidx.compose.ui.graphics.Outline.Generic) {
                updateCacheWithPath(((androidx.compose.ui.graphics.Outline.Generic) outline).getPath());
            } else {
                me0.e();
            }
        }
    }

    private final void updateCacheWithPath(Path path) {
        int i = Build.VERSION.SDK_INT;
        if (i > 28 || path.isConvex()) {
            if (i >= 30) {
                OutlineVerificationHelper.INSTANCE.setPath(this.cachedOutline, path);
            } else {
                Outline outline = this.cachedOutline;
                if (!(path instanceof AndroidPath)) {
                    n1.e("Unable to obtain android.graphics.Path");
                    return;
                }
                outline.setConvexPath(((AndroidPath) path).getInternalPath());
            }
            this.usePathForClip = !this.cachedOutline.canClip();
        } else {
            this.isSupportedOutline = false;
            this.cachedOutline.setEmpty();
            this.usePathForClip = true;
        }
        this.outlinePath = path;
    }

    private final void updateCacheWithRect(Rect rect) {
        float left = rect.getLeft();
        this.rectTopLeft = Offset.m5979constructorimpl((((long) Float.floatToRawIntBits(rect.getTop())) & MuxerUtil.UNSIGNED_INT_MAX_VALUE) | (Float.floatToRawIntBits(left) << 32));
        float right = rect.getRight() - rect.getLeft();
        this.rectSize = Size.m6047constructorimpl((((long) Float.floatToRawIntBits(rect.getBottom() - rect.getTop())) & MuxerUtil.UNSIGNED_INT_MAX_VALUE) | (Float.floatToRawIntBits(right) << 32));
        this.cachedOutline.setRect(Math.round(rect.getLeft()), Math.round(rect.getTop()), Math.round(rect.getRight()), Math.round(rect.getBottom()));
    }

    private final void updateCacheWithRoundRect(RoundRect roundRect) {
        float fIntBitsToFloat = Float.intBitsToFloat((int) (roundRect.m6037getTopLeftCornerRadiuskKHJgLs() >> 32));
        float left = roundRect.getLeft();
        this.rectTopLeft = Offset.m5979constructorimpl((((long) Float.floatToRawIntBits(roundRect.getTop())) & MuxerUtil.UNSIGNED_INT_MAX_VALUE) | (Float.floatToRawIntBits(left) << 32));
        float width = roundRect.getWidth();
        this.rectSize = Size.m6047constructorimpl((((long) Float.floatToRawIntBits(roundRect.getHeight())) & MuxerUtil.UNSIGNED_INT_MAX_VALUE) | (Float.floatToRawIntBits(width) << 32));
        if (RoundRectKt.isSimple(roundRect)) {
            this.cachedOutline.setRoundRect(Math.round(roundRect.getLeft()), Math.round(roundRect.getTop()), Math.round(roundRect.getRight()), Math.round(roundRect.getBottom()), fIntBitsToFloat);
            this.roundedCornerRadius = fIntBitsToFloat;
            return;
        }
        Path Path = this.cachedRrectPath;
        if (Path == null) {
            Path = AndroidPath_androidKt.Path();
            this.cachedRrectPath = Path;
        }
        Path.reset();
        Path.addRoundRect$default(Path, roundRect, null, 2, null);
        updateCacheWithPath(Path);
    }

    public final void clipToOutline(Canvas canvas) {
        Path clipPath = getClipPath();
        if (clipPath != null) {
            Canvas.m6203clipPathmtrdDE$default(canvas, clipPath, 0, 2, null);
            return;
        }
        float f = this.roundedCornerRadius;
        if (f <= 0.0f) {
            Canvas.m6204clipRectN_I0leg$default(canvas, Float.intBitsToFloat((int) (this.rectTopLeft >> 32)), Float.intBitsToFloat((int) (this.rectTopLeft & MuxerUtil.UNSIGNED_INT_MAX_VALUE)), Float.intBitsToFloat((int) (this.rectTopLeft >> 32)) + Float.intBitsToFloat((int) (this.rectSize >> 32)), Float.intBitsToFloat((int) (this.rectTopLeft & MuxerUtil.UNSIGNED_INT_MAX_VALUE)) + Float.intBitsToFloat((int) (this.rectSize & MuxerUtil.UNSIGNED_INT_MAX_VALUE)), 0, 16, null);
            return;
        }
        Path Path = this.tmpPath;
        RoundRect roundRect = this.tmpRoundRect;
        if (Path == null || !m8232isSameBounds4L21HEs(roundRect, this.rectTopLeft, this.rectSize, f)) {
            float fIntBitsToFloat = Float.intBitsToFloat((int) (this.rectTopLeft >> 32));
            float fIntBitsToFloat2 = Float.intBitsToFloat((int) (this.rectTopLeft & MuxerUtil.UNSIGNED_INT_MAX_VALUE));
            float fIntBitsToFloat3 = Float.intBitsToFloat((int) (this.rectSize >> 32)) + Float.intBitsToFloat((int) (this.rectTopLeft >> 32));
            float fIntBitsToFloat4 = Float.intBitsToFloat((int) (this.rectSize & MuxerUtil.UNSIGNED_INT_MAX_VALUE)) + Float.intBitsToFloat((int) (this.rectTopLeft & MuxerUtil.UNSIGNED_INT_MAX_VALUE));
            float f2 = this.roundedCornerRadius;
            RoundRect roundRectM6041RoundRectgG7oq9Y = RoundRectKt.m6041RoundRectgG7oq9Y(fIntBitsToFloat, fIntBitsToFloat2, fIntBitsToFloat3, fIntBitsToFloat4, CornerRadius.m5941constructorimpl((((long) Float.floatToRawIntBits(f2)) << 32) | (((long) Float.floatToRawIntBits(f2)) & MuxerUtil.UNSIGNED_INT_MAX_VALUE)));
            if (Path == null) {
                Path = AndroidPath_androidKt.Path();
            } else {
                Path.reset();
            }
            Path.addRoundRect$default(Path, roundRectM6041RoundRectgG7oq9Y, null, 2, null);
            this.tmpRoundRect = roundRectM6041RoundRectgG7oq9Y;
            this.tmpPath = Path;
        }
        Canvas.m6203clipPathmtrdDE$default(canvas, Path, 0, 2, null);
    }

    public final Outline getAndroidOutline() {
        updateCache();
        if (this.outlineNeeded && this.isSupportedOutline) {
            return this.cachedOutline;
        }
        return null;
    }

    public final boolean getCacheIsDirty$ui() {
        return this.cacheIsDirty;
    }

    public final Path getClipPath() {
        updateCache();
        return this.outlinePath;
    }

    public final boolean getOutlineClipSupported() {
        return !this.usePathForClip;
    }

    /* JADX INFO: renamed from: isInOutline-k-4lQ0M, reason: not valid java name */
    public final boolean m8233isInOutlinek4lQ0M(long j) {
        androidx.compose.ui.graphics.Outline outline;
        if (this.outlineNeeded && (outline = this.outline) != null) {
            return ShapeContainingUtilKt.isInOutline(outline, Float.intBitsToFloat((int) (j >> 32)), Float.intBitsToFloat((int) (j & MuxerUtil.UNSIGNED_INT_MAX_VALUE)), this.tmpTouchPointPath, this.tmpOpPath);
        }
        return true;
    }

    /* JADX INFO: renamed from: update-S_szKao, reason: not valid java name */
    public final boolean m8234updateS_szKao(androidx.compose.ui.graphics.Outline outline, float f, boolean z, float f2, long j) {
        this.cachedOutline.setAlpha(f);
        boolean zE = aa4.e(this.outline, outline);
        boolean z2 = !zE;
        if (!zE) {
            this.outline = outline;
            this.cacheIsDirty = true;
        }
        this.rectSize = j;
        boolean z3 = outline != null && (z || f2 > 0.0f);
        if (this.outlineNeeded != z3) {
            this.outlineNeeded = z3;
            this.cacheIsDirty = true;
        }
        return z2;
    }
}
