package androidx.compose.ui.graphics.drawscope;

import androidx.compose.ui.geometry.CornerRadius;
import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.geometry.Rect;
import androidx.compose.ui.geometry.Size;
import androidx.compose.ui.geometry.SizeKt;
import androidx.compose.ui.graphics.BlendMode;
import androidx.compose.ui.graphics.Brush;
import androidx.compose.ui.graphics.ColorFilter;
import androidx.compose.ui.graphics.FilterQuality;
import androidx.compose.ui.graphics.ImageBitmap;
import androidx.compose.ui.graphics.Path;
import androidx.compose.ui.graphics.PathEffect;
import androidx.compose.ui.graphics.StrokeCap;
import androidx.compose.ui.graphics.layer.GraphicsLayer;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.DpRect;
import androidx.compose.ui.unit.IntOffset;
import androidx.compose.ui.unit.IntSize;
import androidx.compose.ui.unit.IntSizeKt;
import androidx.compose.ui.unit.LayoutDirection;
import androidx.media3.muxer.MuxerUtil;
import defpackage.j59;
import defpackage.n1;
import defpackage.nl3;
import defpackage.ul2;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
@DrawScopeMarker
public interface DrawScope extends Density {
    public static final Companion Companion = Companion.$$INSTANCE;

    public static final class Companion {
        static final /* synthetic */ Companion $$INSTANCE = new Companion();
        private static final int DefaultBlendMode = BlendMode.Companion.m6172getSrcOver0nO6VwU();
        private static final int DefaultFilterQuality = FilterQuality.Companion.m6332getLowfv9h1I();

        private Companion() {
        }

        /* JADX INFO: renamed from: getDefaultBlendMode-0nO6VwU, reason: not valid java name */
        public final int m6808getDefaultBlendMode0nO6VwU() {
            return DefaultBlendMode;
        }

        /* JADX INFO: renamed from: getDefaultFilterQuality-f-v9h1I, reason: not valid java name */
        public final int m6809getDefaultFilterQualityfv9h1I() {
            return DefaultFilterQuality;
        }
    }

    /* JADX INFO: renamed from: drawArc-illE91I$default, reason: not valid java name */
    static /* synthetic */ void m6784drawArcillE91I$default(DrawScope drawScope, Brush brush, float f, float f2, boolean z, long j, long j2, float f3, DrawStyle drawStyle, ColorFilter colorFilter, int i, int i2, Object obj) {
        DrawScope drawScope2;
        long jM6803offsetSizePENXr5M;
        if (obj != null) {
            n1.e("Super calls with default arguments not supported in this target, function: drawArc-illE91I");
            return;
        }
        long jM6003getZeroF1C5BW0 = (i2 & 16) != 0 ? Offset.Companion.m6003getZeroF1C5BW0() : j;
        if ((i2 & 32) != 0) {
            drawScope2 = drawScope;
            jM6803offsetSizePENXr5M = drawScope2.m6803offsetSizePENXr5M(drawScope.mo6806getSizeNHjbRc(), jM6003getZeroF1C5BW0);
        } else {
            drawScope2 = drawScope;
            jM6803offsetSizePENXr5M = j2;
        }
        drawScope2.mo6703drawArcillE91I(brush, f, f2, z, jM6003getZeroF1C5BW0, jM6803offsetSizePENXr5M, (i2 & 64) != 0 ? 1.0f : f3, (i2 & 128) != 0 ? Fill.INSTANCE : drawStyle, (i2 & 256) != 0 ? null : colorFilter, (i2 & 512) != 0 ? Companion.m6808getDefaultBlendMode0nO6VwU() : i);
    }

    /* JADX INFO: renamed from: drawArc-yD3GUKo$default, reason: not valid java name */
    static /* synthetic */ void m6785drawArcyD3GUKo$default(DrawScope drawScope, long j, float f, float f2, boolean z, long j2, long j3, float f3, DrawStyle drawStyle, ColorFilter colorFilter, int i, int i2, Object obj) {
        DrawScope drawScope2;
        long jM6803offsetSizePENXr5M;
        if (obj != null) {
            n1.e("Super calls with default arguments not supported in this target, function: drawArc-yD3GUKo");
            return;
        }
        long jM6003getZeroF1C5BW0 = (i2 & 16) != 0 ? Offset.Companion.m6003getZeroF1C5BW0() : j2;
        if ((i2 & 32) != 0) {
            drawScope2 = drawScope;
            jM6803offsetSizePENXr5M = drawScope2.m6803offsetSizePENXr5M(drawScope.mo6806getSizeNHjbRc(), jM6003getZeroF1C5BW0);
        } else {
            drawScope2 = drawScope;
            jM6803offsetSizePENXr5M = j3;
        }
        drawScope2.mo6704drawArcyD3GUKo(j, f, f2, z, jM6003getZeroF1C5BW0, jM6803offsetSizePENXr5M, (i2 & 64) != 0 ? 1.0f : f3, (i2 & 128) != 0 ? Fill.INSTANCE : drawStyle, (i2 & 256) != 0 ? null : colorFilter, (i2 & 512) != 0 ? Companion.m6808getDefaultBlendMode0nO6VwU() : i);
    }

