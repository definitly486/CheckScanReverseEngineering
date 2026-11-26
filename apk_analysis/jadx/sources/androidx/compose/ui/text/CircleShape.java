package androidx.compose.ui.text;

import androidx.compose.ui.geometry.CornerRadius;
import androidx.compose.ui.geometry.RoundRectKt;
import androidx.compose.ui.geometry.Size;
import androidx.compose.ui.geometry.SizeKt;
import androidx.compose.ui.graphics.Outline;
import androidx.compose.ui.graphics.Shape;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.LayoutDirection;
import androidx.media3.muxer.MuxerUtil;

/* JADX INFO: loaded from: classes2.dex */
final class CircleShape implements Shape {
    public static final CircleShape INSTANCE = new CircleShape();

    private CircleShape() {
    }

    @Override // androidx.compose.ui.graphics.Shape
    /* JADX INFO: renamed from: createOutline-Pq9zytI */
    public Outline mo1345createOutlinePq9zytI(long j, LayoutDirection layoutDirection, Density density) {
        float fM6055getMinDimensionimpl = Size.m6055getMinDimensionimpl(j) / 2.0f;
        long jM5941constructorimpl = CornerRadius.m5941constructorimpl((((long) Float.floatToRawIntBits(fM6055getMinDimensionimpl)) << 32) | (((long) Float.floatToRawIntBits(fM6055getMinDimensionimpl)) & MuxerUtil.UNSIGNED_INT_MAX_VALUE));
        return new Outline.Rounded(RoundRectKt.m6039RoundRectZAM2FJo(SizeKt.m6077toRectuvyYCjk(j), jM5941constructorimpl, jM5941constructorimpl, jM5941constructorimpl, jM5941constructorimpl));
    }
}
