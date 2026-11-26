package androidx.compose.ui.graphics.drawscope;

import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.graphics.ClipOp;
import androidx.compose.ui.graphics.Path;
import androidx.media3.muxer.MuxerUtil;
import defpackage.n1;

/* JADX INFO: loaded from: classes2.dex */
@DrawScopeMarker
public interface DrawTransform {

    public static final class DefaultImpls {
        @Deprecated
        /* JADX INFO: renamed from: getCenter-F1C5BW0, reason: not valid java name */
        public static long m6868getCenterF1C5BW0(DrawTransform drawTransform) {
            return DrawTransform.super.mo6731getCenterF1C5BW0();
        }
    }

    /* JADX INFO: renamed from: clipPath-mtrdD-E$default, reason: not valid java name */
    static /* synthetic */ void m6862clipPathmtrdDE$default(DrawTransform drawTransform, Path path, int i, int i2, Object obj) {
        if (obj != null) {
            n1.e("Super calls with default arguments not supported in this target, function: clipPath-mtrdD-E");
            return;
        }
        if ((i2 & 2) != 0) {
            i = ClipOp.Companion.m6221getIntersectrtfAjoo();
        }
        drawTransform.mo6729clipPathmtrdDE(path, i);
    }

    /* JADX INFO: renamed from: clipRect-N_I0leg$default, reason: not valid java name */
    static /* synthetic */ void m6863clipRectN_I0leg$default(DrawTransform drawTransform, float f, float f2, float f3, float f4, int i, int i2, Object obj) {
        if (obj != null) {
            n1.e("Super calls with default arguments not supported in this target, function: clipRect-N_I0leg");
            return;
        }
        if ((i2 & 1) != 0) {
            f = 0.0f;
        }
        if ((i2 & 2) != 0) {
            f2 = 0.0f;
        }
        if ((i2 & 4) != 0) {
            f3 = Float.intBitsToFloat((int) (drawTransform.mo6732getSizeNHjbRc() >> 32));
        }
        if ((i2 & 8) != 0) {
            f4 = Float.intBitsToFloat((int) (drawTransform.mo6732getSizeNHjbRc() & MuxerUtil.UNSIGNED_INT_MAX_VALUE));
        }
        if ((i2 & 16) != 0) {
            i = ClipOp.Companion.m6221getIntersectrtfAjoo();
        }
        drawTransform.mo6730clipRectN_I0leg(f, f2, f3, f4, i);
    }

    /* JADX INFO: renamed from: rotate-Uv8p0NA$default, reason: not valid java name */
    static /* synthetic */ void m6864rotateUv8p0NA$default(DrawTransform drawTransform, float f, long j, int i, Object obj) {
        if (obj != null) {
            n1.e("Super calls with default arguments not supported in this target, function: rotate-Uv8p0NA");
            return;
        }
        if ((i & 2) != 0) {
            j = drawTransform.mo6731getCenterF1C5BW0();
        }
        drawTransform.mo6733rotateUv8p0NA(f, j);
    }

    /* JADX INFO: renamed from: scale-0AR0LA0$default, reason: not valid java name */
    static /* synthetic */ void m6865scale0AR0LA0$default(DrawTransform drawTransform, float f, float f2, long j, int i, Object obj) {
        if (obj != null) {
            n1.e("Super calls with default arguments not supported in this target, function: scale-0AR0LA0");
            return;
        }
        if ((i & 4) != 0) {
            j = drawTransform.mo6731getCenterF1C5BW0();
        }
        drawTransform.mo6734scale0AR0LA0(f, f2, j);
    }

    static /* synthetic */ void translate$default(DrawTransform drawTransform, float f, float f2, int i, Object obj) {
        if (obj != null) {
            n1.e("Super calls with default arguments not supported in this target, function: translate");
            return;
        }
        if ((i & 1) != 0) {
            f = 0.0f;
        }
        if ((i & 2) != 0) {
            f2 = 0.0f;
        }
        drawTransform.translate(f, f2);
    }

    /* JADX INFO: renamed from: clipPath-mtrdD-E */
    void mo6729clipPathmtrdDE(Path path, int i);

    /* JADX INFO: renamed from: clipRect-N_I0leg */
    void mo6730clipRectN_I0leg(float f, float f2, float f3, float f4, int i);

    /* JADX INFO: renamed from: getCenter-F1C5BW0 */
    default long mo6731getCenterF1C5BW0() {
        float fIntBitsToFloat = Float.intBitsToFloat((int) (mo6732getSizeNHjbRc() >> 32)) / 2.0f;
        float fIntBitsToFloat2 = Float.intBitsToFloat((int) (mo6732getSizeNHjbRc() & MuxerUtil.UNSIGNED_INT_MAX_VALUE)) / 2.0f;
        return Offset.m5979constructorimpl((((long) Float.floatToRawIntBits(fIntBitsToFloat)) << 32) | (((long) Float.floatToRawIntBits(fIntBitsToFloat2)) & MuxerUtil.UNSIGNED_INT_MAX_VALUE));
    }

    /* JADX INFO: renamed from: getSize-NH-jbRc */
    long mo6732getSizeNHjbRc();

    void inset(float f, float f2, float f3, float f4);

    /* JADX INFO: renamed from: rotate-Uv8p0NA */
    void mo6733rotateUv8p0NA(float f, long j);

    /* JADX INFO: renamed from: scale-0AR0LA0 */
    void mo6734scale0AR0LA0(float f, float f2, long j);

    /* JADX INFO: renamed from: transform-58bKbWc */
    void mo6735transform58bKbWc(float[] fArr);

    void translate(float f, float f2);
}