    /* JADX INFO: renamed from: drawCircle-V9BoPsw$default, reason: not valid java name */
    static /* synthetic */ void m6786drawCircleV9BoPsw$default(DrawScope drawScope, Brush brush, float f, long j, float f2, DrawStyle drawStyle, ColorFilter colorFilter, int i, int i2, Object obj) {
        if (obj == null) {
            drawScope.mo6705drawCircleV9BoPsw(brush, (i2 & 2) != 0 ? Size.m6055getMinDimensionimpl(drawScope.mo6806getSizeNHjbRc()) / 2.0f : f, (i2 & 4) != 0 ? drawScope.mo6805getCenterF1C5BW0() : j, (i2 & 8) != 0 ? 1.0f : f2, (i2 & 16) != 0 ? Fill.INSTANCE : drawStyle, (i2 & 32) != 0 ? null : colorFilter, (i2 & 64) != 0 ? Companion.m6808getDefaultBlendMode0nO6VwU() : i);
        } else {
            n1.e("Super calls with default arguments not supported in this target, function: drawCircle-V9BoPsw");
        }
    }

    /* JADX INFO: renamed from: drawCircle-VaOC9Bg$default, reason: not valid java name */
    static /* synthetic */ void m6787drawCircleVaOC9Bg$default(DrawScope drawScope, long j, float f, long j2, float f2, DrawStyle drawStyle, ColorFilter colorFilter, int i, int i2, Object obj) {
        if (obj != null) {
            n1.e("Super calls with default arguments not supported in this target, function: drawCircle-VaOC9Bg");
            return;
        }
        if ((i2 & 2) != 0) {
            f = Size.m6055getMinDimensionimpl(drawScope.mo6806getSizeNHjbRc()) / 2.0f;
        }
        drawScope.mo6706drawCircleVaOC9Bg(j, f, (i2 & 4) != 0 ? drawScope.mo6805getCenterF1C5BW0() : j2, (i2 & 8) != 0 ? 1.0f : f2, (i2 & 16) != 0 ? Fill.INSTANCE : drawStyle, (i2 & 32) != 0 ? null : colorFilter, (i2 & 64) != 0 ? Companion.m6808getDefaultBlendMode0nO6VwU() : i);
    }

    /* JADX INFO: renamed from: drawImage-9jGpkUE$default, reason: not valid java name */
    static /* synthetic */ void m6788drawImage9jGpkUE$default(DrawScope drawScope, ImageBitmap imageBitmap, long j, long j2, long j3, long j4, float f, DrawStyle drawStyle, ColorFilter colorFilter, int i, int i2, Object obj) {
        long jM9208constructorimpl;
        if (obj != null) {
            n1.e("Super calls with default arguments not supported in this target, function: drawImage-9jGpkUE");
            return;
        }
        long jM9181getZeronOccac = (i2 & 2) != 0 ? IntOffset.Companion.m9181getZeronOccac() : j;
        if ((i2 & 4) != 0) {
            jM9208constructorimpl = IntSize.m9208constructorimpl((((long) imageBitmap.getHeight()) & MuxerUtil.UNSIGNED_INT_MAX_VALUE) | (((long) imageBitmap.getWidth()) << 32));
        } else {
            jM9208constructorimpl = j2;
        }
        drawScope.mo6707drawImage9jGpkUE(imageBitmap, jM9181getZeronOccac, jM9208constructorimpl, (i2 & 8) != 0 ? IntOffset.Companion.m9181getZeronOccac() : j3, (i2 & 16) != 0 ? jM9208constructorimpl : j4, (i2 & 32) != 0 ? 1.0f : f, (i2 & 64) != 0 ? Fill.INSTANCE : drawStyle, (i2 & 128) != 0 ? null : colorFilter, (i2 & 256) != 0 ? Companion.m6808getDefaultBlendMode0nO6VwU() : i);
    }

