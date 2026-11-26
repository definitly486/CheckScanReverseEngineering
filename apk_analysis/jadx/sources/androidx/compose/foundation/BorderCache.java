package androidx.compose.foundation;

import androidx.compose.ui.draw.CacheDrawScope;
import androidx.compose.ui.graphics.AndroidPath_androidKt;
import androidx.compose.ui.graphics.BlendMode;
import androidx.compose.ui.graphics.Canvas;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.ImageBitmap;
import androidx.compose.ui.graphics.ImageBitmapConfig;
import androidx.compose.ui.graphics.ImageBitmapKt;
import androidx.compose.ui.graphics.Path;
import androidx.compose.ui.graphics.drawscope.CanvasDrawScope;
import androidx.compose.ui.graphics.drawscope.DrawScope;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.IntSizeKt;
import androidx.compose.ui.unit.LayoutDirection;
import androidx.media3.muxer.MuxerUtil;
import defpackage.aa4;
import defpackage.j59;
import defpackage.jh2;
import defpackage.nl3;

/* JADX INFO: loaded from: classes.dex */
final class BorderCache {
    private Path borderPath;
    private Canvas canvas;
    private CanvasDrawScope canvasDrawScope;
    private ImageBitmap imageBitmap;

    public /* synthetic */ BorderCache(ImageBitmap imageBitmap, Canvas canvas, CanvasDrawScope canvasDrawScope, Path path, int i, jh2 jh2Var) {
        this((i & 1) != 0 ? null : imageBitmap, (i & 2) != 0 ? null : canvas, (i & 4) != 0 ? null : canvasDrawScope, (i & 8) != 0 ? null : path);
    }

    private final ImageBitmap component1() {
        return this.imageBitmap;
    }

    private final Canvas component2() {
        return this.canvas;
    }

    private final CanvasDrawScope component3() {
        return this.canvasDrawScope;
    }

    private final Path component4() {
        return this.borderPath;
    }

    public static /* synthetic */ BorderCache copy$default(BorderCache borderCache, ImageBitmap imageBitmap, Canvas canvas, CanvasDrawScope canvasDrawScope, Path path, int i, Object obj) {
        if ((i & 1) != 0) {
            imageBitmap = borderCache.imageBitmap;
        }
        if ((i & 2) != 0) {
            canvas = borderCache.canvas;
        }
        if ((i & 4) != 0) {
            canvasDrawScope = borderCache.canvasDrawScope;
        }
        if ((i & 8) != 0) {
            path = borderCache.borderPath;
        }
        return borderCache.copy(imageBitmap, canvas, canvasDrawScope, path);
    }

    public final BorderCache copy(ImageBitmap imageBitmap, Canvas canvas, CanvasDrawScope canvasDrawScope, Path path) {
        return new BorderCache(imageBitmap, canvas, canvasDrawScope, path);
    }

