package androidx.compose.ui.draw;

import androidx.compose.ui.Modifier;
import androidx.compose.ui.graphics.GraphicsLayerModifierKt;
import androidx.compose.ui.graphics.Shape;
import androidx.compose.ui.graphics.TileMode;
import androidx.compose.ui.unit.Dp;

/* JADX INFO: loaded from: classes2.dex */
public final class BlurKt {
    /* JADX INFO: renamed from: blur-1fqS-gw, reason: not valid java name */
    public static final Modifier m5752blur1fqSgw(Modifier modifier, float f, float f2, Shape shape) {
        int iM6628getDecal3opZhB0;
        boolean z;
        if (shape != null) {
            iM6628getDecal3opZhB0 = TileMode.Companion.m6627getClamp3opZhB0();
            z = true;
        } else {
            iM6628getDecal3opZhB0 = TileMode.Companion.m6628getDecal3opZhB0();
            z = false;
        }
        boolean z2 = z;
        return ((Dp.m9041compareTo0680j_4(f, Dp.m9042constructorimpl(0.0f)) <= 0 || Dp.m9041compareTo0680j_4(f2, Dp.m9042constructorimpl(0.0f)) <= 0) && !z2) ? modifier : GraphicsLayerModifierKt.graphicsLayer(modifier, new BlurKt$blur$1(f, f2, iM6628getDecal3opZhB0, shape, z2));
    }

    /* JADX INFO: renamed from: blur-1fqS-gw$default, reason: not valid java name */
    public static /* synthetic */ Modifier m5753blur1fqSgw$default(Modifier modifier, float f, float f2, BlurredEdgeTreatment blurredEdgeTreatment, int i, Object obj) {
        if ((i & 4) != 0) {
            blurredEdgeTreatment = BlurredEdgeTreatment.m5756boximpl(BlurredEdgeTreatment.Companion.m5763getRectangleGoahg());
        }
        return m5752blur1fqSgw(modifier, f, f2, blurredEdgeTreatment.m5762unboximpl());
    }

    /* JADX INFO: renamed from: blur-F8QBwvs, reason: not valid java name */
    public static final Modifier m5754blurF8QBwvs(Modifier modifier, float f, Shape shape) {
        return m5752blur1fqSgw(modifier, f, f, shape);
    }

    /* JADX INFO: renamed from: blur-F8QBwvs$default, reason: not valid java name */
    public static /* synthetic */ Modifier m5755blurF8QBwvs$default(Modifier modifier, float f, BlurredEdgeTreatment blurredEdgeTreatment, int i, Object obj) {
        if ((i & 2) != 0) {
            blurredEdgeTreatment = BlurredEdgeTreatment.m5756boximpl(BlurredEdgeTreatment.Companion.m5763getRectangleGoahg());
        }
        return m5754blurF8QBwvs(modifier, f, blurredEdgeTreatment.m5762unboximpl());
    }
}