    /* JADX INFO: renamed from: drawImage-AZ2fEMs$default, reason: not valid java name */
    static /* synthetic */ void m6789drawImageAZ2fEMs$default(DrawScope drawScope, ImageBitmap imageBitmap, long j, long j2, long j3, long j4, float f, DrawStyle drawStyle, ColorFilter colorFilter, int i, int i2, int i3, Object obj) {
        long jM9208constructorimpl;
        if (obj != null) {
            n1.e("Super calls with default arguments not supported in this target, function: drawImage-AZ2fEMs");
            return;
        }
        long jM9181getZeronOccac = (i3 & 2) != 0 ? IntOffset.Companion.m9181getZeronOccac() : j;
        if ((i3 & 4) != 0) {
            jM9208constructorimpl = IntSize.m9208constructorimpl((((long) imageBitmap.getHeight()) & MuxerUtil.UNSIGNED_INT_MAX_VALUE) | (((long) imageBitmap.getWidth()) << 32));
        } else {
            jM9208constructorimpl = j2;
        }
        drawScope.mo6708drawImageAZ2fEMs(imageBitmap, jM9181getZeronOccac, jM9208constructorimpl, (i3 & 8) != 0 ? IntOffset.Companion.m9181getZeronOccac() : j3, (i3 & 16) != 0 ? jM9208constructorimpl : j4, (i3 & 32) != 0 ? 1.0f : f, (i3 & 64) != 0 ? Fill.INSTANCE : drawStyle, (i3 & 128) != 0 ? null : colorFilter, (i3 & 256) != 0 ? Companion.m6808getDefaultBlendMode0nO6VwU() : i, (i3 & 512) != 0 ? Companion.m6809getDefaultFilterQualityfv9h1I() : i2);
    }

    /* JADX INFO: renamed from: drawImage-gbVJVH8$default, reason: not valid java name */
    static /* synthetic */ void m6790drawImagegbVJVH8$default(DrawScope drawScope, ImageBitmap imageBitmap, long j, float f, DrawStyle drawStyle, ColorFilter colorFilter, int i, int i2, Object obj) {
        if (obj == null) {
            drawScope.mo6709drawImagegbVJVH8(imageBitmap, (i2 & 2) != 0 ? Offset.Companion.m6003getZeroF1C5BW0() : j, (i2 & 4) != 0 ? 1.0f : f, (i2 & 8) != 0 ? Fill.INSTANCE : drawStyle, (i2 & 16) != 0 ? null : colorFilter, (i2 & 32) != 0 ? Companion.m6808getDefaultBlendMode0nO6VwU() : i);
        } else {
            n1.e("Super calls with default arguments not supported in this target, function: drawImage-gbVJVH8");
        }
    }

    /* JADX INFO: renamed from: drawLine-1RTmtNc$default, reason: not valid java name */
    static /* synthetic */ void m6791drawLine1RTmtNc$default(DrawScope drawScope, Brush brush, long j, long j2, float f, int i, PathEffect pathEffect, float f2, ColorFilter colorFilter, int i2, int i3, Object obj) {
        if (obj == null) {
            drawScope.mo6710drawLine1RTmtNc(brush, j, j2, (i3 & 8) != 0 ? 0.0f : f, (i3 & 16) != 0 ? Stroke.Companion.m6877getDefaultCapKaPHkGw() : i, (i3 & 32) != 0 ? null : pathEffect, (i3 & 64) != 0 ? 1.0f : f2, (i3 & 128) != 0 ? null : colorFilter, (i3 & 256) != 0 ? Companion.m6808getDefaultBlendMode0nO6VwU() : i2);
        } else {
            n1.e("Super calls with default arguments not supported in this target, function: drawLine-1RTmtNc");
        }
    }

    /* JADX INFO: renamed from: drawLine-NGM6Ib0$default, reason: not valid java name */
    static /* synthetic */ void m6792drawLineNGM6Ib0$default(DrawScope drawScope, long j, long j2, long j3, float f, int i, PathEffect pathEffect, float f2, ColorFilter colorFilter, int i2, int i3, Object obj) {
        if (obj == null) {
            drawScope.mo6711drawLineNGM6Ib0(j, j2, j3, (i3 & 8) != 0 ? 0.0f : f, (i3 & 16) != 0 ? Stroke.Companion.m6877getDefaultCapKaPHkGw() : i, (i3 & 32) != 0 ? null : pathEffect, (i3 & 64) != 0 ? 1.0f : f2, (i3 & 128) != 0 ? null : colorFilter, (i3 & 256) != 0 ? Companion.m6808getDefaultBlendMode0nO6VwU() : i2);
        } else {
            n1.e("Super calls with default arguments not supported in this target, function: drawLine-NGM6Ib0");
        }
    }

