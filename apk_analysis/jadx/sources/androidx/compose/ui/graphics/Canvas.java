package androidx.compose.ui.graphics;

import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.geometry.Rect;
import androidx.compose.ui.unit.IntOffset;
import androidx.compose.ui.unit.IntSize;
import androidx.media3.muxer.MuxerUtil;
import defpackage.n1;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public interface Canvas {

    public static final class DefaultImpls {
        @Deprecated
        /* JADX INFO: renamed from: clipRect-mtrdD-E, reason: not valid java name */
        public static void m6210clipRectmtrdDE(Canvas canvas, Rect rect, int i) {
            Canvas.super.m6207clipRectmtrdDE(rect, i);
        }

        @Deprecated
        public static void drawArc(Canvas canvas, Rect rect, float f, float f2, boolean z, Paint paint) {
            Canvas.super.drawArc(rect, f, f2, z, paint);
        }

        @Deprecated
        public static void drawArcRad(Canvas canvas, Rect rect, float f, float f2, boolean z, Paint paint) {
            Canvas.super.drawArcRad(rect, f, f2, z, paint);
        }

        @Deprecated
        public static void drawOval(Canvas canvas, Rect rect, Paint paint) {
            Canvas.super.drawOval(rect, paint);
        }

        @Deprecated
        public static void drawRect(Canvas canvas, Rect rect, Paint paint) {
            Canvas.super.drawRect(rect, paint);
        }

        @Deprecated
        public static void skewRad(Canvas canvas, float f, float f2) {
            Canvas.super.skewRad(f, f2);
        }
    }

    /* JADX INFO: renamed from: clipPath-mtrdD-E$default, reason: not valid java name */
    static /* synthetic */ void m6203clipPathmtrdDE$default(Canvas canvas, Path path, int i, int i2, Object obj) {
        if (obj != null) {
            n1.e("Super calls with default arguments not supported in this target, function: clipPath-mtrdD-E");
            return;
        }
        if ((i2 & 2) != 0) {
            i = ClipOp.Companion.m6221getIntersectrtfAjoo();
        }
        canvas.mo6081clipPathmtrdDE(path, i);
    }

    /* JADX INFO: renamed from: clipRect-N_I0leg$default, reason: not valid java name */
    static /* synthetic */ void m6204clipRectN_I0leg$default(Canvas canvas, float f, float f2, float f3, float f4, int i, int i2, Object obj) {
        if (obj != null) {
            n1.e("Super calls with default arguments not supported in this target, function: clipRect-N_I0leg");
            return;
        }
        if ((i2 & 16) != 0) {
            i = ClipOp.Companion.m6221getIntersectrtfAjoo();
        }
        canvas.mo6082clipRectN_I0leg(f, f2, f3, f4, i);
    }

    /* JADX INFO: renamed from: clipRect-mtrdD-E$default, reason: not valid java name */
    static /* synthetic */ void m6205clipRectmtrdDE$default(Canvas canvas, Rect rect, int i, int i2, Object obj) {
        if (obj != null) {
            n1.e("Super calls with default arguments not supported in this target, function: clipRect-mtrdD-E");
            return;
        }
        if ((i2 & 2) != 0) {
            i = ClipOp.Companion.m6221getIntersectrtfAjoo();
        }
        canvas.m6207clipRectmtrdDE(rect, i);
    }

    /* JADX INFO: renamed from: drawImageRect-HPBpro0$default, reason: not valid java name */
    static /* synthetic */ void m6206drawImageRectHPBpro0$default(Canvas canvas, ImageBitmap imageBitmap, long j, long j2, long j3, long j4, Paint paint, int i, Object obj) {
        long jM9208constructorimpl;
        if (obj != null) {
            n1.e("Super calls with default arguments not supported in this target, function: drawImageRect-HPBpro0");
            return;
        }
        long jM9181getZeronOccac = (i & 2) != 0 ? IntOffset.Companion.m9181getZeronOccac() : j;
        if ((i & 4) != 0) {
            jM9208constructorimpl = IntSize.m9208constructorimpl((((long) imageBitmap.getHeight()) & MuxerUtil.UNSIGNED_INT_MAX_VALUE) | (((long) imageBitmap.getWidth()) << 32));
        } else {
            jM9208constructorimpl = j2;
        }
        canvas.mo6086drawImageRectHPBpro0(imageBitmap, jM9181getZeronOccac, jM9208constructorimpl, (i & 8) != 0 ? IntOffset.Companion.m9181getZeronOccac() : j3, (i & 16) != 0 ? jM9208constructorimpl : j4, paint);
    }

    static /* synthetic */ void scale$default(Canvas canvas, float f, float f2, int i, Object obj) {
        if (obj != null) {
            n1.e("Super calls with default arguments not supported in this target, function: scale");
            return;
        }
        if ((i & 2) != 0) {
            f2 = f;
        }
        canvas.scale(f, f2);
    }

    /* JADX INFO: renamed from: clipPath-mtrdD-E */
    void mo6081clipPathmtrdDE(Path path, int i);

    /* JADX INFO: renamed from: clipRect-N_I0leg */
    void mo6082clipRectN_I0leg(float f, float f2, float f3, float f4, int i);

    /* JADX INFO: renamed from: clipRect-mtrdD-E, reason: not valid java name */
    default void m6207clipRectmtrdDE(Rect rect, int i) {
        mo6082clipRectN_I0leg(rect.getLeft(), rect.getTop(), rect.getRight(), rect.getBottom(), i);
    }

    /* JADX INFO: renamed from: concat-58bKbWc */
    void mo6083concat58bKbWc(float[] fArr);

    void disableZ();

    void drawArc(float f, float f2, float f3, float f4, float f5, float f6, boolean z, Paint paint);

    default void drawArc(Rect rect, float f, float f2, boolean z, Paint paint) {
        drawArc(rect.getLeft(), rect.getTop(), rect.getRight(), rect.getBottom(), f, f2, z, paint);
    }

    default void drawArcRad(Rect rect, float f, float f2, boolean z, Paint paint) {
        drawArc(rect, DegreesKt.degrees(f), DegreesKt.degrees(f2), z, paint);
    }

    /* JADX INFO: renamed from: drawCircle-9KIMszo */
    void mo6084drawCircle9KIMszo(long j, float f, Paint paint);

    /* JADX INFO: renamed from: drawImage-d-4ec7I */
    void mo6085drawImaged4ec7I(ImageBitmap imageBitmap, long j, Paint paint);

    /* JADX INFO: renamed from: drawImageRect-HPBpro0 */
    void mo6086drawImageRectHPBpro0(ImageBitmap imageBitmap, long j, long j2, long j3, long j4, Paint paint);

    /* JADX INFO: renamed from: drawLine-Wko1d7g */
    void mo6087drawLineWko1d7g(long j, long j2, Paint paint);

    void drawOval(float f, float f2, float f3, float f4, Paint paint);

    default void drawOval(Rect rect, Paint paint) {
        drawOval(rect.getLeft(), rect.getTop(), rect.getRight(), rect.getBottom(), paint);
    }

    void drawPath(Path path, Paint paint);

    /* JADX INFO: renamed from: drawPoints-O7TthRY */
    void mo6088drawPointsO7TthRY(int i, List<Offset> list, Paint paint);

    /* JADX INFO: renamed from: drawRawPoints-O7TthRY */
    void mo6089drawRawPointsO7TthRY(int i, float[] fArr, Paint paint);

    void drawRect(float f, float f2, float f3, float f4, Paint paint);

    default void drawRect(Rect rect, Paint paint) {
        drawRect(rect.getLeft(), rect.getTop(), rect.getRight(), rect.getBottom(), paint);
    }

    void drawRoundRect(float f, float f2, float f3, float f4, float f5, float f6, Paint paint);

    /* JADX INFO: renamed from: drawVertices-TPEHhCM */
    void mo6090drawVerticesTPEHhCM(Vertices vertices, int i, Paint paint);

    void enableZ();

    void restore();

    void rotate(float f);

    void save();

    void saveLayer(Rect rect, Paint paint);

    void scale(float f, float f2);

    void skew(float f, float f2);

    default void skewRad(float f, float f2) {
        skew(DegreesKt.degrees(f), DegreesKt.degrees(f2));
    }

    void translate(float f, float f2);
}
