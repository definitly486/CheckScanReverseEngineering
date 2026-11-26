package androidx.compose.ui.graphics;

import android.graphics.Bitmap;
import android.graphics.Rect;
import android.graphics.Region;
import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.unit.IntOffset;
import androidx.media3.muxer.MuxerUtil;
import defpackage.fg;
import defpackage.j59;
import defpackage.n1;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public final class AndroidCanvas implements Canvas {
    public static final int $stable = 8;
    private Rect dstRect;
    private android.graphics.Canvas internalCanvas = AndroidCanvas_androidKt.EmptyCanvas;
    private Rect srcRect;

    private final void drawLines(List<Offset> list, Paint paint, int i) {
        if (list.size() >= 2) {
            android.graphics.Paint nativePaint = AndroidPaint_androidKt.getNativePaint(paint);
            int i2 = 0;
            while (i2 < list.size() - 1) {
                long jM5997unboximpl = list.get(i2).m5997unboximpl();
                long jM5997unboximpl2 = list.get(i2 + 1).m5997unboximpl();
                this.internalCanvas.drawLine(Float.intBitsToFloat((int) (jM5997unboximpl >> 32)), Float.intBitsToFloat((int) (jM5997unboximpl & MuxerUtil.UNSIGNED_INT_MAX_VALUE)), Float.intBitsToFloat((int) (jM5997unboximpl2 >> 32)), Float.intBitsToFloat((int) (jM5997unboximpl2 & MuxerUtil.UNSIGNED_INT_MAX_VALUE)), nativePaint);
                i2 += i;
            }
        }
    }

    private final void drawPoints(List<Offset> list, Paint paint) {
        int size = list.size();
        for (int i = 0; i < size; i++) {
            long jM5997unboximpl = list.get(i).m5997unboximpl();
            this.internalCanvas.drawPoint(Float.intBitsToFloat((int) (jM5997unboximpl >> 32)), Float.intBitsToFloat((int) (jM5997unboximpl & MuxerUtil.UNSIGNED_INT_MAX_VALUE)), AndroidPaint_androidKt.getNativePaint(paint));
        }
    }

    private final void drawRawLines(float[] fArr, Paint paint, int i) {
        if (fArr.length < 4 || fArr.length % 2 != 0) {
            return;
        }
        android.graphics.Paint nativePaint = AndroidPaint_androidKt.getNativePaint(paint);
        int i2 = 0;
        while (i2 < fArr.length - 3) {
            this.internalCanvas.drawLine(fArr[i2], fArr[i2 + 1], fArr[i2 + 2], fArr[i2 + 3], nativePaint);
            i2 += i * 2;
        }
    }

    private final void drawRawPoints(float[] fArr, Paint paint, int i) {
        if (fArr.length % 2 == 0) {
            android.graphics.Paint nativePaint = AndroidPaint_androidKt.getNativePaint(paint);
            int i2 = 0;
            while (i2 < fArr.length - 1) {
                this.internalCanvas.drawPoint(fArr[i2], fArr[i2 + 1], nativePaint);
                i2 += i;
            }
        }
    }

    public static /* synthetic */ void getInternalCanvas$annotations() {
    }

    @Override // androidx.compose.ui.graphics.Canvas
    /* JADX INFO: renamed from: clipPath-mtrdD-E, reason: not valid java name */
    public void mo6081clipPathmtrdDE(Path path, int i) {
        android.graphics.Canvas canvas = this.internalCanvas;
        if (path instanceof AndroidPath) {
            canvas.clipPath(((AndroidPath) path).getInternalPath(), m6091toRegionOp7u2Bmg(i));
        } else {
            n1.e("Unable to obtain android.graphics.Path");
        }
    }

    @Override // androidx.compose.ui.graphics.Canvas
    /* JADX INFO: renamed from: clipRect-N_I0leg, reason: not valid java name */
    public void mo6082clipRectN_I0leg(float f, float f2, float f3, float f4, int i) {
        this.internalCanvas.clipRect(f, f2, f3, f4, m6091toRegionOp7u2Bmg(i));
    }

    @Override // androidx.compose.ui.graphics.Canvas
    /* JADX INFO: renamed from: concat-58bKbWc, reason: not valid java name */
    public void mo6083concat58bKbWc(float[] fArr) {
        if (MatrixKt.m6501isIdentity58bKbWc(fArr)) {
            return;
        }
        android.graphics.Matrix matrix = new android.graphics.Matrix();
        AndroidMatrixConversions_androidKt.m6099setFromEL8BTi8(matrix, fArr);
        this.internalCanvas.concat(matrix);
    }

    @Override // androidx.compose.ui.graphics.Canvas
    public void disableZ() {
        CanvasUtils.INSTANCE.enableZ(this.internalCanvas, false);
    }

    @Override // androidx.compose.ui.graphics.Canvas
    public void drawArc(float f, float f2, float f3, float f4, float f5, float f6, boolean z, Paint paint) {
        this.internalCanvas.drawArc(f, f2, f3, f4, f5, f6, z, AndroidPaint_androidKt.getNativePaint(paint));
    }

    @Override // androidx.compose.ui.graphics.Canvas
    /* JADX INFO: renamed from: drawCircle-9KIMszo, reason: not valid java name */
    public void mo6084drawCircle9KIMszo(long j, float f, Paint paint) {
        this.internalCanvas.drawCircle(Float.intBitsToFloat((int) (j >> 32)), Float.intBitsToFloat((int) (j & MuxerUtil.UNSIGNED_INT_MAX_VALUE)), f, AndroidPaint_androidKt.getNativePaint(paint));
    }

    @Override // androidx.compose.ui.graphics.Canvas
    /* JADX INFO: renamed from: drawImage-d-4ec7I, reason: not valid java name */
    public void mo6085drawImaged4ec7I(ImageBitmap imageBitmap, long j, Paint paint) {
        this.internalCanvas.drawBitmap(AndroidImageBitmap_androidKt.asAndroidBitmap(imageBitmap), Float.intBitsToFloat((int) (j >> 32)), Float.intBitsToFloat((int) (j & MuxerUtil.UNSIGNED_INT_MAX_VALUE)), AndroidPaint_androidKt.getNativePaint(paint));
    }

    @Override // androidx.compose.ui.graphics.Canvas
    /* JADX INFO: renamed from: drawImageRect-HPBpro0, reason: not valid java name */
    public void mo6086drawImageRectHPBpro0(ImageBitmap imageBitmap, long j, long j2, long j3, long j4, Paint paint) {
        if (this.srcRect == null) {
            this.srcRect = new Rect();
            this.dstRect = new Rect();
        }
        android.graphics.Canvas canvas = this.internalCanvas;
        Bitmap bitmapAsAndroidBitmap = AndroidImageBitmap_androidKt.asAndroidBitmap(imageBitmap);
        Rect rect = this.srcRect;
        rect.getClass();
        rect.left = IntOffset.m9170getXimpl(j);
        rect.top = IntOffset.m9171getYimpl(j);
        rect.right = IntOffset.m9170getXimpl(j) + ((int) (j2 >> 32));
        rect.bottom = IntOffset.m9171getYimpl(j) + ((int) (j2 & MuxerUtil.UNSIGNED_INT_MAX_VALUE));
        j59 j59Var = j59.a;
        Rect rect2 = this.dstRect;
        rect2.getClass();
        rect2.left = IntOffset.m9170getXimpl(j3);
        rect2.top = IntOffset.m9171getYimpl(j3);
        rect2.right = IntOffset.m9170getXimpl(j3) + ((int) (j4 >> 32));
        rect2.bottom = IntOffset.m9171getYimpl(j3) + ((int) (j4 & MuxerUtil.UNSIGNED_INT_MAX_VALUE));
        canvas.drawBitmap(bitmapAsAndroidBitmap, rect, rect2, AndroidPaint_androidKt.getNativePaint(paint));
    }

    @Override // androidx.compose.ui.graphics.Canvas
    /* JADX INFO: renamed from: drawLine-Wko1d7g, reason: not valid java name */
    public void mo6087drawLineWko1d7g(long j, long j2, Paint paint) {
        this.internalCanvas.drawLine(Float.intBitsToFloat((int) (j >> 32)), Float.intBitsToFloat((int) (j & MuxerUtil.UNSIGNED_INT_MAX_VALUE)), Float.intBitsToFloat((int) (j2 >> 32)), Float.intBitsToFloat((int) (j2 & MuxerUtil.UNSIGNED_INT_MAX_VALUE)), AndroidPaint_androidKt.getNativePaint(paint));
    }

    @Override // androidx.compose.ui.graphics.Canvas
    public void drawOval(float f, float f2, float f3, float f4, Paint paint) {
        this.internalCanvas.drawOval(f, f2, f3, f4, AndroidPaint_androidKt.getNativePaint(paint));
    }

    @Override // androidx.compose.ui.graphics.Canvas
    public void drawPath(Path path, Paint paint) {
        android.graphics.Canvas canvas = this.internalCanvas;
        if (path instanceof AndroidPath) {
            canvas.drawPath(((AndroidPath) path).getInternalPath(), AndroidPaint_androidKt.getNativePaint(paint));
        } else {
            n1.e("Unable to obtain android.graphics.Path");
        }
    }

    @Override // androidx.compose.ui.graphics.Canvas
    /* JADX INFO: renamed from: drawPoints-O7TthRY, reason: not valid java name */
    public void mo6088drawPointsO7TthRY(int i, List<Offset> list, Paint paint) {
        PointMode.Companion companion = PointMode.Companion;
        if (PointMode.m6547equalsimpl0(i, companion.m6551getLinesr_lszbg())) {
            drawLines(list, paint, 2);
        } else if (PointMode.m6547equalsimpl0(i, companion.m6553getPolygonr_lszbg())) {
            drawLines(list, paint, 1);
        } else if (PointMode.m6547equalsimpl0(i, companion.m6552getPointsr_lszbg())) {
            drawPoints(list, paint);
        }
    }

    @Override // androidx.compose.ui.graphics.Canvas
    /* JADX INFO: renamed from: drawRawPoints-O7TthRY, reason: not valid java name */
    public void mo6089drawRawPointsO7TthRY(int i, float[] fArr, Paint paint) {
        if (fArr.length % 2 != 0) {
            fg.c("points must have an even number of values");
            return;
        }
        PointMode.Companion companion = PointMode.Companion;
        if (PointMode.m6547equalsimpl0(i, companion.m6551getLinesr_lszbg())) {
            drawRawLines(fArr, paint, 2);
        } else if (PointMode.m6547equalsimpl0(i, companion.m6553getPolygonr_lszbg())) {
            drawRawLines(fArr, paint, 1);
        } else if (PointMode.m6547equalsimpl0(i, companion.m6552getPointsr_lszbg())) {
            drawRawPoints(fArr, paint, 2);
        }
    }

    @Override // androidx.compose.ui.graphics.Canvas
    public void drawRect(float f, float f2, float f3, float f4, Paint paint) {
        this.internalCanvas.drawRect(f, f2, f3, f4, AndroidPaint_androidKt.getNativePaint(paint));
    }

    @Override // androidx.compose.ui.graphics.Canvas
    public void drawRoundRect(float f, float f2, float f3, float f4, float f5, float f6, Paint paint) {
        this.internalCanvas.drawRoundRect(f, f2, f3, f4, f5, f6, AndroidPaint_androidKt.getNativePaint(paint));
    }

    @Override // androidx.compose.ui.graphics.Canvas
    /* JADX INFO: renamed from: drawVertices-TPEHhCM, reason: not valid java name */
    public void mo6090drawVerticesTPEHhCM(Vertices vertices, int i, Paint paint) {
        this.internalCanvas.drawVertices(AndroidVertexMode_androidKt.m6136toAndroidVertexModeJOOmi9M(vertices.m6657getVertexModec2xauaI()), vertices.getPositions().length, vertices.getPositions(), 0, vertices.getTextureCoordinates(), 0, vertices.getColors(), 0, vertices.getIndices(), 0, vertices.getIndices().length, AndroidPaint_androidKt.getNativePaint(paint));
    }

    @Override // androidx.compose.ui.graphics.Canvas
    public void enableZ() {
        CanvasUtils.INSTANCE.enableZ(this.internalCanvas, true);
    }

    public final android.graphics.Canvas getInternalCanvas() {
        return this.internalCanvas;
    }

    @Override // androidx.compose.ui.graphics.Canvas
    public void restore() {
        this.internalCanvas.restore();
    }

    @Override // androidx.compose.ui.graphics.Canvas
    public void rotate(float f) {
        this.internalCanvas.rotate(f);
    }

    @Override // androidx.compose.ui.graphics.Canvas
    public void save() {
        this.internalCanvas.save();
    }

    @Override // androidx.compose.ui.graphics.Canvas
    public void saveLayer(androidx.compose.ui.geometry.Rect rect, Paint paint) {
        this.internalCanvas.saveLayer(rect.getLeft(), rect.getTop(), rect.getRight(), rect.getBottom(), AndroidPaint_androidKt.getNativePaint(paint), 31);
    }

    @Override // androidx.compose.ui.graphics.Canvas
    public void scale(float f, float f2) {
        this.internalCanvas.scale(f, f2);
    }

    public final void setInternalCanvas(android.graphics.Canvas canvas) {
        this.internalCanvas = canvas;
    }

    @Override // androidx.compose.ui.graphics.Canvas
    public void skew(float f, float f2) {
        this.internalCanvas.skew(f, f2);
    }

    /* JADX INFO: renamed from: toRegionOp--7u2Bmg, reason: not valid java name */
    public final Region.Op m6091toRegionOp7u2Bmg(int i) {
        return ClipOp.m6216equalsimpl0(i, ClipOp.Companion.m6220getDifferencertfAjoo()) ? Region.Op.DIFFERENCE : Region.Op.INTERSECT;
    }

    @Override // androidx.compose.ui.graphics.Canvas
    public void translate(float f, float f2) {
        this.internalCanvas.translate(f, f2);
    }
}