    /* JADX INFO: renamed from: drawOval-AsUm42w$default, reason: not valid java name */
    static /* synthetic */ void m6793drawOvalAsUm42w$default(DrawScope drawScope, Brush brush, long j, long j2, float f, DrawStyle drawStyle, ColorFilter colorFilter, int i, int i2, Object obj) {
        if (obj != null) {
            n1.e("Super calls with default arguments not supported in this target, function: drawOval-AsUm42w");
        } else {
            long jM6003getZeroF1C5BW0 = (i2 & 2) != 0 ? Offset.Companion.m6003getZeroF1C5BW0() : j;
            drawScope.mo6712drawOvalAsUm42w(brush, jM6003getZeroF1C5BW0, (i2 & 4) != 0 ? drawScope.m6803offsetSizePENXr5M(drawScope.mo6806getSizeNHjbRc(), jM6003getZeroF1C5BW0) : j2, (i2 & 8) != 0 ? 1.0f : f, (i2 & 16) != 0 ? Fill.INSTANCE : drawStyle, (i2 & 32) != 0 ? null : colorFilter, (i2 & 64) != 0 ? Companion.m6808getDefaultBlendMode0nO6VwU() : i);
        }
    }

    /* JADX INFO: renamed from: drawOval-n-J9OG0$default, reason: not valid java name */
    static /* synthetic */ void m6794drawOvalnJ9OG0$default(DrawScope drawScope, long j, long j2, long j3, float f, DrawStyle drawStyle, ColorFilter colorFilter, int i, int i2, Object obj) {
        if (obj != null) {
            n1.e("Super calls with default arguments not supported in this target, function: drawOval-n-J9OG0");
        } else {
            long jM6003getZeroF1C5BW0 = (i2 & 2) != 0 ? Offset.Companion.m6003getZeroF1C5BW0() : j2;
            drawScope.mo6713drawOvalnJ9OG0(j, jM6003getZeroF1C5BW0, (i2 & 4) != 0 ? drawScope.m6803offsetSizePENXr5M(drawScope.mo6806getSizeNHjbRc(), jM6003getZeroF1C5BW0) : j3, (i2 & 8) != 0 ? 1.0f : f, (i2 & 16) != 0 ? Fill.INSTANCE : drawStyle, (i2 & 32) != 0 ? null : colorFilter, (i2 & 64) != 0 ? Companion.m6808getDefaultBlendMode0nO6VwU() : i);
        }
    }

    /* JADX INFO: renamed from: drawPath-GBMwjPU$default, reason: not valid java name */
    static /* synthetic */ void m6795drawPathGBMwjPU$default(DrawScope drawScope, Path path, Brush brush, float f, DrawStyle drawStyle, ColorFilter colorFilter, int i, int i2, Object obj) {
        if (obj != null) {
            n1.e("Super calls with default arguments not supported in this target, function: drawPath-GBMwjPU");
            return;
        }
        if ((i2 & 4) != 0) {
            f = 1.0f;
        }
        float f2 = f;
        if ((i2 & 8) != 0) {
            drawStyle = Fill.INSTANCE;
        }
        DrawStyle drawStyle2 = drawStyle;
        if ((i2 & 16) != 0) {
            colorFilter = null;
        }
        ColorFilter colorFilter2 = colorFilter;
        if ((i2 & 32) != 0) {
            i = Companion.m6808getDefaultBlendMode0nO6VwU();
        }
        drawScope.mo6714drawPathGBMwjPU(path, brush, f2, drawStyle2, colorFilter2, i);
    }

    /* JADX INFO: renamed from: drawPath-LG529CI$default, reason: not valid java name */
    static /* synthetic */ void m6796drawPathLG529CI$default(DrawScope drawScope, Path path, long j, float f, DrawStyle drawStyle, ColorFilter colorFilter, int i, int i2, Object obj) {
        if (obj != null) {
            n1.e("Super calls with default arguments not supported in this target, function: drawPath-LG529CI");
            return;
        }
        if ((i2 & 4) != 0) {
            f = 1.0f;
        }
        float f2 = f;
        if ((i2 & 8) != 0) {
            drawStyle = Fill.INSTANCE;
        }
        DrawStyle drawStyle2 = drawStyle;
        if ((i2 & 16) != 0) {
            colorFilter = null;
        }
        drawScope.mo6715drawPathLG529CI(path, j, f2, drawStyle2, colorFilter, (i2 & 32) != 0 ? Companion.m6808getDefaultBlendMode0nO6VwU() : i);
    }

    /* JADX INFO: renamed from: drawPoints-F8ZwMP8$default, reason: not valid java name */
    static /* synthetic */ void m6797drawPointsF8ZwMP8$default(DrawScope drawScope, List list, int i, long j, float f, int i2, PathEffect pathEffect, float f2, ColorFilter colorFilter, int i3, int i4, Object obj) {
        if (obj == null) {
            drawScope.mo6716drawPointsF8ZwMP8(list, i, j, (i4 & 8) != 0 ? 0.0f : f, (i4 & 16) != 0 ? StrokeCap.Companion.m6606getButtKaPHkGw() : i2, (i4 & 32) != 0 ? null : pathEffect, (i4 & 64) != 0 ? 1.0f : f2, (i4 & 128) != 0 ? null : colorFilter, (i4 & 256) != 0 ? Companion.m6808getDefaultBlendMode0nO6VwU() : i3);
        } else {
            n1.e("Super calls with default arguments not supported in this target, function: drawPoints-F8ZwMP8");
        }
    }