    /* JADX WARN: Code duplicated, block: B:26:0x0075  */
    /* JADX WARN: Code duplicated, block: B:29:0x0094  */
    /* JADX INFO: renamed from: drawBorderCache-EMwLDEs, reason: not valid java name */
    public final ImageBitmap m1297drawBorderCacheEMwLDEs(CacheDrawScope cacheDrawScope, long j, int i, nl3<? super DrawScope, j59> nl3Var) {
        int i2;
        CanvasDrawScope canvasDrawScope;
        ImageBitmap imageBitmapM6468ImageBitmapx__hDU$default = this.imageBitmap;
        Canvas Canvas = this.canvas;
        ImageBitmapConfig imageBitmapConfigM6455boximpl = imageBitmapM6468ImageBitmapx__hDU$default != null ? ImageBitmapConfig.m6455boximpl(imageBitmapM6468ImageBitmapx__hDU$default.mo6096getConfig_sVssgQ()) : null;
        boolean z = false;
        if (!(imageBitmapConfigM6455boximpl == null ? false : ImageBitmapConfig.m6458equalsimpl0(imageBitmapConfigM6455boximpl.m6461unboximpl(), ImageBitmapConfig.Companion.m6463getArgb8888_sVssgQ()))) {
            i2 = i;
            if (ImageBitmapConfig.m6457equalsimpl(i2, imageBitmapM6468ImageBitmapx__hDU$default != null ? ImageBitmapConfig.m6455boximpl(imageBitmapM6468ImageBitmapx__hDU$default.mo6096getConfig_sVssgQ()) : null)) {
            }
            if (imageBitmapM6468ImageBitmapx__hDU$default != null || Canvas == null || Float.intBitsToFloat((int) (cacheDrawScope.m5767getSizeNHjbRc() >> 32)) > imageBitmapM6468ImageBitmapx__hDU$default.getWidth() || Float.intBitsToFloat((int) (cacheDrawScope.m5767getSizeNHjbRc() & MuxerUtil.UNSIGNED_INT_MAX_VALUE)) > imageBitmapM6468ImageBitmapx__hDU$default.getHeight() || !z) {
                imageBitmapM6468ImageBitmapx__hDU$default = ImageBitmapKt.m6468ImageBitmapx__hDU$default((int) (j >> 32), (int) (j & MuxerUtil.UNSIGNED_INT_MAX_VALUE), i2, false, null, 24, null);
                this.imageBitmap = imageBitmapM6468ImageBitmapx__hDU$default;
                Canvas = androidx.compose.ui.graphics.CanvasKt.Canvas(imageBitmapM6468ImageBitmapx__hDU$default);
                this.canvas = Canvas;
            }
            canvasDrawScope = this.canvasDrawScope;
            if (canvasDrawScope == null) {
                canvasDrawScope = new CanvasDrawScope();
                this.canvasDrawScope = canvasDrawScope;
            }
            CanvasDrawScope canvasDrawScope2 = canvasDrawScope;
            long jM9225toSizeozmzZPI = IntSizeKt.m9225toSizeozmzZPI(j);
            LayoutDirection layoutDirection = cacheDrawScope.getLayoutDirection();
            CanvasDrawScope.DrawParams drawParams = canvasDrawScope2.getDrawParams();
            Density densityComponent1 = drawParams.component1();
            LayoutDirection layoutDirectionComponent2 = drawParams.component2();
            Canvas canvasComponent3 = drawParams.component3();
            long jM6723component4NHjbRc = drawParams.m6723component4NHjbRc();
            CanvasDrawScope.DrawParams drawParams2 = canvasDrawScope2.getDrawParams();
            drawParams2.setDensity(cacheDrawScope);
            drawParams2.setLayoutDirection(layoutDirection);
            drawParams2.setCanvas(Canvas);
            drawParams2.m6726setSizeuvyYCjk(jM9225toSizeozmzZPI);
            Canvas.save();
            ImageBitmap imageBitmap = imageBitmapM6468ImageBitmapx__hDU$default;
            DrawScope.m6800drawRectnJ9OG0$default(canvasDrawScope2, Color.Companion.m6258getBlack0d7_KjU(), 0L, jM9225toSizeozmzZPI, 0.0f, null, null, BlendMode.Companion.m6145getClear0nO6VwU(), 58, null);
            nl3Var.invoke(canvasDrawScope2);
            Canvas.restore();
            CanvasDrawScope.DrawParams drawParams3 = canvasDrawScope2.getDrawParams();
            drawParams3.setDensity(densityComponent1);
            drawParams3.setLayoutDirection(layoutDirectionComponent2);
            drawParams3.setCanvas(canvasComponent3);
            drawParams3.m6726setSizeuvyYCjk(jM6723component4NHjbRc);
            imageBitmap.prepareToDraw();
            return imageBitmap;
        }
        i2 = i;
        z = true;
        if (imageBitmapM6468ImageBitmapx__hDU$default != null) {
            imageBitmapM6468ImageBitmapx__hDU$default = ImageBitmapKt.m6468ImageBitmapx__hDU$default((int) (j >> 32), (int) (j & MuxerUtil.UNSIGNED_INT_MAX_VALUE), i2, false, null, 24, null);
            this.imageBitmap = imageBitmapM6468ImageBitmapx__hDU$default;
            Canvas = androidx.compose.ui.graphics.CanvasKt.Canvas(imageBitmapM6468ImageBitmapx__hDU$default);
            this.canvas = Canvas;
        } else {
            imageBitmapM6468ImageBitmapx__hDU$default = ImageBitmapKt.m6468ImageBitmapx__hDU$default((int) (j >> 32), (int) (j & MuxerUtil.UNSIGNED_INT_MAX_VALUE), i2, false, null, 24, null);
            this.imageBitmap = imageBitmapM6468ImageBitmapx__hDU$default;
            Canvas = androidx.compose.ui.graphics.CanvasKt.Canvas(imageBitmapM6468ImageBitmapx__hDU$default);
            this.canvas = Canvas;
        }
        canvasDrawScope = this.canvasDrawScope;
        if (canvasDrawScope == null) {
            canvasDrawScope = new CanvasDrawScope();
            this.canvasDrawScope = canvasDrawScope;
        }
        CanvasDrawScope canvasDrawScope3 = canvasDrawScope;
        long jM9225toSizeozmzZPI2 = IntSizeKt.m9225toSizeozmzZPI(j);
        LayoutDirection layoutDirection2 = cacheDrawScope.getLayoutDirection();
        CanvasDrawScope.DrawParams drawParams4 = canvasDrawScope3.getDrawParams();
        Density densityComponent2 = drawParams4.component1();
        LayoutDirection layoutDirectionComponent3 = drawParams4.component2();
        Canvas canvasComponent4 = drawParams4.component3();
        long jM6723component4NHjbRc2 = drawParams4.m6723component4NHjbRc();
        CanvasDrawScope.DrawParams drawParams5 = canvasDrawScope3.getDrawParams();
        drawParams5.setDensity(cacheDrawScope);
        drawParams5.setLayoutDirection(layoutDirection2);
        drawParams5.setCanvas(Canvas);
        drawParams5.m6726setSizeuvyYCjk(jM9225toSizeozmzZPI2);
        Canvas.save();
        ImageBitmap imageBitmap2 = imageBitmapM6468ImageBitmapx__hDU$default;
        DrawScope.m6800drawRectnJ9OG0$default(canvasDrawScope3, Color.Companion.m6258getBlack0d7_KjU(), 0L, jM9225toSizeozmzZPI2, 0.0f, null, null, BlendMode.Companion.m6145getClear0nO6VwU(), 58, null);
        nl3Var.invoke(canvasDrawScope3);
        Canvas.restore();
        CanvasDrawScope.DrawParams drawParams6 = canvasDrawScope3.getDrawParams();
        drawParams6.setDensity(densityComponent2);
        drawParams6.setLayoutDirection(layoutDirectionComponent3);
        drawParams6.setCanvas(canvasComponent4);
        drawParams6.m6726setSizeuvyYCjk(jM6723component4NHjbRc2);
        imageBitmap2.prepareToDraw();
        return imageBitmap2;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof BorderCache)) {
            return false;
        }
        BorderCache borderCache = (BorderCache) obj;
        return aa4.e(this.imageBitmap, borderCache.imageBitmap) && aa4.e(this.canvas, borderCache.canvas) && aa4.e(this.canvasDrawScope, borderCache.canvasDrawScope) && aa4.e(this.borderPath, borderCache.borderPath);
    }

    public int hashCode() {
        ImageBitmap imageBitmap = this.imageBitmap;
        int iHashCode = (imageBitmap == null ? 0 : imageBitmap.hashCode()) * 31;
        Canvas canvas = this.canvas;
        int iHashCode2 = (iHashCode + (canvas == null ? 0 : canvas.hashCode())) * 31;
        CanvasDrawScope canvasDrawScope = this.canvasDrawScope;
        int iHashCode3 = (iHashCode2 + (canvasDrawScope == null ? 0 : canvasDrawScope.hashCode())) * 31;
        Path path = this.borderPath;
        return iHashCode3 + (path != null ? path.hashCode() : 0);
    }

    public final Path obtainPath() {
        Path path = this.borderPath;
        if (path != null) {
            return path;
        }
        Path Path = AndroidPath_androidKt.Path();
        this.borderPath = Path;
        return Path;
    }

    public String toString() {
        return "BorderCache(imageBitmap=" + this.imageBitmap + ", canvas=" + this.canvas + ", canvasDrawScope=" + this.canvasDrawScope + ", borderPath=" + this.borderPath + ')';
    }

    public BorderCache(ImageBitmap imageBitmap, Canvas canvas, CanvasDrawScope canvasDrawScope, Path path) {
        this.imageBitmap = imageBitmap;
        this.canvas = canvas;
        this.canvasDrawScope = canvasDrawScope;
        this.borderPath = path;
    }

    public BorderCache() {
        this(null, null, null, null, 15, null);
    }
}
