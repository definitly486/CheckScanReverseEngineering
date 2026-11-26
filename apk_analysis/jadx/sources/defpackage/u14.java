package defpackage;

import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.geometry.Size;
import androidx.compose.ui.graphics.AndroidCanvas_androidKt;
import androidx.compose.ui.graphics.drawscope.DrawContext;
import androidx.compose.ui.graphics.drawscope.DrawScope;
import androidx.compose.ui.graphics.painter.Painter;
import androidx.media3.muxer.MuxerUtil;

/* JADX INFO: loaded from: classes2.dex */
public final class u14 extends Painter {
    public final x04 b;

    public u14(x04 x04Var) {
        this.b = x04Var;
    }

    @Override // androidx.compose.ui.graphics.painter.Painter
    /* JADX INFO: renamed from: getIntrinsicSize-NH-jbRc */
    public final long mo6926getIntrinsicSizeNHjbRc() {
        x04 x04Var = this.b;
        int width = x04Var.getWidth();
        float f = width > 0 ? width : Float.NaN;
        int height = x04Var.getHeight();
        return Size.m6047constructorimpl((((long) Float.floatToRawIntBits(height > 0 ? height : Float.NaN)) & MuxerUtil.UNSIGNED_INT_MAX_VALUE) | (((long) Float.floatToRawIntBits(f)) << 32));
    }

    @Override // androidx.compose.ui.graphics.painter.Painter
    public final void onDraw(DrawScope drawScope) {
        x04 x04Var = this.b;
        int width = x04Var.getWidth();
        float fIntBitsToFloat = width > 0 ? Float.intBitsToFloat((int) (drawScope.mo6806getSizeNHjbRc() >> 32)) / width : 1.0f;
        int height = x04Var.getHeight();
        float fIntBitsToFloat2 = height > 0 ? Float.intBitsToFloat((int) (drawScope.mo6806getSizeNHjbRc() & MuxerUtil.UNSIGNED_INT_MAX_VALUE)) / height : 1.0f;
        long jM6003getZeroF1C5BW0 = Offset.Companion.m6003getZeroF1C5BW0();
        DrawContext drawContext = drawScope.getDrawContext();
        long jMo6727getSizeNHjbRc = drawContext.mo6727getSizeNHjbRc();
        drawContext.getCanvas().save();
        try {
            drawContext.getTransform().mo6734scale0AR0LA0(fIntBitsToFloat, fIntBitsToFloat2, jM6003getZeroF1C5BW0);
            x04Var.draw(AndroidCanvas_androidKt.getNativeCanvas(drawScope.getDrawContext().getCanvas()));
        } finally {
            n1.a(drawContext, jMo6727getSizeNHjbRc);
        }
    }
}