    /* JADX INFO: renamed from: drawPoints-Gsft0Ws$default, reason: not valid java name */
    static /* synthetic */ void m6798drawPointsGsft0Ws$default(DrawScope drawScope, List list, int i, Brush brush, float f, int i2, PathEffect pathEffect, float f2, ColorFilter colorFilter, int i3, int i4, Object obj) {
        if (obj == null) {
            drawScope.mo6717drawPointsGsft0Ws(list, i, brush, (i4 & 8) != 0 ? 0.0f : f, (i4 & 16) != 0 ? StrokeCap.Companion.m6606getButtKaPHkGw() : i2, (i4 & 32) != 0 ? null : pathEffect, (i4 & 64) != 0 ? 1.0f : f2, (i4 & 128) != 0 ? null : colorFilter, (i4 & 256) != 0 ? Companion.m6808getDefaultBlendMode0nO6VwU() : i3);
        } else {
            n1.e("Super calls with default arguments not supported in this target, function: drawPoints-Gsft0Ws");
        }
    }

    /* JADX INFO: renamed from: drawRect-AsUm42w$default, reason: not valid java name */
    static /* synthetic */ void m6799drawRectAsUm42w$default(DrawScope drawScope, Brush brush, long j, long j2, float f, DrawStyle drawStyle, ColorFilter colorFilter, int i, int i2, Object obj) {
        if (obj != null) {
            n1.e("Super calls with default arguments not supported in this target, function: drawRect-AsUm42w");
        } else {
            long jM6003getZeroF1C5BW0 = (i2 & 2) != 0 ? Offset.Companion.m6003getZeroF1C5BW0() : j;
            drawScope.mo6718drawRectAsUm42w(brush, jM6003getZeroF1C5BW0, (i2 & 4) != 0 ? drawScope.m6803offsetSizePENXr5M(drawScope.mo6806getSizeNHjbRc(), jM6003getZeroF1C5BW0) : j2, (i2 & 8) != 0 ? 1.0f : f, (i2 & 16) != 0 ? Fill.INSTANCE : drawStyle, (i2 & 32) != 0 ? null : colorFilter, (i2 & 64) != 0 ? Companion.m6808getDefaultBlendMode0nO6VwU() : i);
        }
    }

    /* JADX INFO: renamed from: drawRect-n-J9OG0$default, reason: not valid java name */
    static /* synthetic */ void m6800drawRectnJ9OG0$default(DrawScope drawScope, long j, long j2, long j3, float f, DrawStyle drawStyle, ColorFilter colorFilter, int i, int i2, Object obj) {
        if (obj != null) {
            n1.e("Super calls with default arguments not supported in this target, function: drawRect-n-J9OG0");
        } else {
            long jM6003getZeroF1C5BW0 = (i2 & 2) != 0 ? Offset.Companion.m6003getZeroF1C5BW0() : j2;
            drawScope.mo6719drawRectnJ9OG0(j, jM6003getZeroF1C5BW0, (i2 & 4) != 0 ? drawScope.m6803offsetSizePENXr5M(drawScope.mo6806getSizeNHjbRc(), jM6003getZeroF1C5BW0) : j3, (i2 & 8) != 0 ? 1.0f : f, (i2 & 16) != 0 ? Fill.INSTANCE : drawStyle, (i2 & 32) != 0 ? null : colorFilter, (i2 & 64) != 0 ? Companion.m6808getDefaultBlendMode0nO6VwU() : i);
        }
    }

    /* JADX INFO: renamed from: drawRoundRect-ZuiqVtQ$default, reason: not valid java name */
    static /* synthetic */ void m6801drawRoundRectZuiqVtQ$default(DrawScope drawScope, Brush brush, long j, long j2, long j3, float f, DrawStyle drawStyle, ColorFilter colorFilter, int i, int i2, Object obj) {
        if (obj != null) {
            n1.e("Super calls with default arguments not supported in this target, function: drawRoundRect-ZuiqVtQ");
        } else {
            long jM6003getZeroF1C5BW0 = (i2 & 2) != 0 ? Offset.Companion.m6003getZeroF1C5BW0() : j;
            drawScope.mo6720drawRoundRectZuiqVtQ(brush, jM6003getZeroF1C5BW0, (i2 & 4) != 0 ? drawScope.m6803offsetSizePENXr5M(drawScope.mo6806getSizeNHjbRc(), jM6003getZeroF1C5BW0) : j2, (i2 & 8) != 0 ? CornerRadius.Companion.m5959getZerokKHJgLs() : j3, (i2 & 16) != 0 ? 1.0f : f, (i2 & 32) != 0 ? Fill.INSTANCE : drawStyle, (i2 & 64) != 0 ? null : colorFilter, (i2 & 128) != 0 ? Companion.m6808getDefaultBlendMode0nO6VwU() : i);
        }
    }

