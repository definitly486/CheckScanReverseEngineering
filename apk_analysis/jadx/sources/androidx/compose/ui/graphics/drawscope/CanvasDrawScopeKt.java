package androidx.compose.ui.graphics.drawscope;

import androidx.compose.ui.geometry.Size;
import androidx.compose.ui.geometry.SizeKt;
import androidx.compose.ui.graphics.Canvas;
import androidx.compose.ui.graphics.InlineClassHelperKt;
import androidx.compose.ui.graphics.Path;
import androidx.media3.muxer.MuxerUtil;

/* JADX INFO: loaded from: classes2.dex */
public final class CanvasDrawScopeKt {
    /* JADX INFO: Access modifiers changed from: private */
    public static final DrawTransform asDrawTransform(final DrawContext drawContext) {
        return new DrawTransform() { // from class: androidx.compose.ui.graphics.drawscope.CanvasDrawScopeKt.asDrawTransform.1
            @Override // androidx.compose.ui.graphics.drawscope.DrawTransform
            /* JADX INFO: renamed from: clipPath-mtrdD-E, reason: not valid java name */
            public void mo6729clipPathmtrdDE(Path path, int i) {
                drawContext.getCanvas().mo6081clipPathmtrdDE(path, i);
            }

            @Override // androidx.compose.ui.graphics.drawscope.DrawTransform
            /* JADX INFO: renamed from: clipRect-N_I0leg, reason: not valid java name */
            public void mo6730clipRectN_I0leg(float f, float f2, float f3, float f4, int i) {
                drawContext.getCanvas().mo6082clipRectN_I0leg(f, f2, f3, f4, i);
            }

            @Override // androidx.compose.ui.graphics.drawscope.DrawTransform
            /* JADX INFO: renamed from: getCenter-F1C5BW0, reason: not valid java name */
            public long mo6731getCenterF1C5BW0() {
                return SizeKt.m6066getCenteruvyYCjk(mo6732getSizeNHjbRc());
            }

            @Override // androidx.compose.ui.graphics.drawscope.DrawTransform
            /* JADX INFO: renamed from: getSize-NH-jbRc, reason: not valid java name */
            public long mo6732getSizeNHjbRc() {
                return drawContext.mo6727getSizeNHjbRc();
            }

            @Override // androidx.compose.ui.graphics.drawscope.DrawTransform
            public void inset(float f, float f2, float f3, float f4) {
                Canvas canvas = drawContext.getCanvas();
                DrawContext drawContext2 = drawContext;
                long jM6047constructorimpl = Size.m6047constructorimpl((((long) Float.floatToRawIntBits(Float.intBitsToFloat((int) (mo6732getSizeNHjbRc() >> 32)) - (f3 + f))) << 32) | (((long) Float.floatToRawIntBits(Float.intBitsToFloat((int) (mo6732getSizeNHjbRc() & MuxerUtil.UNSIGNED_INT_MAX_VALUE)) - (f4 + f2))) & MuxerUtil.UNSIGNED_INT_MAX_VALUE));
                if (!(Float.intBitsToFloat((int) (jM6047constructorimpl >> 32)) >= 0.0f && Float.intBitsToFloat((int) (jM6047constructorimpl & MuxerUtil.UNSIGNED_INT_MAX_VALUE)) >= 0.0f)) {
                    InlineClassHelperKt.throwIllegalArgumentException("Width and height must be greater than or equal to zero");
                }
                drawContext2.mo6728setSizeuvyYCjk(jM6047constructorimpl);
                canvas.translate(f, f2);
            }

            @Override // androidx.compose.ui.graphics.drawscope.DrawTransform
            /* JADX INFO: renamed from: rotate-Uv8p0NA, reason: not valid java name */
            public void mo6733rotateUv8p0NA(float f, long j) {
                Canvas canvas = drawContext.getCanvas();
                int i = (int) (j >> 32);
                float fIntBitsToFloat = Float.intBitsToFloat(i);
                int i2 = (int) (j & MuxerUtil.UNSIGNED_INT_MAX_VALUE);
                canvas.translate(fIntBitsToFloat, Float.intBitsToFloat(i2));
                canvas.rotate(f);
                canvas.translate(-Float.intBitsToFloat(i), -Float.intBitsToFloat(i2));
            }

            @Override // androidx.compose.ui.graphics.drawscope.DrawTransform
            /* JADX INFO: renamed from: scale-0AR0LA0, reason: not valid java name */
            public void mo6734scale0AR0LA0(float f, float f2, long j) {
                Canvas canvas = drawContext.getCanvas();
                int i = (int) (j >> 32);
                float fIntBitsToFloat = Float.intBitsToFloat(i);
                int i2 = (int) (j & MuxerUtil.UNSIGNED_INT_MAX_VALUE);
                canvas.translate(fIntBitsToFloat, Float.intBitsToFloat(i2));
                canvas.scale(f, f2);
                canvas.translate(-Float.intBitsToFloat(i), -Float.intBitsToFloat(i2));
            }

            @Override // androidx.compose.ui.graphics.drawscope.DrawTransform
            /* JADX INFO: renamed from: transform-58bKbWc, reason: not valid java name */
            public void mo6735transform58bKbWc(float[] fArr) {
                drawContext.getCanvas().mo6083concat58bKbWc(fArr);
            }

            @Override // androidx.compose.ui.graphics.drawscope.DrawTransform
            public void translate(float f, float f2) {
                drawContext.getCanvas().translate(f, f2);
            }
        };
    }
}