    /* JADX INFO: renamed from: drawRoundRect-u-Aw5IA$default, reason: not valid java name */
    static /* synthetic */ void m6802drawRoundRectuAw5IA$default(DrawScope drawScope, long j, long j2, long j3, long j4, DrawStyle drawStyle, float f, ColorFilter colorFilter, int i, int i2, Object obj) {
        DrawScope drawScope2;
        long jM6803offsetSizePENXr5M;
        if (obj != null) {
            n1.e("Super calls with default arguments not supported in this target, function: drawRoundRect-u-Aw5IA");
            return;
        }
        long jM6003getZeroF1C5BW0 = (i2 & 2) != 0 ? Offset.Companion.m6003getZeroF1C5BW0() : j2;
        if ((i2 & 4) != 0) {
            drawScope2 = drawScope;
            jM6803offsetSizePENXr5M = drawScope2.m6803offsetSizePENXr5M(drawScope.mo6806getSizeNHjbRc(), jM6003getZeroF1C5BW0);
        } else {
            drawScope2 = drawScope;
            jM6803offsetSizePENXr5M = j3;
        }
        drawScope2.mo6721drawRoundRectuAw5IA(j, jM6003getZeroF1C5BW0, jM6803offsetSizePENXr5M, (i2 & 8) != 0 ? CornerRadius.Companion.m5959getZerokKHJgLs() : j4, (i2 & 16) != 0 ? Fill.INSTANCE : drawStyle, (i2 & 32) != 0 ? 1.0f : f, (i2 & 64) != 0 ? null : colorFilter, (i2 & 128) != 0 ? Companion.m6808getDefaultBlendMode0nO6VwU() : i);
    }

    /* JADX INFO: renamed from: offsetSize-PENXr5M, reason: not valid java name */
    private default long m6803offsetSizePENXr5M(long j, long j2) {
        float fIntBitsToFloat = Float.intBitsToFloat((int) (j >> 32)) - Float.intBitsToFloat((int) (j2 >> 32));
        float fIntBitsToFloat2 = Float.intBitsToFloat((int) (j & MuxerUtil.UNSIGNED_INT_MAX_VALUE)) - Float.intBitsToFloat((int) (j2 & MuxerUtil.UNSIGNED_INT_MAX_VALUE));
        return Size.m6047constructorimpl((((long) Float.floatToRawIntBits(fIntBitsToFloat)) << 32) | (((long) Float.floatToRawIntBits(fIntBitsToFloat2)) & MuxerUtil.UNSIGNED_INT_MAX_VALUE));
    }

    /* JADX INFO: renamed from: record-JVtK1S4$default, reason: not valid java name */
    static /* synthetic */ void m6804recordJVtK1S4$default(DrawScope drawScope, GraphicsLayer graphicsLayer, long j, nl3 nl3Var, int i, Object obj) {
        if (obj != null) {
            n1.e("Super calls with default arguments not supported in this target, function: record-JVtK1S4");
            return;
        }
        if ((i & 1) != 0) {
            j = IntSizeKt.m9224toIntSizeuvyYCjk(drawScope.mo6806getSizeNHjbRc());
        }
        drawScope.mo6807recordJVtK1S4(graphicsLayer, j, nl3Var);
    }

    /* JADX INFO: renamed from: drawArc-illE91I */
    void mo6703drawArcillE91I(Brush brush, float f, float f2, boolean z, long j, long j2, float f3, DrawStyle drawStyle, ColorFilter colorFilter, int i);

    /* JADX INFO: renamed from: drawArc-yD3GUKo */
    void mo6704drawArcyD3GUKo(long j, float f, float f2, boolean z, long j2, long j3, float f3, DrawStyle drawStyle, ColorFilter colorFilter, int i);

    /* JADX INFO: renamed from: drawCircle-V9BoPsw */
    void mo6705drawCircleV9BoPsw(Brush brush, float f, long j, float f2, DrawStyle drawStyle, ColorFilter colorFilter, int i);

    /* JADX INFO: renamed from: drawCircle-VaOC9Bg */
    void mo6706drawCircleVaOC9Bg(long j, float f, long j2, float f2, DrawStyle drawStyle, ColorFilter colorFilter, int i);

    @ul2
    /* JADX INFO: renamed from: drawImage-9jGpkUE */
    /* synthetic */ void mo6707drawImage9jGpkUE(ImageBitmap imageBitmap, long j, long j2, long j3, long j4, float f, DrawStyle drawStyle, ColorFilter colorFilter, int i);

    /* JADX INFO: renamed from: drawImage-AZ2fEMs */
    default void mo6708drawImageAZ2fEMs(ImageBitmap imageBitmap, long j, long j2, long j3, long j4, float f, DrawStyle drawStyle, ColorFilter colorFilter, int i, int i2) {
        m6789drawImageAZ2fEMs$default(this, imageBitmap, j, j2, j3, j4, f, drawStyle, colorFilter, i, 0, 512, null);
    }

    /* JADX INFO: renamed from: drawImage-gbVJVH8 */
    void mo6709drawImagegbVJVH8(ImageBitmap imageBitmap, long j, float f, DrawStyle drawStyle, ColorFilter colorFilter, int i);

    /* JADX INFO: renamed from: drawLine-1RTmtNc */
    void mo6710drawLine1RTmtNc(Brush brush, long j, long j2, float f, int i, PathEffect pathEffect, float f2, ColorFilter colorFilter, int i2);

    /* JADX INFO: renamed from: drawLine-NGM6Ib0 */
    void mo6711drawLineNGM6Ib0(long j, long j2, long j3, float f, int i, PathEffect pathEffect, float f2, ColorFilter colorFilter, int i2);

    /* JADX INFO: renamed from: drawOval-AsUm42w */
    void mo6712drawOvalAsUm42w(Brush brush, long j, long j2, float f, DrawStyle drawStyle, ColorFilter colorFilter, int i);

    /* JADX INFO: renamed from: drawOval-n-J9OG0 */
    void mo6713drawOvalnJ9OG0(long j, long j2, long j3, float f, DrawStyle drawStyle, ColorFilter colorFilter, int i);

    /* JADX INFO: renamed from: drawPath-GBMwjPU */
    void mo6714drawPathGBMwjPU(Path path, Brush brush, float f, DrawStyle drawStyle, ColorFilter colorFilter, int i);

    /* JADX INFO: renamed from: drawPath-LG529CI */
    void mo6715drawPathLG529CI(Path path, long j, float f, DrawStyle drawStyle, ColorFilter colorFilter, int i);

    /* JADX INFO: renamed from: drawPoints-F8ZwMP8 */
    void mo6716drawPointsF8ZwMP8(List<Offset> list, int i, long j, float f, int i2, PathEffect pathEffect, float f2, ColorFilter colorFilter, int i3);

    /* JADX INFO: renamed from: drawPoints-Gsft0Ws */
    void mo6717drawPointsGsft0Ws(List<Offset> list, int i, Brush brush, float f, int i2, PathEffect pathEffect, float f2, ColorFilter colorFilter, int i3);

    /* JADX INFO: renamed from: drawRect-AsUm42w */
    void mo6718drawRectAsUm42w(Brush brush, long j, long j2, float f, DrawStyle drawStyle, ColorFilter colorFilter, int i);

    /* JADX INFO: renamed from: drawRect-n-J9OG0 */
    void mo6719drawRectnJ9OG0(long j, long j2, long j3, float f, DrawStyle drawStyle, ColorFilter colorFilter, int i);

    /* JADX INFO: renamed from: drawRoundRect-ZuiqVtQ */
    void mo6720drawRoundRectZuiqVtQ(Brush brush, long j, long j2, long j3, float f, DrawStyle drawStyle, ColorFilter colorFilter, int i);

    /* JADX INFO: renamed from: drawRoundRect-u-Aw5IA */
    void mo6721drawRoundRectuAw5IA(long j, long j2, long j3, long j4, DrawStyle drawStyle, float f, ColorFilter colorFilter, int i);

    /* JADX INFO: renamed from: getCenter-F1C5BW0, reason: not valid java name */
    default long mo6805getCenterF1C5BW0() {
        return SizeKt.m6066getCenteruvyYCjk(getDrawContext().mo6727getSizeNHjbRc());
    }

    DrawContext getDrawContext();

    LayoutDirection getLayoutDirection();

    /* JADX INFO: renamed from: getSize-NH-jbRc, reason: not valid java name */
    default long mo6806getSizeNHjbRc() {
        return getDrawContext().mo6727getSizeNHjbRc();
    }

    /* JADX INFO: renamed from: record-JVtK1S4, reason: not valid java name */
    default void mo6807recordJVtK1S4(GraphicsLayer graphicsLayer, long j, nl3<? super DrawScope, j59> nl3Var) {
        graphicsLayer.m6900recordmLhObY(this, getLayoutDirection(), j, new DrawScope$record$1(this, nl3Var));
    }

    public static final class DefaultImpls {
        @Deprecated
        /* JADX INFO: renamed from: drawImage-AZ2fEMs, reason: not valid java name */
        public static void m6815drawImageAZ2fEMs(DrawScope drawScope, ImageBitmap imageBitmap, long j, long j2, long j3, long j4, float f, DrawStyle drawStyle, ColorFilter colorFilter, int i, int i2) {
            DrawScope.super.mo6708drawImageAZ2fEMs(imageBitmap, j, j2, j3, j4, f, drawStyle, colorFilter, i, i2);
        }

        @Deprecated
        /* JADX INFO: renamed from: getCenter-F1C5BW0, reason: not valid java name */
        public static long m6830getCenterF1C5BW0(DrawScope drawScope) {
            return DrawScope.super.mo6805getCenterF1C5BW0();
        }

        @Deprecated
        /* JADX INFO: renamed from: getSize-NH-jbRc, reason: not valid java name */
        public static long m6831getSizeNHjbRc(DrawScope drawScope) {
            return DrawScope.super.mo6806getSizeNHjbRc();
        }

        @Deprecated
        /* JADX INFO: renamed from: record-JVtK1S4, reason: not valid java name */
        public static void m6832recordJVtK1S4(DrawScope drawScope, GraphicsLayer graphicsLayer, long j, nl3<? super DrawScope, j59> nl3Var) {
            DrawScope.super.mo6807recordJVtK1S4(graphicsLayer, j, nl3Var);
        }

        @Deprecated
        /* JADX INFO: renamed from: roundToPx--R2X_6o, reason: not valid java name */
        public static int m6834roundToPxR2X_6o(DrawScope drawScope, long j) {
            return DrawScope.super.mo1427roundToPxR2X_6o(j);
        }

        @Deprecated
        /* JADX INFO: renamed from: roundToPx-0680j_4, reason: not valid java name */
        public static int m6835roundToPx0680j_4(DrawScope drawScope, float f) {
            return DrawScope.super.mo1428roundToPx0680j_4(f);
        }

        @Deprecated
        /* JADX INFO: renamed from: toDp-GaN1DYA, reason: not valid java name */
        public static float m6836toDpGaN1DYA(DrawScope drawScope, long j) {
            return DrawScope.super.mo1429toDpGaN1DYA(j);
        }

        @Deprecated
        /* JADX INFO: renamed from: toDp-u2uoSUM, reason: not valid java name */
        public static float m6837toDpu2uoSUM(DrawScope drawScope, float f) {
            return DrawScope.super.mo1430toDpu2uoSUM(f);
        }

        @Deprecated
        /* JADX INFO: renamed from: toDpSize-k-rfVVM, reason: not valid java name */
        public static long m6839toDpSizekrfVVM(DrawScope drawScope, long j) {
            return DrawScope.super.mo1432toDpSizekrfVVM(j);
        }

        @Deprecated
        /* JADX INFO: renamed from: toPx--R2X_6o, reason: not valid java name */
        public static float m6840toPxR2X_6o(DrawScope drawScope, long j) {
            return DrawScope.super.mo1433toPxR2X_6o(j);
        }

        @Deprecated
        /* JADX INFO: renamed from: toPx-0680j_4, reason: not valid java name */
        public static float m6841toPx0680j_4(DrawScope drawScope, float f) {
            return DrawScope.super.mo1434toPx0680j_4(f);
        }

        @Deprecated
        public static Rect toRect(DrawScope drawScope, DpRect dpRect) {
            return DrawScope.super.toRect(dpRect);
        }

        @Deprecated
        /* JADX INFO: renamed from: toSize-XkaWNTQ, reason: not valid java name */
        public static long m6842toSizeXkaWNTQ(DrawScope drawScope, long j) {
            return DrawScope.super.mo1435toSizeXkaWNTQ(j);
        }

        @Deprecated
        /* JADX INFO: renamed from: toSp-0xMU5do, reason: not valid java name */
        public static long m6843toSp0xMU5do(DrawScope drawScope, float f) {
            return DrawScope.super.mo1436toSp0xMU5do(f);
        }

        @Deprecated
        /* JADX INFO: renamed from: toSp-kPz2Gy4, reason: not valid java name */
        public static long m6844toSpkPz2Gy4(DrawScope drawScope, float f) {
            return DrawScope.super.mo1437toSpkPz2Gy4(f);
        }

        @Deprecated
        /* JADX INFO: renamed from: toDp-u2uoSUM, reason: not valid java name */
        public static float m6838toDpu2uoSUM(DrawScope drawScope, int i) {
            return DrawScope.super.mo1431toDpu2uoSUM(i);
        }

        @Deprecated
        /* JADX INFO: renamed from: toSp-kPz2Gy4, reason: not valid java name */
        public static long m6845toSpkPz2Gy4(DrawScope drawScope, int i) {
            return DrawScope.super.mo1438toSpkPz2Gy4(i);
        }
    }
}
